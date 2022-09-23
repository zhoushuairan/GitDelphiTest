unit ClockEditor;

interface

uses
  DesignIntf, DesignEditors, Dialogs;

type
  TClcokEditor = class(TComponentEditor)
  public
    function GetVerbCount: Integer; override; //���ؿؼ��Ҽ��˵����Զ���˵���ĸ���
    function GetVerb(Index: Integer): string; override;//���Զ���˵�����ı�
    procedure executeVerb(index: Integer); override;//���˵������Ӧ�¼�
    procedure edit; override;
  end;

implementation

{ TClcokEditor }

procedure TClcokEditor.edit;
begin
  inherited;
  executeVerb(1); //ִ������Ϊ1�Ĳ˵����
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

