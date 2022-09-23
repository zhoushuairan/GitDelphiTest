program Project11;

uses
  Forms,
  Unit11 in 'Unit11.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
