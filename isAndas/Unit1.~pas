unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    procedure FormCreate(Sender: TObject);

  private
    procedure MyPro(Sender:TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  btn1.OnClick:=MyPro;
  edt1.OnClick:=MyPro;
end;

procedure TForm1.MyPro(Sender: TObject);
begin
  if Sender is TButton then
    ShowMessage((Sender as TButton).Caption);

  if Sender is (TEdit) then
    ShowMessage((Sender as TEdit).Text);
end;

end.
