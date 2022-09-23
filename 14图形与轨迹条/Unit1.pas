unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    TrackBar1: TTrackBar;
    shp1: TShape;
    tmr1: TTimer;
    procedure TrackBar1Change(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:Integer;
implementation

{$R *.dfm}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  i:=TrackBar1.Position;
  TrackBar1.SelEnd:=i;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  i:=i+1;
  if(i>5) then
    i:=0;
  trackbar1.Position:=i;

  case i of
    0:
    begin
      shp1.Shape:=stRectangle;
      shp1.Brush.Color:=clRed;
    end;
    1:
    begin
      shp1.Shape:=stRoundRect;
      shp1.Brush.Color:=clGreen;
    end;
    2:
    begin
      shp1.Shape:=stRoundSquare;
      shp1.Brush.Color:=clblue;
    end;
    3:
    begin
      shp1.Shape:=stSquare;
      shp1.Brush.Color:=clYellow;
    end;
    4:
    begin
      shp1.Shape:=stCircle;
      shp1.Brush.Color:=clTeal;
    end;
    5:
    begin
      shp1.Shape:=stEllipse;
      shp1.Brush.Color:=clPurple;
    end;
  end;
end;

end.
