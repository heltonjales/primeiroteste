unit uSocio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.UITypes, FireDAC.Stan.Param,
  uSystemUtils;

type
  TfrmSocios = class(TForm)
    Panel3: TPanel;
    Panel10: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    btnEditar: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnNovo: TButton;
    Panel9: TPanel;
    btnPesquisar: TSpeedButton;
    edtPesquisar: TEdit;
    cbPesquisa: TComboBox;
    Panel4: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Panel19: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel20: TPanel;
    edtNome: TEdit;
    edtId: TEdit;
    edtCpf: TMaskEdit;
    edtRenda: TEdit;
    cbSexo: TComboBox;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure cbSexoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCpfKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure clean;
    procedure list;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSocios: TfrmSocios;

implementation

{$R *.dfm}

uses uModulo;

procedure TfrmSocios.btnEditarClick(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    ShowMessage('Campo nome obrigat�rio');
    edtNome.SetFocus;
    exit;
  end;

  if Trim(edtRenda.Text) = '' then
  begin
    ShowMessage('Campo renda obrigat�rio');
    edtRenda.SetFocus;
    exit;
  end;

  if Trim(cbSexo.Text) = '' then
  begin
    ShowMessage('Campo sexo obrigat�rio');
    cbSexo.SetFocus;
    exit;
  end;

  dm.qr_Socios.Close;
  dm.qr_Socios.SQL.Clear;
  dm.qr_Socios.SQL.Add('UPDATE socios SET nome = :nome, renda = :renda, sexo = :sexo WHERE id = :id');
  dm.qr_Socios.ParamByName('id').AsInteger := StrToInt(edtId.Text);
  dm.qr_Socios.ParamByName('nome').AsString := edtNome.Text;
  dm.qr_Socios.ParamByName('renda').AsFloat := StrToFloat(edtRenda.Text);
  dm.qr_Socios.ParamByName('sexo').AsString := cbSexo.Text;
  dm.qr_Socios.ExecSQL;

  ShowMessage('Cadastro Atualizado com sucesso!');
  clean;
  list;
  edtNome.SetFocus;
end;

procedure TfrmSocios.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    ShowMessage('Campo nome obrigat�rio');
    edtNome.SetFocus;
    exit;
  end;

  if Trim(edtCpf.Text) = '' then
  begin
    ShowMessage('Campo CPF obrigat�rio');
    edtCpf.SetFocus;
    exit;
  end;

  dm.qr_Socios.Close;
  dm.qr_Socios.SQL.Clear;
  dm.qr_Socios.SQL.Add('SELECT * FROM socios WHERE cpf = :cpf');
  dm.qr_Socios.ParamByName('cpf').AsString := edtCpf.Text;
  dm.qr_Socios.Open();

  if dm.qr_Socios.IsEmpty then
  begin
    dm.qr_Socios.Close;
    dm.qr_Socios.SQL.Clear;
    dm.qr_Socios.SQL.Add('INSERT INTO socios (nome, cpf, renda, sexo)');
    dm.qr_Socios.SQL.Add('VALUES (:nome, :cpf, :renda, :sexo)');
    dm.qr_Socios.ParamByName('nome').AsString := edtNome.Text;
    dm.qr_Socios.ParamByName('cpf').AsString := edtCpf.Text;
    dm.qr_Socios.ParamByName('renda').AsString := edtRenda.Text;
    dm.qr_Socios.ParamByName('sexo').AsString := cbSexo.Text;
    dm.qr_Socios.ExecSQL;

    ShowMessage('Registro salvo com sucesso');;
    clean;
    list;
    edtNome.SetFocus;
  end
  else
  begin
    ShowMessage('O s�cio j� possui cadastro!');;
    list;
    clean;
    edtNome.SetFocus;
  end;
end;

procedure TfrmSocios.btnNovoClick(Sender: TObject);
begin
  list;
  edtNome.SetFocus;
end;

procedure TfrmSocios.btnExcluirClick(Sender: TObject);
begin
  if msgConfirm('Confirma a Exclus�o do Registro?') then
  begin
    dm.qr_Socios.Close;
    dm.qr_Socios.SQL.Clear;
    dm.qr_Socios.SQL.Add('DELETE FROM socios WHERE id = :id');
    dm.qr_Socios.ParamByName('id').AsInteger := StrToInt(edtId.Text);

    try
       dm.qr_Socios.ExecSQL;
    except
      on E: Exception Do
        if Pos('FK', E.Message) > 0 then
        begin
          Application.MessageBox('Registro com relacionamento na tabela DEPENDENTES', 'Aviso', MB_OK+MB_DEFBUTTON1+MB_ICONEXCLAMATION);
          clean;
          list;
          edtNome.SetFocus;
          abort;
        end;
    end;

    ShowMessage('Registro deletado com sucesso!');
    clean;
    list;
    edtNome.SetFocus;
  end;
end;

procedure TfrmSocios.cbPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TfrmSocios.cbSexoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TfrmSocios.clean;
begin
  edtId.Text := '';
  edtNome.Text := '';
  edtCpf.Text := '';
  edtRenda.Text := '';
  cbSexo.Text := '';
end;

procedure TfrmSocios.DBGrid1CellClick(Column: TColumn);
begin
  if dm.qr_Socios.FieldByName('cpf').AsString <> null then
  begin
    edtId.Text := dm.qr_Socios.FieldByName('id').Value;
    edtNome.Text := dm.qr_Socios.FieldByName('nome').Value;
    edtCpf.Text := dm.qr_Socios.FieldByName('cpf').Value;
    edtRenda.Text := dm.qr_Socios.FieldByName('renda').Value;
    cbSexo.Text := dm.qr_Socios.FieldByName('sexo').Value;
  end;
end;

procedure TfrmSocios.edtCpfKeyPress(Sender: TObject; var Key: Char);
begin
  if not(isNumber(Key)) then
end;

procedure TfrmSocios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSocios := nil;
end;

procedure TfrmSocios.list;
begin
  dm.qr_Socios.Close;
  dm.qr_Socios.SQL.Clear;
  dm.qr_Socios.SQL.Add('SELECT * FROM socios ORDER BY id ASC');
  dm.qr_Socios.Open();
end;

procedure TfrmSocios.btnPesquisarClick(Sender: TObject);
begin
  dm.qr_Socios.Close;
  dm.qr_Socios.SQL.Clear;
  case cbPesquisa.ItemIndex of
    0 : dm.qr_Socios.SQL.Add('SELECT * FROM socios WHERE UPPER(nome) LIKE' +UpperCase(QuotedStr('%'+edtPesquisar.Text+'%')));
    1 : dm.qr_Socios.SQL.Add('SELECT * FROM socios WHERE cpf LIKE' +QuotedStr('%'+edtPesquisar.Text+'%'));
  end;
  dm.qr_Socios.Open();
end;

end.
