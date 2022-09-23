unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    dlgOpen1: TOpenDialog;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
begin
  if dlgOpen1.Execute then
    edt1.Text:=dlgOpen1.FileName;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  str:string;
begin
  if(Trim(edt1.Text)<>'') then
  begin
    str:=Copy(Trim(edt2.Text),0,1);
    if(str='.') then
      ShowMessage('修改扩展名后文件如下: '+ChangeFileExt(edt1.Text,Trim(edt2.Text)))
    else
      ShowMessage('修改扩展名后文件如下: '+ChangeFileExt(edt1.Text,'.'+Trim(edt2.Text)));
  end
  else
    showmessage('请输入正确的文件名');
end;

end.
