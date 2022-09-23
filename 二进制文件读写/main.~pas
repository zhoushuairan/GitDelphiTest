unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    pb1: TProgressBar;
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
const
    FILE_SOURCE:string='G:\delphiTest\二进制文件读写\ZSR.png';
    TARGET_SOURCE:string='G:\delphiTest\二进制文件读写\copy.png';
procedure TForm1.btn1Click(Sender: TObject);
var
  SourceFile,TargetFile:file;
var
  buf:array [0..255] of Byte;
begin
  AssignFile(SourceFile,FILE_SOURCE);
    AssignFile(TargetFile,TARGET_SOURCE);
  try


    Reset(SourceFile);
    Rewrite(TargetFile);
    pb1.Max:=FileSize(SourceFile) ;
    while not Eof(SourceFile) do
    begin
      BlockRead(SourceFile,buf,1);
      BlockWrite(TargetFile,buf,1);
      pb1.Position:=filesize(targetfile);
    end;

  finally
  CloseFile(SourceFile);
  CloseFile(TargetFile);
  end;   
end;

end.
