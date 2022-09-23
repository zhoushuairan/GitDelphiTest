unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HideTitleBar;
    procedure SHowTitleBar;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.HideTitleBar;
var
  Save:LongInt;
begin
  if BorderStyle=bsNone then Exit;
  Save:=GetWindowLong(Handle,GWL_STYLE);
  if (Save and ws_caption)=ws_caption then
  begin
    case BorderStyle of
      bsSingle,
      bsSizeable: SetWindowLong(handle,GWL_STYLE,Save and (not(WS_CAPTION))or WS_BORDER);
      bsDialog:SetWindowLong(Handle,GWL_STYLE,Save and (not(WS_CAPTION))or DS_MODALFRAME or WS_DLGFRAME);
    end;
    Height:=Height-getSystemMetrics(SM_CYCAPTION);
    Refresh;
  end;
end;

procedure TForm1.SHowTitleBar;
var
  save:LongInt;
begin
  if BorderStyle=bsNone then exit;
  save:=GetWindowLong(handle,GWL_STYLE);
  if(save and ws_caption)<>ws_caption then
  begin
    case BorderStyle of
      bsSingle,
      bsSizeable:SetWindowLong(Handle,GWL_STYLE,save or WS_CAPTION or WS_BORDER);
      bsDialog:SetWindowLong(Handle,GWL_STYLE,save or WS_CAPTION or DS_MODALFRAME or WS_DLGFRAME);
    end;
    Height:=Height+getSystemMetrics(SM_CYCAPTION);
    Refresh;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  HideTitleBar;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  SHowTitleBar;
end;

end.
