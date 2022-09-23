program Project1;

uses
  Forms,
  UnitServer in 'UnitServer.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
