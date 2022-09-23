unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdActns, ActnList, StdCtrls, ImgList,Unit2, ADOConst;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    actlst1: TActionList;
    il1: TImageList;
    mmo1: TMemo;
    edtct1: TEditCut;
    edtcpy1: TEditCopy;
    edtpst1: TEditPaste;
    edtslctl1: TEditSelectAll;
    edtnd1: TEditUndo;
    edtdlt1: TEditDelete;
    N1: TMenuItem;
    N2: TMenuItem;
    O1: TMenuItem;
    C1: TMenuItem;
    P1: TMenuItem;
    N3: TMenuItem;
    Q1: TMenuItem;
    E1: TMenuItem;
    H1: TMenuItem;
    U1: TMenuItem;
    N4: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure Q1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
  mmo1.Text:='';
end;

procedure TForm1.Q1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

end.
