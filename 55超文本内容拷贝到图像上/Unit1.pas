unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  newitem:TMenuItem;
  i:Integer;
begin
  NewItem:=TMenuItem.Create(Self);
  newitem.Caption:='-';
  N1.Add(newitem);
  for i:=0 to Screen.FormCount-1 do
  begin
    newitem:=TMenuItem.Create(Self);
    newitem.Caption:=Screen.Forms[i].Name;
    n1.Add(NewItem);
  end;
end;

end.
