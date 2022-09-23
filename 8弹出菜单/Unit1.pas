unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    pnl1: TPanel;
    img1: TImage;
    pm1: TPopupMenu;
    W1: TMenuItem;
    X1: TMenuItem;
    Y1: TMenuItem;
    Z1: TMenuItem;
    procedure W1Click(Sender: TObject);
    procedure X1Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure Z1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.W1Click(Sender: TObject);
begin
  img1.Transparent:=false;
  img1.Stretch:=true;
end;

procedure TForm1.X1Click(Sender: TObject);
begin
  img1.Transparent:=false;
  img1.Stretch:=False;
end;

procedure TForm1.Y1Click(Sender: TObject);
begin
  img1.Transparent:=True;
end;

procedure TForm1.Z1Click(Sender: TObject);
begin
  img1.Transparent:=false;
end;

end.
