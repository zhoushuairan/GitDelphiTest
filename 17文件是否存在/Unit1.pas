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
  handle:THandle;
  FindData:TWin32FindData;
  FileName:TFileName;
begin
  FileName:=edt1.Text;
  handle:=FindFirstFile(PChar(FileName),FindData);
  if handle <>Invalid_handle_value then
    MessageDlg('文件存在',mtInformation,[mbOK],0)
  else
    MessageDlg('文件不存在',mtInformation,[mbOK],0);
end;

end.
