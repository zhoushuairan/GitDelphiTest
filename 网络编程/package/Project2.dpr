program Project2;

uses
  Forms,
  MainFrm in 'pack\MainFrm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
