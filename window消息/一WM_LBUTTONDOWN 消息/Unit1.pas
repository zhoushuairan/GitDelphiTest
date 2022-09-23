unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  protected
    {这句的输入方法: Ctrl+空格; 输入 moused 确认; 然后执行 Shift+Ctrl+C}
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer); override;
    {这句的输入方法: Ctrl+空格; 输入 wmlbuttondo 确认; 然后执行 Shift+Ctrl+C}
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  mmo1.Clear;
end;

procedure TForm1.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  mmo1.Lines.Add('mouseDown');
end;

procedure TForm1.WMLButtonDown(var Message: TWMLButtonDown);
begin
  mmo1.Lines.Add('wm_Lbuttondown');
  inherited;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mmo1.Lines.Add('onMouseDown');
end;

end.
