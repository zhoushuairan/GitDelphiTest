unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,MMSystem;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WMSetCursor;
    procedure IdleLoop;
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.IdleLoop;
var
  choice,sideDef,TopDef,PaddleDifference:Integer;
begin
  done:=false;
  Sleep(1);
  changerect:=spriterect;
  spriterect.left:=x;
  spriterect.top:=y;
  spriterect.right:=x+spriteImage.picture.width;
  spriterect.bottom:=y+spriteImage.picture.height;

  workCanvas.copyRect(paddlerect,backgroundcanvas,paddlerect);

  changepaddlerect:=paddlerect;
  paddlerect.left:=paddlecenter-((PaddleDifference.picture.width)div 2);
  paddleX:=paddlerect.left;
  paddlerect.top:=paddleY;
  paddlerect.right:=paddleX+paddle.picture.width;
  paddlerect.bottom:=paddley+paddle.picture.height;

  sidedef:=changeRect.left-spriteRect.left;
  if (sidedef<0) then
  begin
    changeRect.right:=spriterect.right;
  end
  else
  begin
    changerect.left:=spriterect.left;
  end;

  topdef:=changerect.top-spriterect.top;
  if(topdef<0)then
  begin
    changeRect.bottom:=spriterect.bottom;
  end
  else
  begin
    changerect.top:=spriterect.top;
  end;

  workcanvas.copyrect(spriterect,backgroundcanvas,spriterect);

  if(y<=0) then
  begin
    yDir:=5;
  end;
  if(y>=clientHeight -16)then
  begin
    fgameover:=True;
    setcursor(Hcursor(IDC arrow));
    showcursor(True);
    choice:=messageBox(handle,'你没有挡住小球，还玩吗。','询问？',mb_retrycancel);
    if(choice=idretry)then
    begin
      x:=0;
      y:=0;
      showcursor(False);
    end
    else
      form1.close;
  end;
  if((spriterect.bottom-16)>=(paddlerect.top))and
    ((spriterect.bottom-16)<=(paddlerect.top+5))and
    ((spriterect.right)>=(paddlerect.left))and
    ((spriterect.left)<=(paddlerect.right))then
    begin
      yDir:=-5;
      sndPlaySound('utopia default.wav',snd_async or snd_filename);
    end;

  if(x<=0) then
  begin
    xDir:=5;
  end;
  if(x>=clientwidth-16) then
  begin
    xDir:=-5;
  end;

  inc(x,xdir);
  inc(y,ydir);
  paddleDifference:=changepaddlerect.left-paddlerect.left;

  if(paddledifference<0)then
  begin
    changePaddlerect.right:=paddlerect.right;
  end
  else
  begin
    changepaddlerect.left:=paddlerect.left;
  end;

  workcanvas.draw(x,y,spriteImage.picture.icon);
  workcanvas.draw(paddlex,paddley,paddle.picture.icon);
  realizepalette(backgroundcanvas.handle);
  realizepalette(workcanvas.handle);
  canvas.copyrect(changerect,workcanvas,changerect);
  canvas.copyrect(changepaddlerect,workcanvas,changepaddlerect);
end;

procedure TForm1.WMSetCursor;
begin
  if not(FGAmeOver) then
  begin
    SetCursor(hcursor(nil));
  end;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  RealizePalette(backgroundcanvas.handle);
  realizePalette(workcanvas.handle);
  canvas.copyRect(backgroundrect,workcanvas,backgroundrect);
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  backgrounddc,workdc:HDC;
  bkbmp,bmp:HBITMAP;
begin
  backgroundImage:=TImage.create(Self);
  spriteImage:=Timage.create(Self);
  paddle:=TImage.create(Self);
  workCanvas:=TCanvas.create;
  backgroundCanvas:=TCanvas.create;

  Angle:=1;
  spriteImage.Picture.LoadFromFile('Earth,ico');
  paddle.Picture.Loadfromfile('paddle.ico');
  WindowState:=wsMaximized;
  backgroundrect.top:=0;
  backgroundRect.left:=0;
  backgroundRect.right:=clientwidth;
  backgroundRect.Bottom:=clientHeight;

  spriteRect.top:=0;
  spriteRect.left:=0;
  spriteRect.right:=spriteImage.picture.width;
  spriteRect.bottom:=spriteImage.picture.height;

  backgrounddc:=CreateCompatibleDC(Canvas.Handle);
  bkbmp:=CreateCompatibleBitmap(Canvas.Handle,ClientWidth,ClientHeight);
  SelectObject(backgrounddc,bkbmp);
  SelectPalette(backgrounddc,backgroundimage.picture.bitmap.palette,false);
  backgroundcanvas.handle:=backgrounddc;
  backgroundcanvas.stretchdraw(backgroundrect,backgroundimage.picture.bitmap);

  workdc:=createcompatibleDc(canvas.handle);
  bmp:=CreateCompatibleBitmap(canvas.handle,clientwidth,clientheight);
  SelectObject(workdc,bkbmp);
  SelectPalette(workdc,backgroundimage.picture.bitmap.palette,false);
  workCanvas.handle:=workdc;
  workCanvas.copyrect(backgroundrect,backgroundcanvas,backgroundrect);
  workcanvas.draw(0,0,spriteImage.picture.icon);

  paddlerect.left:=paddlex-paddle.width;
  paddlerect.right:=paddlex+paddle.width;
  paddlerect.top:=paddleY;
  paddlerect.bottom:=paddley+paddleheight;

  realizePalette(backgroundcanvas.handle);
  realizepalette(workcanvas.handle);
  canvas.copyrect(backgroundrect,workcanvas,backgroundrect);

end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  paddlecenter:=x;
  if(paddlecenter<paddle.picture.Width div 2) then
    paddlecenter:=paddle.picture.Width div 2;
  if(paddlecenter>ClientWidth-(paddle.picture.Width div 2)) then
    paddlecenter:=ClientWidth-(paddle.picture.Width div 2));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnIdle:=idleloop;
  sndPlaySound('utopia default.wav',SND_ASYNC or SND_FILENAME);
  x:=0;
  y:=0;
  fgameover:=false;
  ShowCursor(false);
end;

end.
