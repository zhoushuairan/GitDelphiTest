unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
Var
  IDNum: String[18];
  i: Integer;
  w: Array[1..17] of Integer = (7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
  s: Integer = 0;
  check: String[1];

procedure TForm1.Button1Click(Sender: TObject);
begin
  IDNum:= Edit1.Text;
  s:= 0;
  for i:= 1 to 17 do
    s:= s + StrToInt(IDNum[i]) * w[i];
  s:= s Mod 11;
  s:= (12 - s) Mod 11;
  if s = 10 then
    check:= 'X'
  else
    check:= IntToStr(s);
  if check = UpperCase(IDNum[18]) then
    panel1.Caption:= '身份证通过校验'
  else
    panel1.Caption:= '身份证未通过校验';
end;

end.
