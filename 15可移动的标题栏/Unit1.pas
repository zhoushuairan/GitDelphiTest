unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    HeaderControl1: THeaderControl;
    lst1: TListBox;
    lst2: TListBox;
    lst3: TListBox;
    lst4: TListBox;
    lst5: TListBox;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure HeaderControl1SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3;
{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.HeaderControl1SectionResize(HeaderControl: THeaderControl;
  Section: THeaderSection);
begin
  lst1.width:=HeaderControl.Sections.Items[0].Width;
  lst2.left:=lst1.Left+lst1.Width;
  lst2.width:=HeaderControl.Sections.Items[1].Width;
  lst3.left:=lst2.Left+lst2.Width;
  lst3.width:=HeaderControl.Sections.Items[2].Width;
  lst4.left:=lst3.Left+lst3.Width;
  lst4.width:=HeaderControl.Sections.Items[3].Width;
  lst5.left:=lst4.Left+lst4.Width;
  lst5.width:=HeaderControl.Sections.Items[4].Width;
end;

end.
