library dBASElibrary;

uses
  Windows,
  Dialogs,
  SysUtils,
  Classes,
  Forms,
  Graphics,
  ExportsWindow in 'ExportsWindow.pas',
  reinit in 'reinit.pas';

{$E DLL}

{$R *.res}

exports
  XProject_CreateWindow_AHandle_AName,
  XProject_CreateWindow_AHandle,
  //
  XProject_ShowModal_AHandle;

begin
  try
    Application_Initialize;
  except
    on E: Exception do
    begin
      ShowMessage('Exception occur:' +
      #13#10 + E.Message);
    end;
  end;
end.

