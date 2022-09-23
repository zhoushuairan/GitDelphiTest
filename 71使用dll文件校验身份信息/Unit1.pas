unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    medt1: TMaskEdit;
    btn1: TButton;
    btn2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckPassword;Boolean;export;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
