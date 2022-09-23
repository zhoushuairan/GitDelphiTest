unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    tv1: TTreeView;
    mmo1: TMemo;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  nodes:TTreeNodes;
  node:TTreeNode;
begin
  tv1.Align:=alLeft;
  nodes:=tv1.Items;
  node:=nodes.Add(nil,'一连长');
  node := Nodes.AddChild(node, '一排长');
  node := Nodes.AddChild(node, '一班长');
  node := Nodes.AddChild(node, '战士1');
  Nodes.Add(node, '战士2');
  Nodes.Add(node, '战士3');
  Nodes.Add(node, '战士4');
  node := node.Parent;
  Nodes.Add(node, '二班长');
  Nodes.Add(node, '三班长');
  node := node.Parent;
  Nodes.Add(node, '二排长');
  Nodes.Add(node, '三排长');
  node := node.Parent;
  Nodes.Add(node, '二连长');
  Nodes.Add(node, '三连长');
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  i:Integer;
begin
  mmo1.Clear;
  for i:=0 to tv1.Items.Count-1 do
    mmo1.Lines.Add(tv1.items[i].Text);
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i:Integer;
  s:string;
begin
  mmo1.Clear;
  for i:=0 to tv1.Items.count-1 do
  begin
    s:=stringofchar(#9,tv1.Items[i].Level);
    s:=s+tv1.Items[i].Text+' '+Inttostr(tv1.Items[i].Level);

    mmo1.Lines.Add(s);
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  i:Integer;
  s:string;
begin
  mmo1.Clear;
  for i:=0 to tv1.Items.count-1 do
  begin
    s:=stringofchar(#32,tv1.Items[i].level*4);
    s:=s+tv1.Items[i].Text;
    mmo1.Lines.Add(s);
  end;
end;

end.
