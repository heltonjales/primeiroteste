unit uDependente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Param;

type
  TfrmDependente = class(TForm)
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    Panel15: TPanel;
    btnPesquisar: TSpeedButton;
    edtPesquisar: TEdit;
    cbPesquisar: TComboBox;
    Panel16: TPanel;
    Panel17: TPanel;
    Label2: TLabel;
    Panel18: TPanel;
    Panel21: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel22: TPanel;
    edtNome: TEdit;
    edtId: TEdit;
    edtData: TMaskEdit;
    edtIdCod: TEdit;
    cbSexo: TComboBox;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure clear;
    procedure list;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDependente: TfrmDependente;

implementation

{$R *.dfm}

uses uModulo;

procedure TfrmDependente.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir o Registro?', 'Aviso', MB_YESNO+MB_DEFBUTTON1+MB_ICONEXCLAMATION) = mrYes then
  begin
    dm.qr_Dependentes.Close;
    dm.qr_Dependentes.SQL.Clear;
    dm.qr_Dependentes.SQL.Add('DELETE FROM dependentes WHERE id = :id');
    dm.qr_Dependentes.ParamByName('id').AsInteger := StrToInt(edtId.Text);
    dm.qr_Dependentes.ExecSQL;
    Application.MessageBox('Registro Deletado com Sucesso!', 'Aviso', MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);
    clear;
    list;
    edtIdCod.SetFocus;
  end;
end;

procedure TfrmDependente.btnNovoClick(Sender: TObject);
begin
  clear;
  edtIdCod.SetFocus;
end;

procedure TfrmDependente.btnPesquisarClick(Sender: TObject);
begin
  dm.qr_Dependentes.Close;
  dm.qr_Dependentes.SQL.Clear;
  case cbPesquisar.ItemIndex of
    0 : dm.qr_Dependentes.SQL.Add('SELECT * FROM dependentes WHERE UPPER(nome) LIKE ' +UpperCase(QuotedStr('%'+edtPesquisar.Text+'%')));
    1 : dm.qr_Dependentes.SQL.Add('SELECT * FROM dependentes WHERE id_socio LIKE ' +QuotedStr('%'+edtPesquisar.Text+'%'));
  end;
  dm.qr_Dependentes.Open();
end;

procedure TfrmDependente.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtIdCod.Text) = '' then
  begin
    ShowMessage('Campo código sócio obrigatório');
    edtIdCod.SetFocus;
    exit;
  end;

  if Trim(edtNome.Text) = '' then
  begin
    ShowMessage('Campo nome obrigatório');
    edtNome.SetFocus;
    exit;
  end;

  try
    StrToDate(edtData.Text);
  Except on EConvertError do
  begin
    ShowMessage('Data Inválida');
    edtData.SetFocus;
    exit;
  end;
  end;

  dm.qr_Dependentes.Close;
  dm.qr_Dependentes.SQL.Clear;
  dm.qr_Dependentes.SQL.Add('INSERT INTO dependentes (id_socio, nome, dt_nascimento, sexo)');
  dm.qr_Dependentes.SQL.Add('VALUES (:idsocio, :nome, :nascimento, :sexo)');
  dm.qr_Dependentes.ParamByName('idsocio').AsInteger := StrToInt(edtIdCod.Text);
  dm.qr_Dependentes.ParamByName('nome').AsString := edtNome.Text;
  dm.qr_Dependentes.ParamByName('nascimento').AsDate := StrToDate(edtData.Text);
  dm.qr_Dependentes.ParamByName('sexo').AsString := cbSexo.Text;

  try
    dm.qr_Dependentes.ExecSQL;
  except
    on E: Exception do
      begin
      if Pos('FK', E.Message) > 0 then
        Application.MessageBox('Código do Sócio não existe!', 'Atenção', MB_OK+MB_DEFBUTTON1+MB_ICONEXCLAMATION);
        list;
        abort;
      end;
  end;

  Application.MessageBox('Cadastro Realizado com Sucesso!', 'Aviso', MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);
  clear;
  list;
  edtIdCod.Text;
end;

procedure TfrmDependente.clear;
begin
  edtId.Text := '';
  edtIdCod.Text := '';
  edtNome.Text := '';
  edtData.Text := '';
  cbSexo.Text := '';
end;

procedure TfrmDependente.DBGrid2CellClick(Column: TColumn);
begin
  if dm.qr_Dependentes.FieldByName('id_socio').Value <> null then
  begin
    edtId.Text := dm.qr_Dependentes.FieldByName('id').Value;
    edtIdCod.Text := dm.qr_Dependentes.FieldByName('id_socio').Value;
    edtNome.Text := dm.qr_Dependentes.FieldByName('nome').Value;
    edtData.Text := dm.qr_Dependentes.FieldByName('dt_nascimento').Value;
    cbSexo.Text := dm.qr_Dependentes.FieldByName('sexo').Value;
  end;
end;

procedure TfrmDependente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmDependente := nil;
end;

procedure TfrmDependente.list;
begin
  dm.qr_Dependentes.Close;
  dm.qr_Dependentes.SQL.Clear;
  dm.qr_Dependentes.SQL.Add('SELECT * FROM dependentes ORDER BY id ASC');
  dm.qr_Dependentes.Open();
end;

end.
