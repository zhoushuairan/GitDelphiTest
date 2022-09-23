unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Calendar, Gauges, ComCtrls, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    se1: TSpinEdit;
    lbl3: TLabel;
    pb1: TProgressBar;
    Gauge1: TGauge;
    cal1: TCalendar;
    procedure FormCreate(Sender: TObject);
    procedure se1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  if(copy(DateToStr(Date),7,1)='-') then
    lbl3.Caption:=copy(DateToStr(Date),6,1)
  else
    lbl3.Caption:=copy(DateToStr(Date),6,2);
end;

procedure TForm1.se1Change(Sender: TObject);
begin
  if(se1.Value<1000) then
  begin
    pb1.Position:=0;
    Gauge1.Progress:=0;
  end
  else if(se1.Value>2050) then
  begin
    pb1.Position:=100;
    Gauge1.Progress:=100;
  end
  else
  begin
    pb1.Position:=(se1.Value-2000)*2;
    Gauge1.Progress:=(se1.Value-2000)*2;
  end;
  cal1.Year:=se1.Value;
end;

end.
