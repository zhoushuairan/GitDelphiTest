unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }

  protected
    procedure WMCancelMode(var message: TWMCancelMode); message wm_cancelmode;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  mmo1.Align := alLeft;
  mmo1.ScrollBars := ssVertical;
  mmo1.Clear;
  Position := poScreenCenter;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  ShowMessage('showmessage');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  InputBox('inputBox', 'input', '');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  MessageBox(Handle, 'Test', 'messageBox', 0);
end;

procedure TForm1.btn4Click(Sender: TObject);
var
  form: TForm;
begin
  form := TForm.Create(Self);
  form.Caption := 'test';
  form.Width := Width div 2;
  form.Height := Height div 2;
  form.Position := poDesktopCenter;
  form.ShowModal;
end;

procedure TForm1.WMCancelMode(var message: TWMCancelMode);
begin
  mmo1.Lines.Add(' ’µΩ');
  message.Result := 0;
end;

end.

