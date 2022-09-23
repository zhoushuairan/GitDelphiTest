unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpDefine, RpRave, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    RvProject1: TRvProject;
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
begin
  rvproject1.Execute;  
end;

end.
