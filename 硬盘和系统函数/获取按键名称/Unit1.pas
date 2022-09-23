unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure MyMsg(var msg: TWMKeyDown); message wm_keydown;
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
  Canvas.Font.Size := 24;
  Canvas.Font.Style := [fsBold];
  Canvas.Font.Color := clRed;
  Canvas.Brush.Color := clWhite;
end;

procedure TForm1.MyMsg(var msg: TWMKeyDown);
var
  buf: array[0..31] of char;
  rect: TRect;
  str: string;
begin
  GetKeyNameText(msg.KeyData, buf, Length(buf));

  str := buf;
  rect := ClientRect;
  Canvas.FillRect(rect);
  Canvas.TextRect(rect, StrToInt(str), [tfSingleLine, tfCenter, tfVerticalCenter]);
  inherited;
end;

end.
 
