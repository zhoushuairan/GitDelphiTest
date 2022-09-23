unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Qmemoextended, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    pnl1: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EMemo: tmemoextended;
    procedure OnScroll(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.OnScroll(Sender: TObject);
begin
  MessageBeep(0);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if not Assigned(EMemo) then
  begin
    EMemo := tmemoextended.Create(Self);
    EMemo.Parent := pnl1;
    EMemo.ScrollBars := ssBoth;
    EMemo.WordWrap := True;
    EMemo.Align := alClient;
    EMemo.OnHScroll := OnScroll;
    EMemo.OnVScroll := OnScroll;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if Assigned(EMemo) then
    ShowMessage(Format('Row: %d   column: %d', [EMemo.Row, EMemo.Column]));
  EMemo.SetFocus;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if Assigned(EMemo) then
  begin
    EMemo.Row := StrToInt(edt1.Text);
    EMemo.Column := StrToInt(edt2.Text);
    EMemo.SetFocus;
    EMemo.Action.OnUpdate;

  end;
end;

end.

