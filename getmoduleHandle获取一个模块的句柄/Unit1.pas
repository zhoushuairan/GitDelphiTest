unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
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
var
  s:string;
  h:Cardinal;
begin
  {先取得模块名}
  s:=Application.ExeName;
  s:=ExtractFileName(s);

  ShowMessage(s);      {project1.exe}
  h:=GetModuleHandle(PChar(s));
  ShowMessage(IntToStr(h));

  h:=GetModuleHandle('notepad.exe');
  ShowMessage(IntToStr(h));
end;

end.
 