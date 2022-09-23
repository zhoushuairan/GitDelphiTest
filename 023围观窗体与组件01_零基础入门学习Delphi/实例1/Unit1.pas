unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PopupMenu1: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
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
  ShowMessage('仓老师说：学编程，到鱼C！');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  ShowMessage('苍老师说：学编程，到鱼C！');
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Close;
end;

end.
