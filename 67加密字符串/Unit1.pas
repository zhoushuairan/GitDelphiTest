unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function endecode(const value:string):string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.endecode(const value: string): string;
var
  charIndex:Integer;
  returnValue:string;
begin
  returnValue:='';
  for charIndex:=1 to Length(value) do
  begin
    returnValue:=returnValue+chr(not(Ord(Value[charIndex])));
  end;
  Result:=returnValue;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt2.Text:=endecode(edt1.Text);
end;

end.
