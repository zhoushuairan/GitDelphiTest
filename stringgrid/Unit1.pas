unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ShellAPI, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
type
  Fishoil=record
    name: String;
    sex: string;
    age: Integer;
  end;
var
  i: Integer=1;

procedure TForm1.btn1Click(Sender: TObject);
var
    fishol:Fishoil;
begin
    if i<6 then
    begin
      fishol.name:=InputBox('�ǳ�','�������'+IntToStr(i)+'���˺�   ','');
      fishol.sex:=InputBox('�Ա�','�������'+IntToStr(i)+'���Ա�   ','');
      fishol.age:=strtoint(inputbox('����','�������'+IntToStr(i)+'������    ',''));
    with stringgrid1 do
      begin
        Cells[0,i]:=fishol.name;
        Cells[1,i]:=fishol.sex;
        Cells[2,i]:=IntToStr(fishol.age);
      end;
      Inc(i);
    end
    else
      showmessage('���������������������');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with StringGrid1 do
     begin
       Cells[0,0]:='�ǳ�';
       Cells[1,0]:='�Ա�';
       Cells[2,0]:='����';
     end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

end.
