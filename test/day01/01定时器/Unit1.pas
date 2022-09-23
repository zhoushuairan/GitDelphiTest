unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    time1: TTimer;
    btn1: TButton;
    btn2: TButton;
    procedure time1Timer(Sender: TObject);
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

procedure TForm1.time1Timer(Sender: TObject);
begin
  if (lbl1.Left <    lbl1.Width) then
  begin
    lbl1.Left:=Form1.Width+1
  end
  else
  begin
    lbl1.Left:=lbl1.Left-5;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  time1.Enabled:=True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Time1.Enabled:=False;
end;

end.

