unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    img1: TImage;
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

procedure TForm1.btn1Click(Sender: TObject);
var
  FullScr:TBitmap;
  FullScrCav:TCanvas;
  dc:HDC;
begin
  try
    form1.WindowState:=wsMinimized;
    form1.Hide;
    ShowWindow(Application.Handle,0);

    Sleep(20);
    FullScr:=TBitmap.Create;
    FullScr.Width:=Screen.Width;
    FullScr.Height:=Screen.Height;

    dc:=GetDC(0);

    FullScrCav:=TCanvas.Create;
    FullScrCav.Handle:=dc;

    FullScr.Canvas.CopyRect(Rect(0,0,Screen.Width,Screen.Height),FullScrCav,
    Rect(0,0,Screen.Width,Screen.Height)); //把整个屏幕复制到tbitmap

    ReleaseDC(0,dc); //释放桌面的设备被描述表句柄，0表示桌面

    img1.Picture.Bitmap:=FullScr;//吧截取到的屏幕填充到image中去
    Form1.WindowState:=wsNormal;
    Form1.Show;

    ShowMessage('截屏成功！');

  finally
    FullScr.Free;
    FullScrCav.Free;
  end;   

end;

procedure TForm1.btn2Click(Sender: TObject);
var
  myJpg: TJPEGImage;
begin
  try
    myJpg := TJPEGImage.Create;
    myJpg.Assign(img1.Picture.Bitmap);
    myJpg.CompressionQuality := 50;
    myJpg.Compress;
    myJpg.SaveToFile('C:\Users\Administrator\Desktop\1234.jpg');
  finally
    myJpg.Free;
  end;

end;

end.

