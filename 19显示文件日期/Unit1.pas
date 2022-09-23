unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    drvcbb1: TDriveComboBox;
    dirlst1: TDirectoryListBox;
    fllst1: TFileListBox;
    mmo1: TMemo;
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
  s1:string;
  FStruct:TOFStruct;
  TheDate:TDateTime;
  Han1,I:Integer;
begin
  try
    s1:=fllst1.FileName;
    Han1:=OpenFile(PChar(s1),FStruct,OF_SHARE_DENY_NONE);
    I:=FileGetDate(Han1);
    TheDate:=FileDateToDateTime(I);
    mmo1.Lines.Text:=' '+s1+'的日期是：'+DateTimeToStr(TheDate);
    _lclose(Han1);
    except
      on Exception do
        ShowMessage('请选择一个文件');
    end;
end;

end.
