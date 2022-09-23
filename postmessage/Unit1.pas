unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edt1: TEdit;
    tv1: TTreeView;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var
  hNotePad: HWND;
  hedit: HWND;

constructor TForm1.create(AOwner: TComponent);
begin
  inherited;
  mmo1.Text := '这是谁的宝剑，刺穿了Postmessage';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  hNotePad := FindWindow('Notepad', '无标题-记事本');
  if hNotePad <> 0 then
  begin
    hedit := FindWindowEx(hNotePad, 0, 'edit', nil);
    PostMessage(hedit, WM_CHAR, wparam('B'), 0);
    Writeln('send');
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  hNotePad := FindWindow(nil, '无标题 – 记事本');
  if hNotePad <> 0 then
  begin
    hedit := FindWindowEx(hNotePad, 0, 'edit', nil);
    SendMessage(hedit, WM_SETTEXT, Length(mmo1.Text), Integer(PChar(mmo1.Text)));
    Writeln('send');
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  hNotePad := FindWindow('Notepad', '无标题 – 记事本');
  if hNotePad <> 0 then
  begin
    hedit := FindWindowEx(hNotePad, 0, 'edit', nil);
    PostMessage(hedit, WM_CHAR, Wparam($bd), 0);
    PostMessage(hedit, WM_CHAR, Wparam($f1), 0);
    Writeln('send');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  catNode:TTreeNode;
begin

  CatNode   :=   tv1.Items.AddChild(
  tv1.Items.GetFirstNode,'New Category'   );
  CatNode.ImageIndex   :=   2;
  CatNode.SelectedIndex   :=   2;
  CatNode.EditText;

  end;
 end.




