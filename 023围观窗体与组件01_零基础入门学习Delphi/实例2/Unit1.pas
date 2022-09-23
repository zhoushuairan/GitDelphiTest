unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ActnList;

type
  TForm1 = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PopupMenu1: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  ShowMessage('—ß±‡≥Ã£¨µΩ”„C!');
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
  Close;
end;

end.
