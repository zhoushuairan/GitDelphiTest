unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    dlgOpen1: TOpenDialog;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    function FileLength(Filename:string):Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function TForm1.FileLength(Filename:string):Integer;
var
  f:file of Byte;
begin
  AssignFile(f,filename);
  Reset(f);
  Result:=FileSize(f);
  CloseFile(f);
end;
procedure TForm1.btn2Click(Sender: TObject);
var
  len:Integer;
begin
  len:=FileLength(dlgOpen1.FileName);
  ShowMessage('文本文件'+dlgOpen1.FileName+'的长度是'+IntToStr(len)+'字节');
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if(dlgOpen1.Execute) then
    edt1.Text:=dlgOpen1.FileName;
end;

end.
