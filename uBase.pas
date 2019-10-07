unit uBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TfrmSocio = class(TForm)
    PageControl1: TPageControl;
    tsSocios: TTabSheet;
    Dependentes: TTabSheet;
    TabSheet3: TTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel15: TPanel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Panel16: TPanel;
    Panel17: TPanel;
    Label2: TLabel;
    Panel18: TPanel;
    Button4: TButton;
    Panel21: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton7: TSpeedButton;
    Panel22: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    MaskEdit2: TMaskEdit;
    Edit6: TEdit;
    ComboBox4: TComboBox;
    DBGrid2: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSocio: TfrmSocio;

implementation

{$R *.dfm}

uses uModulo, uRelatorio;

procedure TfrmSocio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSocio := nil;
end;

procedure TfrmSocio.FormShow(Sender: TObject);
var
  i : integer;
begin
  for I := 0 to PageControl1.PageCount - 1 do
    PageControl1.Pages[i].TabVisible := false;

  PageControl1.ActivePage := PageControl1.Pages[0];

end;

procedure TfrmSocio.SpeedButton3Click(Sender: TObject);
begin
  PageControl1.ActivePage := PageControl1.Pages[0];
end;

procedure TfrmSocio.SpeedButton4Click(Sender: TObject);
begin
  PageControl1.ActivePage := PageControl1.Pages[1];
end;

procedure TfrmSocio.SpeedButton5Click(Sender: TObject);
begin
  frmRelatorio := TfrmRelatorio.Create(Self);
  frmRelatorio.RLReport1.Preview();
end;

end.