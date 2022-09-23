unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TBaseLang = class(TPersistent)
  public
    function Say(name: string): string; virtual; abstract;
  end;

  TAmerican = class(TBaseLang)
  public
    function Say(name: string): string; override;
  end;

  TChinese = class(TBaseLang)
  public
    function Say(name: string): string; override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TAmerican }

function TAmerican.Say(name: string): string;
begin
  ShowMessage('Œ“ «zsr,' + name);
end;

{ TChinese }

function TChinese.Say(name: string): string;

begin
  ShowMessage('I am a US' + name);

end;

procedure TForm1.btn1Click(Sender: TObject);
var
  Amer:TAmerican;
begin
  //TAmerican.Create.Say('lily');
  if GetClass('TAmerican') <> nil then
  begin
    Amer:=FindClass('US').Create as TAmerican;
    Amer.Say('Lily');
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  TChinese.Create().Say('Lily');
end;

initialization
  RegisterClassAlias(TAmerican, 'US');
  RegisterClassAlias(TChinese, 'CH');


finalization
  UnRegisterClass(TAmerican);
  UnRegisterClass(TChinese);

end.
 
