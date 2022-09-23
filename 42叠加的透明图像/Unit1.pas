unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    img1: TImage;
    img2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure DrawTransparentBitMap(ahdc: HDC;Image:TImage;xstart,yStart:Word);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.DrawTransparentBitMap(ahdc: HDC;Image:TImage;xstart,yStart:Word);
var
  TransParentColor:TColor;
  cColor:TColorRef;
  bmAndBack,
  bmAndObject,
  bmAndMem,
  bmSave,
  bmBackOld,
  bmObjectOld,
  bmMemOld,
  bmSaveOld:HBITMAP;
  hdcMem,
  hdcBack,
  hdcObject,
  hdcTemp,
  hdcSave:HDC;
  ptSize:TPoint;
  begin
    TransParentColor:=Image.Picture.Bitmap.canvas.Pixels[0,Image.height-1];
    TransparentCOlor:=TransparentCOlor or $02000000;

    hdcTemp:=CreateCompatibleDC(ahdc);
    SelectObject(hdcTemp,Image.Picture.Bitmap.Handle);//选座位图

    ptSize.X:=Image.Width;
    ptSize.Y:=Image.Height;
    DPtoLP(hdcTemp,ptSize,1);

    hdcBack:=CreateCompatibleDC(ahdc);
    hdcObject:=CreateCompatibleDC(ahdc);
    hdcMem:=CreateCompatibleDC(ahdc);
    hdcSave:=CreateCompatibleDC(ahdc);

    bmAndBack:=CreateBitmap(ptSize.x,ptSize.Y,1,1,nil);
    bmAndObject:=CreateBitmap(ptSize.x,ptSize.Y,1,1,nil);

    bmAndMem:=CreateCompatibleBitmap(ahdc,ptSize.x,ptSize.y);
    bmSave:=CreateCompatibleBitmap(ahdc,ptSize.x,ptSize.y);

    bmBackOld:=SelectObject(hdcBack,bmAndBack);
    bmObjectOld:=SelectObject(hdcBack,bmAndObject);
    bmMemOld:=SelectObject(hdcBack,bmAndMem);
    bmSaveOld:=SelectObject(hdcBack,bmSave);

    SetMapMode(hdcTemp,GetMapMode(ahdc));
    BitBlt(hdcSave,0,0,ptSize.x,ptSize.Y,hdcTemp,0,0,SRCCOPY);
    cColor:=SetBkColor(hdcTemp,TransParentColor);
    BitBlt(hdcObject,0,0,ptSize.x,ptSize.y,hdcTemp,0,0,SRCCOPY);
    SetBkColor(hdcTemp,cColor);
    BitBlt(hdcBack,0,0,ptSize.X,ptSize.Y,hdcObject,0,0,NOTSRCCOPY);

    BitBlt(hdcMem,0,0,ptSize.X,ptSize.Y,ahdc,xstart,yStart,SRCCOPY);
    BitBlt(hdcMem,0,0,ptSize.X,ptSize.Y,hdcObject,0,0,SRCAND);
    BitBlt(hdcBack,0,0,ptSize.X,ptSize.Y,hdcBack,0,0,SRCAND);

    BitBlt(hdcMem,0,0,ptSize.X,ptSize.Y,hdcTemp,0,0,SRCPAINT);
    BitBlt(ahdc,0,0,ptSize.X,ptSize.Y,hdcMem,0,0,SRCCOPY);
    BitBlt(hdcTemp,0,0,ptSize.X,ptSize.Y,hdcSave,0,0,SRCCOPY);

    DeleteObject(SelectObject(hdcBack,bmBackOld));
    DeleteObject(SelectObject(hdcObject,bmObjectOld));
    DeleteObject(SelectObject(hdcMem,bmMemOld));
    DeleteObject(SelectObject(hdcSave,bmSaveOld));

    DeleteDC(hdcMem);
    DeleteDC(hdcBack);
    DeleteDC(hdcObject);
    DeleteDC(hdcSave);
    DeleteDC(hdcTemp);
  end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  img1:=TImage.Create(form1);
  img1.Parent:=Form1;

  img2:=TImage.Create(form1);
  img2.Parent:=Form1;

  img2.Picture.LoadFromFile('C:\Users\Administrator\Desktop\个人信息\11.jpg');
  img1.Picture.LoadFromFile('C:\Users\Administrator\Desktop\个人信息\22.jpg');
  with  img2 do
  begin
    left:=50;
    top:=50;
    width:=Picture.Width;
    Height:=Picture.Height;
  end;

  with  img1 do
  begin
    left:=(img2.Picture.Width-picture.Width) div 2;
    top:=(img2.Picture.Height-picture.Height) div 2;
    width:=Picture.Width;
    Height:=Picture.Height;
  end;

  img1.Visible:=false;
  DrawTransparentBitMap(img2.Picture.Bitmap.Canvas.Handle,{hdc}img1,{TImage}img1.left,
                        {X}img1.Top{Y});
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  img1.Free;
  img2.Free;

end;

end.
