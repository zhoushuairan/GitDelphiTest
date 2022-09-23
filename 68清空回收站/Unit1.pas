unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EmptyRecycleBin;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.EmptyRecycleBin;
const
  SHERB_NOCONFIRMATION=$00000001;
  SHERB_NOPROGRESSUI=$00000002;
  SHERB_NOSOUND=$00000004;
  type
    TSHEmptyRecycleBin=function(wnd:HWND;
                                LPCTSTR:PChar;
                                DWORD:Word):Integer;stdcall;
var
  SHEmptyRecycleBin:TSHEmptyRecycleBin;
  LibHandle:THandle;
begin
  LibHandle:=LoadLibrary(PChar('shell32.dll'));
  if LibHandle<>0 then
    @SHEmptyRecycleBin:=GetProcAddress(LibHandle,'shemptyrecyclebinA')
  else
    begin
      //MessageDlg('无法装载shell32.dll.',mtError,[mrOk],0);
      exit;
    end;
  if @SHEmptyRecycleBin<> nil then
    SHEmptyRecycleBin(Application.Handle,'',SHERB_NOCONFIRMATION or SHERB_NOPROGRESSUI or SHERB_NOSOUND);
    FreeLibrary(LibHandle);
    @SHEmptyRecycleBin:=nil;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if (MessageDlg('你真的要清空回收站吗',mtConfirmation,mbOKCancel,0)= mryes) then
    EmptyRecycleBin;
end;

end.
