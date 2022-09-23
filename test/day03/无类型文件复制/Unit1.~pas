unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    pb1: TProgressBar;
    dlgOpen1: TOpenDialog;
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
  sourf,destf:string;
  SourseFile,DestFile:file;
  BytesRead,BytesWrite,TotalRead:Integer;
  buffer:array[1..500] of Byte;
  FSize:Integer;
begin
  if dlgOpen1.Execute then begin
    sourf:=dlgOpen1.FileName;
    destf:='d:\'+ExtractFileName(sourf);

    AssignFile(SourseFile,sourf);
    AssignFile(DestFile,destf);
    Reset(SourseFile,1);
    Rewrite(DestFile,1);

    TotalRead:=0;
    FSize:=filesize(SourseFile);

    repeat
      BlockRead(SourseFile,buffer,SizeOf(Buffer),BytesRead);
      if BytesRead>0 then begin
        BlockWrite(DestFile,buffer,BytesRead,byteswrite);
        if BytesRead<>BytesWrite then
          ShowMessage('sorry,file copy failed')
        else begin
          TotalRead:=totalread+bytesread;
          pb1.Position:=Trunc(TotalRead/fsize)*100;
          pb1.Update;
        end;
      end;

    until     BytesRead=0;

  end;
end;

end.
