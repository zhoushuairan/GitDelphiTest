unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,Printers;

type
  TForm1 = class(TForm)
    tv1: TTreeView;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DumpTreeviewtoTextFile(var F:TextFile;tree:TTreeview);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.DumpTreeviewtoTextFile(var F: TextFile; tree: TTreeview);
var
  node:TTreeNode;
begin
  node:=tree.Items.GetFirstNode;
  while node<> nil do
  begin
    Writeln(F,StringOfChar(' ',2*node.Level),node.text);
    node:=node.GetNext;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  F:TextFile;
begin
  AssignPrn(F);
  Rewrite(F);
  try
    DumpTreeviewtoTextFile(f,tv1);
  finally
    CloseFile(F);
  end;
end;

end.
