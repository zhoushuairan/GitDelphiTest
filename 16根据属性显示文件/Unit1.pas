unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    strngrd1: TStringGrid;
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
  sr:TSearchRec;
  FiltAttr:Integer;
begin
  strngrd1.RowCount:=1;
  if chk1.Checked then
    FiltAttr:=faReadOnly
  else
    FiltAttr:=0;
  if chk2.Checked then
    FiltAttr:=FiltAttr+fahidden;
  if chk3.Checked then
    FiltAttr:=FiltAttr+fasysfile;
  if chk4.Checked then
    FiltAttr:=FiltAttr+favolumeId;
  if chk5.Checked then
    FiltAttr:=FiltAttr+fadirectory;
  if chk6.Checked then
    FiltAttr:=FiltAttr+faarchive;
  if chk7.Checked then
    FiltAttr:=FiltAttr+faanyfile;

  with strngrd1 do
  begin
    rowcount:=0;
    if FindFirst(edt1.Text,FiltAttr,sr)=0 then
    begin
      Cells[1,0]:='文件名';
      Cells[2,0]:='大小（k）';

      repeat
        if(sr.Attr and FiltAttr)=sr.Attr then
        begin
          RowCount:=rowcount+1;
          Cells[1,RowCount-1]:=sr.name;
          Cells[2,RowCount-1]:=IntToStr(sr.Size);
        end;
        until FindNext(sr)<>0;
        FindClose(sr);
    end;
  end;

end;

end.
