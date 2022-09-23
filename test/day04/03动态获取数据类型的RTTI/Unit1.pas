unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TypInfo, MidasCon;

type
  TForm1 = class(TForm)
    lst1: TListBox;
    mmo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure lst1Click(Sender: TObject);
  private
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
  font := Screen.IconFont;
  with lst1.Items do
  begin
    AddObject('Integer', TypeInfo(Integer));
    AddObject('Byte', TypeInfo(Byte));
    AddObject('word', TypeInfo(word));
  end;
end;

procedure TForm1.lst1Click(Sender: TObject);
var
  OrdTypeInfo: PTypeInfo;
  OrdTypeData: PTypeData;
  TypeNameStr: string;
  TypeKindStr: string;
  MinVal, MaxVal: Integer;
begin
  mmo1.Lines.Clear;
  with lst1 do
  begin
    OrdTypeInfo := PTypeInfo(Items.Objects[ItemIndex]);
    OrdTypeData := GetTypeData(OrdTypeInfo);

    TypeNameStr := OrdTypeInfo.Name;
    TypeKindStr := GetEnumName(TypeInfo(TTypeKind), Integer(OrdTypeInfo^.Kind));

    MinVal := OrdTypeData^.MinValue;
    MaxVal := OrdTypeData^.MaxValue;

    with mmo1.Lines do
    begin
      Add('Type name: ' + TypeNameStr); //数据类型
      Add('kind name: ' + TypeKindStr);           //数据属性

      Add('Min Val: ' + inttostr(MinVal));              //数据最小值
      Add('Max Val: ' + IntToStr(MaxVal));                          //数据最大值
    end;
  end;
end;

end.

