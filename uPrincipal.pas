unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDependente, uRelatorio, uSocio, uBase, uModulo;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
frmPrincipal := nil;
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
if frmSocios = nil then
  frmSocios := TfrmSocios.Create(Self);

  frmSocios.Show;
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
if frmDependente = nil then
  frmDependente := TfrmDependente.Create(Self);

frmDependente.Show;
end;

procedure TfrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
  frmRelatorio := TfrmRelatorio.Create(Self);
  frmRelatorio.RLReport1.Preview();
end;

end.