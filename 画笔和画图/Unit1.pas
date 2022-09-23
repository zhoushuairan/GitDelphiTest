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

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  DC: HDC;
begin
  try
    DC := GetDC(0);
    TextOut(DC, 400, 400, '我抓住了桌面', 20);
  finally
    ReleaseDC(0,DC);
  end;

end;

procedure TForm1.btn2Click(Sender: TObject);
var
  DC: HDC;
begin
  try
    DC:=GetDC(0);
    Canvas.Handle:=DC;
    Canvas.Pen.color:=clRed;
    Canvas.Brush.Color:=clBlue;
    Canvas.Ellipse(200,200,700,700);
  finally
    ReleaseDC(0,DC);
  end;   
end;

end.

