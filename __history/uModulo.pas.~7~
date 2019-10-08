unit uModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    qr_Socios: TFDQuery;
    ds_Socios: TDataSource;
    qr_SociosID: TIntegerField;
    qr_SociosNOME: TStringField;
    qr_SociosCPF: TStringField;
    qr_SociosRENDA: TFMTBCDField;
    qr_SociosSEXO: TStringField;
    qr_Dependentes: TFDQuery;
    ds_Dependentes: TDataSource;
    qr_DependentesID: TIntegerField;
    qr_DependentesID_SOCIO: TIntegerField;
    qr_DependentesNOME: TStringField;
    qr_DependentesDT_NASCIMENTO: TDateField;
    qr_DependentesSEXO: TStringField;
    qr_Relatorio: TFDQuery;
    ds_Relatorio: TDataSource;
    qr_RelatorioID: TIntegerField;
    qr_RelatorioNOME: TStringField;
    qr_RelatorioCPF: TStringField;
    qr_RelatorioRENDA: TFMTBCDField;
    qr_RelatorioSEXO: TStringField;
    qr_RelatorioID_1: TIntegerField;
    qr_RelatorioID_SOCIO: TIntegerField;
    qr_RelatorioNOME_1: TStringField;
    qr_RelatorioDT_NASCIMENTO: TDateField;
    qr_RelatorioSEXO_1: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
