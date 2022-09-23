unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZsrMarquee, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    Marquee1: TZsrMarquee;
    procedure MDone(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }

procedure TForm1.MDone(Sender: TObject);
begin
  Beep;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Marquee1 := TZsrMarquee.create(Self);
  with Marquee1 do
  begin
    Parent:=Self;
    top:=10;
    left:=10;
    Height:=200;
    Width:=150;
    ondone:=MDone;
    Marquee1.scrollDown:=True;
    Show;

    with Items do begin
      Add('Grey');
      Add('peter');
      Add('marsha');
      Add('zsr');
      Add('lily');
      Add('kang');
      Add('hui');
    end;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Marquee1.Active:=True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Marquee1.Active:=false;
end;

end.

