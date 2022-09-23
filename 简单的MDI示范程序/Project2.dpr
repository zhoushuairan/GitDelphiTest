program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit2 in 'Unit2.pas' {Child},
  Unit3 in 'Unit3.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TChild, Child);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
