unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    mmo2: TMemo;
    btn1: TButton;
    btn2: TButton;
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
   //���Զѵ��ڴ�ռ�����
procedure TForm1.btn1Click(Sender: TObject);
var
  myHeap: THandle;
  mem: TMemoryStatus;
  m1, m2, m3: DWORD;
begin
  {��ȡ��ǰ�ڴ����״̬}
  GlobalMemoryStatus(mem);
  m1 := mem.dwAvailPhys;
  m1 := mem.dwAvailPhys;     {���������ڴ�}
  m2 := mem.dwAvailPageFile; {���������ڴ�}
  m3 := mem.dwAvailVirtual;  {���������ַ}
    {����˽�ж�}
  myHeap := HeapCreate(0, 1024 * 1024, 0);
    {�ڻ�ȡ��ǰ�ڴ���õ�״̬}
  GlobalMemoryStatus(mem);
  m1 := m1 - mem.dwAvailPhys;
  m2 := m2 - mem.dwAvailPageFile;
  m3 := m3 - mem.dwAvailVirtual;

    {��ʾ��ռ���ڴ����}
  mmo1.Clear;
  mmo1.Lines.Add(Format('ռ�������ڴ棺%d K', [m1 div 1024]));
  mmo1.Lines.Add(Format('ռ�������ڴ棺 %d K', [m2 div 1024]));
  mmo1.Lines.Add(Format('ռ�������ַ�� %d K', [m3 div 1024]));

  //�ͷŶ�
  HeapDestroy(myHeap);
end;

//ͬ�ϸ�����, ��Ӳ��Խ�����ʱҳ��������
procedure TForm1.btn2Click(Sender: TObject);
var
  MyHeap: THandle;
  mem: TMemoryStatus;
  m1, m2, m3: DWORD;
begin
  GlobalMemoryStatus(mem);
  m1 := mem.dwAvailPhys;
  m2 := mem.dwAvailPageFile;
  m3 := mem.dwAvailVirtual;

  {���� 1M + 1�ֽ� ��С�Ķ�, ��ʵ�ʴ�С�ᰴҳ����, ���Ӧ����: 1M + 4K}
  MyHeap := HeapCreate(0, 1024 * 1204 + 1, 0);

  GlobalMemoryStatus(mem);
  m1 := m1 - mem.dwAvailPhys;
  m2 := m2 - mem.dwAvailPageFile;
  m3 := m3 - mem.dwAvailVirtual;

  mmo2.Clear;
  mmo2.Lines.Add(Format('ռ�������ڴ�: %d K', [m1 div 1024]));
  mmo2.Lines.Add(Format('ռ�������ڴ�: %d K', [m2 div 1024]));
  mmo2.Lines.Add(Format('ռ�������ַ: %d K', [m3 div 1024]));

  HeapDestroy(MyHeap);
end;

end.

