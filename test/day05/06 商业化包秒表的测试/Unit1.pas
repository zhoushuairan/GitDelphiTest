unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Qcustomlabel1, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    rg1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    myclock: tcustomlabel1;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  myclock := tcustomlabel1.create(Self);
  myclock.Parent := Self;
  myclock.font.Size := 120;
  myclock.font.Name := 'ºÚÌå';
  myclock.font.Color := clRed;
end;

procedure TForm1.rg1Click(Sender: TObject);
begin
  if rg1.ItemIndex = 0 then
    myclock.state := stclock
  else if rg1.ItemIndex = 1 then
    myclock.state := stRunClock
  else if rg1.ItemIndex = 2 then
  begin
    myclock.BeginTime:=TimeToStr(time);  
    myclock.state := stBackClock;
  end;

end;

end.

