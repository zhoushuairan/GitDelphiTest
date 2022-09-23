unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,RichEdit, jpeg, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    redt1: TRichEdit;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
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
  imagecanvas:TCanvas;
  fmt:TFormatRange;
begin
  imagecanvas:=img1.Canvas;
  with fmt do
  begin
    hdc:=imagecanvas.handle;
    hdcTarget:=hdc;
    rc:=Rect(0,0,imagecanvas.ClipRect.Right*1440 div PixelsPerInch,
            imagecanvas.ClipRect.Bottom*1440 div PixelsPerInch);
    rcPage:=rc;
    chrg.cpMin:=0;
    chrg.cpMax:=redt1.GetTextLen;
  end;
  redt1.Perform(EM_FORMATRANGE,1,Integer(@fmt));
  redt1.Perform(EM_FORMATRANGE,0,0);
  img1.Refresh;
end;

end.
