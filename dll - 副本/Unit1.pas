unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lst1: TListBox;
    lst2: TListBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function ListMoveF(var l1,l2:Integer):WordBool;export;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  i:Integer;
begin
  for i:=lst1.Count-1 downto 0 do
    if lst1.Selected[i] then
    begin
      lst2.Items.Add(lst1.Items.Strings[i]);
      lst1.Items.Delete(i);
    end;
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  i:Integer;
begin
  for i:=lst2.Count-1 downto 0 do
    if lst2.Selected[i] then
    begin
      lst1.Items.Add(lst2.Items.Strings[i]);
      lst2.Items.Delete(i);
    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  lst2.Items.AddStrings(lst1.Items);
  lst1.Clear;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
   lst1.Items.AddStrings(lst2.Items);
  lst2.Clear;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

function ListMoveF(var l1,l2:Integer):WordBool;
begin
  result:=False;
  form1:=TForm1.Create(Application);
  try
    if Form1.ShowModal=mrok then
      with Form1 do
      begin
        l1:=lst1.Items.Count;
        l2:=lst2.Items.Count;
        Result:=True;
      end;
  finally
    Form1.Free;
  end;
end;
end.
