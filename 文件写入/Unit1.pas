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
    lbl2: TLabel;
    edt2: TEdit;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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
  SFilename,DFilename:string;
  F1,F2:TextFile;
  ch: Char;
begin
  if dlgSave1.Execute then
    begin
      edt2.text:=dlgSave1.FileName;
      SFilename:=edt2.Text;
      DFilename:=edt2.Text+'.txt';
      if Length(SFilename) <> 0 then
        begin
          AssignFile(F1,SFilename);
          Reset(F1);
          if Length(DFilename) <> 0 then
            begin
              AssignFile(F2,DFilename);
              Rewrite(F2);
              while not Eof(F1) do
              begin
                read(F1,ch);
                write(ch);
              end;
              CloseFile(F2);
            end
            else
              ShowMessage('目标文件必须输入');
        CloseFile(F1);
        ShowMessage('文件复制完成');
        end
        else
          ShowMessage('源文件必须输入');
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dlgOpen1.Filter:='TXT FILES(*.TXT)|*.txt';
  dlgSave1.Filter:='TXT FILES(*.TXT)|*.txt';
end;

end.
