unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getCurrentDirectory:String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Text:=getCurrentDirectory;
end;

function TForm1.getCurrentDirectory: String;
var
  nBufferLength:DWORD;
  lpBuffer:PChar;
begin
    nBufferLength:=MAX_PATH+1;
    result:='';
    GetMem(lpBuffer,nBufferLength);
    try
      if Windows.GetCurrentDirectory(nBufferLength,lpBuffer)>0 then
        result:=lpBuffer;
    finally
      FreeMem(lpBuffer);
    end;
end;

end.
