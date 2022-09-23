unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TypInfo, ExtCtrls, DBClient, MidasCon, MConnect;

type
  TForm1 = class(TForm)
    lst1: TListBox;
    lst2: TListBox;
    lst3: TListBox;
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
//���������ƣ�����̬������Ӧ���ʵ��
function CreatAClass(const AClassName: string): TObject;
var
  C: TFormClass;
  SomeObject: TObject;
begin
  C := TFormClass(FindClass(AClassName));
  SomeObject := C.Create(nil);
  Result := SomeObject;
end;

procedure GetBaseClassInfo(AClass: TObject; AStrings: Tstrings);
var
  ClassTypeInfo: PTypeInfo; //����ʱ������Ϣ�ṹ��ָ��
  ClassTypeData: PTypeData; //����ʱ������Ϣ��ʵ���Ǵ������TypeData�䳤�ṹ֮��
  EnumName: string; //ö�����͵�����
begin
  ClassTypeInfo := AClass.classinfo;
  ClassTypeData := GetTypeData(ClassTypeInfo);

  with AStrings do
  begin
    Add(Format('Class Name:   %s', [ClassTypeInfo.Name]));
    EnumName := GetEnumName(TypeInfo(TTypekind), Integer(ClassTypeInfo.kind));
    Add(Format('Kind:      %s', [EnumName]));
    Add(Format('Size:      %d', [AClass.InstanceSize])); //��ʵ���ֽ�
    Add(Format('Defined in: %s.pas', [ClassTypeData.UnitName])); //�ඨ�����ĸ���Ԫ��
    Add(Format('Num properties: %d', [ClassTypeData.PropCount])); //�������е�������Ŀ
  end;
end;

//ȡ��ѡ�������������Ϣ
procedure GetClassAncestor(AClass: TObject; AStrings: TStrings);
var
  AncestorClass: TClass;
begin
  AncestorClass := AClass.ClassParent; //����ȡ��aclass��ĸ����
  AStrings.Add('Class Ancestor');
  while AncestorClass <> nil do
  begin //����ѭ����ֱ���Ҳ������༶��
    AStrings.Add(Format('    %s', [AncestorClass.ClassName]));
    AncestorClass := AncestorClass.ClassParent; //����Ϊ�Լ��ĸ���
  end;
end;

//ȡ���۵�����
procedure GetClassProperties(AClass: TObject; Astrings: TStrings);
var
  PropList: PPropList; //����propinfo�ṹ֯�������
  ClassTypeInfo: PTypeInfo;
  CLassTypeData: PTypeData;
  i, numProps: Integer;
begin
  ClassTypeInfo := AClass.ClassInfo;
  CLassTypeData := GetTypeData(ClassTypeInfo);

  if CLassTypeData.PropCount <> 0 then
  begin
    GetMem(PropList, SizeOf(PPropInfo) * CLassTypeData.PropCount);
    try
      GetPropInfos(AClass.ClassInfo, PropList); //ȡ�����Ե������Ϣ
      for i := 0 to CLassTypeData.PropCount - 1 do
        if not (PropList[i]^.PropType^.Kind = tkMethod) then
        begin //�������ʱ������
          Astrings.Add(Format('%s : %s', [PropList[i]^.Name, PropList[i]^.PropType^.Name]));
        end;

      numProps := GetPropList(AClass.ClassInfo, [tkMethod], PropList);
      if numProps <> 0 then
      begin
        Astrings.Add('');
        Astrings.Add(' EVENT =================');
        Astrings.add('');
      end;

      for i := 0 to numProps - 1 do
      begin
        Astrings.add(Format('%s : %s', [PropList[i]^.Name, PropList[i]^.PropType^.Name]));
      end;
    finally
      FreeMem(PropList, SizeOf(PPropInfo) * CLassTypeData.PropCount);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  font := Screen.IconFont;
  lst1.Items.Add('TApplication');
  lst1.Items.Add('TButton');
  lst1.Items.Add('TForm');
  lst1.Items.Add('TListBox');
  lst1.Items.Add('Tpaintbox');
  lst1.Items.Add('TMidasConnection');
  lst1.Items.Add('TFindDialog');
  lst1.Items.Add('TOpenDialog');
  lst1.Items.Add('TTimer');
  lst1.Items.Add('Tcomponent');
  lst1.Items.Add('TGraphicControl');

end;

procedure TForm1.lst1Click(Sender: TObject);
var
  someComp: TObject;
begin
  lst2.Items.Clear;
  lst3.Items.Clear;

  someComp := CreatAClass(lst1.Items[lst1.Itemindex]);
  try
    GetBaseClassInfo(someComp, lst2.Items);
    GetClassAncestor(someComp, lst2.Items);
    GetClassProperties(someComp, lst3.Items);
  finally
    someComp.Free;
  end;

end;

initialization
  RegisterClasses([TApplication, TButton, TForm, TListBox, TPaintBox, TMidasConnection, TFindDialog, TOpenDialog, TTimer, TComponent, TGraphicControl]);

end.

