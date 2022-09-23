program ApplicationConsole;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Rtti, WinAPI.windows, System.SysUtils;

type
  // ������һ������
  TPackageProcedure = procedure(Num1, Num2: Integer); stdcall;

var
  Handle: HMODULE = 0;

var
  // ����һ���͵��õ��Ǹ������Ĳ�������ֵһ�µı���
  ShowMsg: function(Content: String): String; stdcall;
  PackageAdd: TPackageProcedure;

procedure LoadUnitPorcedure();
begin
  try
    try
      // ����Package
      Handle := LoadPackage('PackageDynamic.bpl');

      @ShowMsg := GetProcAddress(Handle, 'ShowMessage');
      // У�麯���Ƿ���ҳɹ�
      if @ShowMsg <> nil then
        Writeln(ShowMsg('Package�Ķ�̬����'));

      @PackageAdd := GetProcAddress(Handle, 'Add');
      // У�麯���Ƿ���ҳɹ�
      if @PackageAdd <> nil then
        PackageAdd(10, 20);
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;

  finally
    // ж��Package
    if Handle <> 0 then
      UnLoadPackage(Handle);

  end;
end;

begin
  try
    try
      // ��̬����Package
      Handle := LoadPackage('PackageDynamic.bpl');
      // ���������Ķ��󣬸ö����д洢�����������������Ϣ
      var
      Context := TRttiContext.Create;

      // ��ȡָ����class���ͣ�TRttiType
      var
      ClassType := Context.FindType('UnitDynamicClass.TUser');

      // ��ȡ����������ʵ��
      var
      Instance := ClassType.AsInstance;
      // ͨ��������ʵ����ȡ��������TClass
      var
      Metaclass := Instance.MetaclassType;

      // ��ȡ���췽���Ķ���:TRttiMethod
      var
      CreateMethod := Instance.GetMethod('Create');
      // ͨ�����췽������TUser����
      var
      User := CreateMethod.Invoke(Metaclass, []);

      var
      Msg := Instance.GetMethod('ShowMessage').Invoke(User, ['���䷽ʽ���ú���']);

      Writeln(Msg.AsString);
    except
      On E: Exception do
        Writeln(E.ClassName, ': ', E.Message);

    end;
  finally
    // ж��Package
    if Handle <> 0 then
      UnLoadPackage(Handle);

  end;
  readln;

end.
