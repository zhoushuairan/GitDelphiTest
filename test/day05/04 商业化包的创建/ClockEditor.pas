unit ClockEditor;

interface

uses
  DesignIntf, DesignEditors, Dialogs;

type
  TClcokEditor = class(TComponentEditor)
  public
    function GetVerbCount: Integer; override; //返回控件右键菜单中自定义菜单项的个数
    function GetVerb(Index: Integer): string; override;//给自定义菜单添加文本
    procedure executeVerb(index: Integer); override;//给菜单添加相应事件
    procedure edit; override;
  end;

implementation

{ TClcokEditor }

procedure TClcokEditor.edit;
begin
  inherited;
  executeVerb(1); //执行索引为1的菜单项功能
end;

procedure TClcokEditor.executeVerb(index: Integer);
begin
  inherited;

  case index of
    0:
      showmessage('hello 0');
    1:
      showmessage('hello 1');
  end;
end;

function TClcokEditor.GetVerb(Index: Integer): string;
begin

  case Index of
    0:
      Result := 'hello';
    1:
      Result := 'byebye';
  end;
end;

function TClcokEditor.GetVerbCount: Integer;
begin

  Result := 2;
end;

end.

