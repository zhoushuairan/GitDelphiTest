unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
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
  str1,str2:string;
  FreeSpace:Int64;
  totalspace:Int64;
begin
  FreeSpace:=DiskFree(cbb1.ItemIndex+1);
  totalspace:=DiskSize(cbb1.ItemIndex+1);
  str1:='������'+cbb1.Text+'�Ĵ��̿ռ������ǣ�'+IntToStr(totalspace div 1024)+'KB. ';
  str2:='����ʣ��ռ��ǣ�'+IntToStr(FreeSpace div 1024)+'KB';
  lbl2.Caption:=str1;
  lbl3.Caption:=str2;

end;

end.
