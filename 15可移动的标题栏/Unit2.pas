unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    cbb1: TComboBox;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, Unit3;

{$R *.dfm}
procedure TForm2.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  form1.lst1.Items.add(edt1.Text);
  form1.lst2.Items.add(edt2.Text);
  form1.lst3.Items.add(edt3.Text);
  form1.lst4.Items.add(cbb1.Text);
  form1.lst5.Items.add(edt4.Text);
  edt1.Text:='';
  edt2.Text:='';
  edt3.Text:='';
  cbb1.Text:='';
  edt4.Text:='';
end;

end.
