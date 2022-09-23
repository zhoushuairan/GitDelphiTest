unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R extra.res}
procedure TForm1.FormCreate(Sender: TObject);
begin
  Screen.Cursors[1]:=LoadCursor(HInstance,pchar('malet'));
  Screen.Cursors[2]:=LoadCursor(HInstance,PChar('maletdown'));
  
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  Screen.Cursors[crmaletup]:=LoadCursor(HInstance,'malet');
  Screen.Cursors[crmaletdown]:=LoadCursor(HInstance,'maletdown');
  Screen.Cursor:=TCursor(crmaletup);

end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if(Button=mbleft) then
    Screen.Cursor:=GetCursor(crmaletdown)
  else if(Button=mbright) then
    Screen.Cursor:=GetCursor(crmaletdown);
end;

end.
 