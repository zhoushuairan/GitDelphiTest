unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, ExtCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    il1: TImageList;
    cbb1: TComboBox;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  ShellAPI;
{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  numicons,loopint:Integer;
  myicons:array of TIcon;
begin
  numicons:=ExtractIcon(HInstance,'shell32.dll',Cardinal(-1));
  for loopint:=0 to numicons-1 do
  begin
    SetLength(myicons,loopint+1);
    myicons[loopint]:=TIcon.Create;
    myicons[loopint].Handle:=ExtractIcon(HInstance,'shell32.dll',loopint);

    il1.AddIcon(myicons[loopint]) ;
    cbb1.Items.Add(IntToStr(loopint));
  end;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  il1.GetIcon(cbb1.ItemIndex,img1.Picture.Icon);
end;

end.
