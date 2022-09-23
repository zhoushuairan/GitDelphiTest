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
  x,y,x1,y1,x2,y2,r,b,p:Real;
  i:Integer;
begin
  x:=160;
  y:=100;
  r:=80;
  b:=3.14159/2;
  p:=4*3.14159/5;
  Canvas.Pen.Color:=clRed;
  Canvas.Pen.Width:=4;

  for i:=0 to 4 do
  begin
    x1:=x+r*cos(i*p-b);
    y1:=y+r*sin(i*p-b);
    x2:=x+r*cos((i+1)*p-b);
    y2:=y+r*sin((i+1)*p-b);
    Canvas.MoveTo(Trunc(x1),Trunc(y1));
    Canvas.LineTo(Trunc(x1),Trunc(y1));
    Canvas.LineTo(Trunc(x2),Trunc(y2));
  end;
end;

end.
