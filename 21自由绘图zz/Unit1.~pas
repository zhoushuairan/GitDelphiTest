unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    ColorBox1: TColorBox;
    btn1: TButton;
    stat1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ColorBox1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    StartX,StartY,end_flag:Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  end_flag:=1;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  end_flag:=0;
  StartX:=X;
  StartY:=Y;
  Canvas.MoveTo(x,y);
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if end_flag=0 then
    Canvas.LineTo(x,y);
  stat1.SimpleText:='鼠标当前位置：X='+IntToStr(x)+',Y='+IntToStr(Y);
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  end_flag:=1;
end;

procedure TForm1.ColorBox1Change(Sender: TObject);
begin
  Canvas.Pen.Color:=ColorBox1.Selected;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  i:Integer;
  old_color:TColor;
begin
  lbl1.Enabled:=false;
  old_color:=Canvas.Pen.Color;
  for i:=0 to Form1.Height do
  begin
    Canvas.Pen.color:=form1.Color;
    Canvas.MoveTo(0,i); //设置画笔的起点
    Canvas.LineTo(form1.Width,i);  //画笔终点坐标
  end;
  Canvas.Pen.Color:=old_color;
  lbl1.Enabled:=True;
end;

end.
