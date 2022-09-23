unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zsrplanets, halfminute;

type
  TForm1 = class(TForm)
    HalfMinute1: THalfMinute;
    procedure HalfMinute1HalfMinute(Sender: TObject; TheTime: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.HalfMinute1HalfMinute(Sender: TObject; TheTime: TDateTime);
begin
  ShowMessage('i will do message');
end;

end.

