unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    procedure rb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.rb1Click(Sender: TObject);
begin
  if(Sender=rb1) then
    Form1.Color:=clRed
  else if(Sender=rb2) then
    form1.color:=clGreen
  else if(Sender=rb3) then
    form1.Color:=clBlue
  else  if(Sender=rb4) then
    Form1.Color:=clYellow
  else if(Sender=rb5) then
    form1.color:=clPurple
  else if(Sender=rb6) then
    form1.Color:=clWhite;
end;

end.
