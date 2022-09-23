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
    dlgOpen1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
    sourf: string;
    UCase:Boolean;
  public
    { Public declarations }
    procedure changeFileCase;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  font := Screen.IconFont;
  UCase:=True;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
  begin
    sourf := dlgOpen1.FileName;
    mmo1.Lines.LoadFromFile(sourf);
  end;
end;

procedure TForm1.changeFileCase;
var
  FFileHandle: THandle;
  FMapHandle: THandle;
  FFileSize: Integer;
  FData: PByte;
  pData: PChar;
begin
  if sourf = '' then
  begin
    ShowMessage('��������ļ��������ǿ�ֵ����ѡ��һ���ļ������д���');
    Exit;
  end;

  if not FileExists(sourf) then
  begin
    ShowMessage('Ҫ������ļ������ڣ�������ѡ��');
    Exit;
  end;

  FFileHandle := FileOpen(sourf, fmOpenReadWrite);
  if FFileHandle = invalid_handle_value then
  begin
    raise Exception.Create('���ļ�ʧ��');
  end;

  try
    FFileSize := GetFileSize(FFileSize, nil);
    FMapHandle := CreateFileMapping(FFileHandle, nil, PAGE_READWRITE, 0, FFileSize, nil);
    if FMapHandle = 0 then
    begin
      raise Exception.Create('�����ļ�ӳ�����ʧ��');
    end;

  finally
    CloseHandle(FFileHandle);
  end;

  try
    FData := MapViewOfFile(FMapHandle, FILE_MAP_ALL_ACCESS, 0, 0, FFileSize);
    if FData = nil then
    begin
      raise Exception.Create('�ļ�ӳ�䵽�ڴ�ʧ��');
    end;
  finally
    CloseHandle(FMapHandle);

  end;

  try
    pData := PChar(FData);
    Inc(pData, FFileSize); //��ָ�����������ڴ�ӳ���ļ��Ľ�β����
    pData^ := #0;

    if UCase then
    begin
      StrUpper(PChar(FData))
    end
    else
    begin
      StrLower(PChar(FData));
    end;
  finally
     UnmapViewOfFile(FData);
  end;
  mmo1.Lines.Clear;
  mmo1.Lines.LoadFromFile(sourf);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  UCase:=True;
  changeFileCase;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  UCase:=False;
  changeFileCase;
end;

end.

