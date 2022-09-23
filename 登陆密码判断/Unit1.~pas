unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
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

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Label1.Caption:=InttoStr(Length(Edit1.Text));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  str1:String;
  str2:String;
  i:Integer;
begin
  str1:=Edit1.Text;
  str2:=LowerCase(str1);
  i:=CompareStr('shuairan',str2);
  if(i<>0) then
    Edit1.text:='ÃÜÂë´íÎó£¬out!'
  else
    Edit1.Text:='¹§Ï²Äú£¬ÃÜÂëÕıÈ·£¡';
end;

end.
