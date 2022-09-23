unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    tv1: TTreeView;
    tv2: TTreeView;
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  btn1.Caption:='ת��';
  btn2.Caption:='�ط�';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if Boolean(tv1.Items.count)then
  begin
    tv2.Items:=tv1.Items;
    tv1.Items.Clear;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  nodes:TTreeNodes;
begin
  Nodes:=tv2.items;

  if Boolean(nodes.Count)then
  begin
    tv1.Items:=nodes;
    tv2.Items.Clear;
  end;  
end;

end.
