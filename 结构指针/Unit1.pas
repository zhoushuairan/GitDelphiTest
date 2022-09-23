unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
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
  TRec = record
    name: string[12];
    age: word;
  end;

  TPRec = ^TRec;

var
  rec: TRec;
  PRec1, PRec2: TPRec;
  PRec3: ^TRec;
  p: Pointer;

procedure TForm1.btn1Click(Sender: TObject);
begin
  rec.name := 'Zhang san';
  rec.age := 19;

  prec1 := @rec; {��rec�ĵ�ַ����prec1}

  ShowMessage(prec1^.name);
  ShowMessage(prec1.name);

   {�������ͨ��ָ���޸�������}
  PRec1.name := '����';

  {��ô}
  ShowMessage(Rec.name); {����}
  {��Ϊ PRec1 �� Rec ��ָ����ͬһ������}

end;

//����ǵ���ʹ��ָ��, �����ȸ��ڴ�
procedure TForm1.btn2Click(Sender: TObject);
begin
  GetMem(PRec2, SizeOf(Trec));
  PRec2.name := 'wangwu';
  PRec2.age := 9;

  ShowMessage(prec2.name);
  FreeMem(PRec2);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  Rec.name := '����';
  Rec.age := 16;

  {�� Rec �ĵ�ַ������ ^Rec ���͵� PRec3 ָ��}
  PRec3 := @Rec;
  ShowMessage(PRec3.name); {����}
  {���Ҫ�� PRec3 ֪����ֵ���� PRec1, ��Ҫ����ת��}
  PRec1 := TPRec(PRec3);
  ShowMessage(PRec1.name); {����}
  {��������, ���Ҫ�� PRec1 ֪����ֵ���� PRec3 ��?}
  Rec.name := '����';
  Rec.age := 24;
  PRec1 := @Rec;
  ShowMessage(PRec1.name); {����}
  {����ת��}
  TPRec(PRec3) := PRec1;
  ShowMessage(PRec3.name); {����}

end;

//��������ָ���д TRec �е�����
procedure TForm1.btn4Click(Sender: TObject);
begin
  Rec.name := '�Ű�';
  Rec.age := 36;

  P := @Rec;

  {��ֵ}
  TPRec(P).name := '���';

  {ȡֵ}
  ShowMessage(TPRec(P).name); {���}

end;

end.

