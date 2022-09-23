unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    drvcbb1: TDriveComboBox;
    dirlst1: TDirectoryListBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetDirectorySize(const ADirectory:string):Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  lbl2.Caption:=IntToStr(GetDirectorySize(dirlst1.Directory));
end;

function TForm1.GetDirectorySize(const ADirectory: string): Integer;
var
  dir:TSearchRec;
  Ret:Integer;
  Path:string;
begin
  Result:=0;
  path:=ExtractFilePath(ADirectory);
  ret:=SysUtils.FindFirst(ADirectory,faAnyFile,dir);
  if Ret<> no_error then
    exit;
  try
    while Ret=no_error do
    begin
      Inc(Result,dir.Size);
      if(dir.Attr in [fadirectory]) and(dir.Name[1]<>'.') then
        Inc(Result,GetDirectorySize(path+dir.name+'\*.*'));
      ret:=SysUtils.FindNext(dir);
    end;
  finally
    SysUtils.FindClose(dir);
  end;
end;

end.
