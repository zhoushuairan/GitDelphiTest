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
   //测试堆的内存占用情况
procedure TForm1.btn1Click(Sender: TObject);
var
  myHeap: THandle;
  mem: TMemoryStatus;
  m1, m2, m3: DWORD;
begin
  {获取当前内存可用状态}
  GlobalMemoryStatus(mem);
  m1 := mem.dwAvailPhys;
  m1 := mem.dwAvailPhys;     {可用物理内存}
  m2 := mem.dwAvailPageFile; {可用虚拟内存}
  m3 := mem.dwAvailVirtual;  {可用虚拟地址}
    {建立私有堆}
  myHeap := HeapCreate(0, 1024 * 1024, 0);
    {在获取当前内存可用的状态}
  GlobalMemoryStatus(mem);
  m1 := m1 - mem.dwAvailPhys;
  m2 := m2 - mem.dwAvailPageFile;
  m3 := m3 - mem.dwAvailVirtual;

    {显示堆占用内存情况}
  mmo1.Clear;
  mmo1.Lines.Add(Format('占用物理内存：%d K', [m1 div 1024]));
  mmo1.Lines.Add(Format('占用虚拟内存： %d K', [m2 div 1024]));
  mmo1.Lines.Add(Format('占用虚拟地址： %d K', [m3 div 1024]));

  //释放堆
  HeapDestroy(myHeap);
end;

//同上个过程, 外加测试建立堆时页对齐的情况
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

  {建立 1M + 1字节 大小的堆, 但实际大小会按页对齐, 结果应该是: 1M + 4K}
  MyHeap := HeapCreate(0, 1024 * 1204 + 1, 0);

  GlobalMemoryStatus(mem);
  m1 := m1 - mem.dwAvailPhys;
  m2 := m2 - mem.dwAvailPageFile;
  m3 := m3 - mem.dwAvailVirtual;

  mmo2.Clear;
  mmo2.Lines.Add(Format('占用物理内存: %d K', [m1 div 1024]));
  mmo2.Lines.Add(Format('占用虚拟内存: %d K', [m2 div 1024]));
  mmo2.Lines.Add(Format('占用虚拟地址: %d K', [m3 div 1024]));

  HeapDestroy(MyHeap);
end;

end.

