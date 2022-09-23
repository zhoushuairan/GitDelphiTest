unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    rg1: TRadioGroup;
    stat1: TStatusBar;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[1].Text:='当前坐标:X='+IntToStr(X)+';Y='+IntToStr(Y);
end;

procedure TForm1.rg1Click(Sender: TObject);
begin
  stat1.Panels[0].Text:='您 最 喜 欢 的 季 节 是 '+rg1.Items[rg1.ItemIndex];
end;

end.
