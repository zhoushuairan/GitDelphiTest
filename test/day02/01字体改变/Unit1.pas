unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    ColorBox1: TColorBox;
    lbl3: TLabel;
    lbl4: TLabel;
    cbb1: TComboBox;
    lst1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
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
  lst1.items:=Screen.Fonts;
end;

procedure TForm1.lst1Click(Sender: TObject);
begin
  lbl1.Font.Name  :=lst1.Items.Strings[lst1.itemindex];
end;

procedure TForm1.ColorBox1Change(Sender: TObject);
begin
  lbl1.Font.Color:=ColorBox1.Selected;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  lbl1.Font.Size:=cbb1.ItemIndex;
end;

end.
