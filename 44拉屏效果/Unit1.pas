unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm1 = class(TForm)
    img1: TImage;
    grp1: TGroupBox;
    lbl1: TLabel;
    lst1: TListBox;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
    procedure lst1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  case lst1.ItemIndex of
  0:
    begin
      img1.Height:=210;
      img1.Width:=img1.width+10;
      if(img1.Width=240) then
        tmr1.Enabled:=False;
    end;
  1:
    begin
      img1.Width:=230;
      img1.Height:=img1.Height+10;
      if(img1.Height=210) then
        tmr1.Enabled:=false;
    end;
  2:
    begin
      img1.Width:=img1.Width+12;
      img1.Height:=img1.Height+10;

      if(img1.Width=240) then
        tmr1.Enabled:=False;
    end;
  3:
    begin
      img1.Width:=img1.Width+10;
      img1.Left:=img1.Left-10;
      img1.Height:=img1.Height+9;
      if(img1.Height=10) then
        tmr1.Enabled:=false;
    end;
    end;
end;

procedure TForm1.lst1Click(Sender: TObject);
begin
    img1.Width:=0;
    img1.Height:=0;
    tmr1.Enabled:=True;

    if(lst1.ItemIndex=3) then
      img1.Left:=240;
end;

end.
