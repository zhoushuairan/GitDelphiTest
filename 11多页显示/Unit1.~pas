unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, ComCtrls, Grids, Calendar;

type
  TForm1 = class(TForm)
    tbc1: TTabControl;
    pgc1: TPageControl;
    cal1: TCalendar;
    lbl1: TLabel;
    cbb1: TComboBox;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    img1: TImage;
    mmo1: TMemo;
    shp1: TShape;
    shp2: TShape;
    shp3: TShape;
    procedure FormCreate(Sender: TObject);
    procedure tbc1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
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
  cal1.Year:=StrToInt(Copy(DateToStr(Date),0,4));
  cal1.Month:=StrToInt(Copy(DateToStr(Date),5,2));
  tbc1.TabIndex:=cal1.Month-1;
  cal1.Refresh;
  cbb1.Text:=Copy(DateToStr(Date),0,4);
end;

procedure TForm1.tbc1Change(Sender: TObject);
begin
  cal1.Month:=tbc1.TabIndex+1;
  cal1.Refresh;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  cal1.Year:=StrToInt(cbb1.Text);
  cal1.Refresh;
end;

end.
