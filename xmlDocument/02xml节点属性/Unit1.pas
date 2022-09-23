unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, msxmldom, XMLDoc, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    xml1: TXMLDocument;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  nodeList:IXMLNodeList;
  node:IXMLNode;
begin
  ShowMessage(IntToStr(xml1.DocumentElement.AttributeNodes.Count));
  ShowMessage(xml1.DocumentElement.Attributes['备注']);

  ShowMessage(xml1.DocumentElement.AttributeNodes[0].Text);
  ShowMessage(xml1.DocumentElement.AttributeNodes['备注'].Text);

  nodeList:=xml1.DocumentElement.AttributeNodes;
  node:=nodeList[0];
  ShowMessage(node.Text);
  node:=nodeList['备注'];
  ShowMessage(node.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xml1.LoadFromFile('G:\delphiTest\xmlDocument\1122.xml');
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  nodeList:IXMLNodeList;
  node:IXMLNode;
begin
  nodeList:=xml1.DocumentElement.ChildNodes;
  node:=nodeList[1];

  ShowMessage(IntToStr(node.AttributeNodes.Count));
  ShowMessage(node.Attributes['职务']);
  ShowMessage(node.AttributeNodes[0].Text);
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  nodeList: IXMLNodeList;
  node: IXMLNode;
  num,i: Integer;
begin
  nodeList := xml1.DocumentElement.ChildNodes;
  node := nodeList[1];
  num := node.AttributeNodes.Count;

  for i := 0 to num - 1 do
  begin
    ShowMessage(node.AttributeNodes[i].Text); {会分别显示: 科长 正局级}
  end;
end;


end.
