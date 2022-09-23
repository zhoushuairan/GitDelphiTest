unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    cbb1: TComboBox;
    cbb2: TComboBox;
   // procedure cbb1Change(Sender: TObject);
    procedure cbb1Click(Sender: TObject);
    //procedure cbb2Click(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{procedure TForm1.cbb1Change(Sender: TObject);
const TempMax=30;
var
  i,a:Integer;
  item:TStrings;
  str:string;
begin
  str:='12345';
  if str='' then Exit;
  a:=item.IndexOf(str);
  ShowMessage(IntToStr(a));
  if a>0 then begin
    item.Insert(0,str);
    item.Delete(a+1);
  end;
  if a=-1 then begin
    item.Insert(0,str);
    for i:=item.Count-1 downto
     TempMax do
     begin
       item.Delete(i);
     end;
  end;


end; }

procedure TForm1.cbb1Click(Sender: TObject);
const
  TempMax = 30;
var
  i, a: Integer;
  item: TStrings;
  str: string;
begin
  str := '456';
  item := cbb1.Items;
  if str = '' then
    Exit;
  a := item.IndexOf(str);
  ShowMessage(IntToStr(a));
  if a > 0 then
  begin
    item.Insert(0, str);
    item.Delete(a + 1);
  end;
  if a = -1 then
  begin
    item.Insert(0, str);
    for i := item.Count - 1 downto TempMax do
    begin
      item.Delete(i);
    end;
  end;
end;

procedure TForm1.cbb2Change(Sender: TObject);
var
  i: Integer;
begin

  for i := 0 to 10 do
    cbb2.Items.Insert(i, '111');
//  cbb2.items.Delimiter:=',';
//  cbb2.Items.DelimitedText:='上海,北京,天津,周口';

end;

end.

