program Estudo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uModulo in 'uModulo.pas' {dm: TDataModule},
  uRelatorio in 'uRelatorio.pas' {frmRelatorio},
  uSocio in 'uSocio.pas' {frmSocios},
  uDependente in 'uDependente.pas' {frmDependente},
  uSystemUtils in 'uSystemUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
