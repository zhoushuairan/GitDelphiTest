unit Unit1;

interface

uses
  SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms, 
  QDialogs, QStdCtrls, QButtons, QExtCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  change: Boolean;
implementation

{$R *.xfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if(change) then
  begin
    img1.Picture.LoadFromFile('G:\delphiTest\?л?\1.bmp');
    change:=false;
  end
  else
  begin
    img1.Picture.LoadFromFile('G:\delphiTest\?л?\3.bmp');
    change:=true;
  end;
end;

end.
