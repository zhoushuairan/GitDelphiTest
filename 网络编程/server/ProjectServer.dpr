program ProjectServer;

uses
  Forms,
  Server in 'Server.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
