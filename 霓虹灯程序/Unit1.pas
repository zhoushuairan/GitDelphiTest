unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Font.Size:=Random(50);
  Form1.Left:=Random(1300);
  Form1.Top:=Random(800);

  Case(Random(8))     of
  0:Label1.color:=clRed;
  1:Label1.color:=clTeal;
  2:Label1.color:=clPurple;
  3:Label1.color:=clLime;
  4:Label1.color:=clAqua;
  5:Label1.color:=clBlue;
  6:Label1.color:=clYellow;
  7:Label1.color:=clFuchsia;
  end;
  Case(Random(8))     of
  0:Label1.Font.Color:=clRed;
  1:Label1.Font.Color:=clTeal;
  2:Label1.Font.Color:=clPurple;
  3:Label1.Font.Color:=clLime;
  4:Label1.Font.Color:=clAqua;
  5:Label1.Font.Color:=clBlue;
  6:Label1.Font.Color:=clYellow;
  7:Label1.Font.Color:=clFuchsia;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.AutoSize:=True;
  Label1.AutoSize:=True;
end;

end.
