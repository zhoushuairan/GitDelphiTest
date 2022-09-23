unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  x,y,z,i:Integer ;
begin
  Canvas.TextOut(100,30,'¹«¼¦');
  Canvas.TextOut(180,30,'Ä¸¼¦');
  Canvas.TextOut(260,30,'Ð¡¼¦');
  for x:=0 to 19 do
    for y:=0 to 32 do
    begin
      z:=100-x-y;
      if((5*x+3*y+z/3)=100) then
      begin
        Canvas.TextOut(100,40+y*5,IntToStr(x));
        Canvas.TextOut(180,40+y*5,IntToStr(y));
        Canvas.TextOut(260,40+y*5,IntToStr(z));
      end;
    end;
end;

end.
