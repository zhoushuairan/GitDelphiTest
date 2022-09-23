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

  prec1 := @rec; {把rec的地址告诉prec1}

  ShowMessage(prec1^.name);
  ShowMessage(prec1.name);

   {如果我们通过指针修改了数据}
  PRec1.name := '李四';

  {那么}
  ShowMessage(Rec.name); {李四}
  {因为 PRec1 和 Rec 所指的是同一个数据}

end;

//如果是单独使用指针, 必须先给内存
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
  Rec.name := '孙六';
  Rec.age := 16;

  {把 Rec 的地址给属于 ^Rec 类型的 PRec3 指针}
  PRec3 := @Rec;
  ShowMessage(PRec3.name); {孙六}
  {如果要把 PRec3 知道的值告诉 PRec1, 需要类型转换}
  PRec1 := TPRec(PRec3);
  ShowMessage(PRec1.name); {孙六}
  {反过来想, 如果要把 PRec1 知道的值告诉 PRec3 呢?}
  Rec.name := '赵七';
  Rec.age := 24;
  PRec1 := @Rec;
  ShowMessage(PRec1.name); {赵七}
  {这样转换}
  TPRec(PRec3) := PRec1;
  ShowMessage(PRec3.name); {赵七}

end;

//用无类型指针读写 TRec 中的数据
procedure TForm1.btn4Click(Sender: TObject);
begin
  Rec.name := '杜八';
  Rec.age := 36;

  P := @Rec;

  {赋值}
  TPRec(P).name := '侯九';

  {取值}
  ShowMessage(TPRec(P).name); {侯九}

end;

end.

