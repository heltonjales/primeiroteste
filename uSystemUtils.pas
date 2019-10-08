unit uSystemUtils;

interface
  function isNumber(key : char) : boolean;
  function msgConfirm(aMessage : string) : boolean;

implementation

uses
  System.SysUtils, Vcl.Forms, Winapi.Windows;

function isNumber(key : char) : boolean;
begin
  result := CharInSet(Key,['0'..'9']);
end;

function msgConfirm(aMessage : string) : boolean;
begin
  result := Application.Messagebox(PWideChar(aMessage), 'Alerta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES;
end;

end.
