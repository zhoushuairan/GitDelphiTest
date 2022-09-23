unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PointTrain;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.PointTrain;
var
  str:array[1..15] of Char;
  pstr:PChar;
begin
  StrCopy(@Str,'abcdeee');
  StrCat(@str,'_testok');
  GetMem(pstr,SizeOf(Char)*15);
  StrCopy(pstr,@str);
  write(pstr);
  FreeMem(pstr);
end;

end.
 