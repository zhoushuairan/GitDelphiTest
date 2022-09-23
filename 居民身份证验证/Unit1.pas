unit Unit1;

interface
uses
  Controls,SysUtils,Windows,Messages;
function IDCard(IDNumber:string; var BirthYear,BirthMonth,BirthDay:Integer):Boolean; stdcall;
function sexCheck(IDNumber:string):PChar;stdcall;
function AddCheck(IDNumber:string):PChar;stdcall;
implementation
function  IDCheck(ID:string):string;
const
  W:Array[1..17] of Integer = (7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2);
  A:Array[0..10] of Char=('1','0','x','9','8','7','6','5','4','3','2');
var
  i,j,s:Integer;
  newID:string;
begin
    newID:=ID;
    s:=0;
  for i:=1 to 17 do
    begin
      j:=strtoint(newID[i])*W[i];
      s:=s+j;
    end;
  s:=s mod 11;
  Result:=A[s];
end;
function IDCard(IDNumber:string; var BirthYear,BirthMonth,BirthDay:Integer):Boolean; stdcall;
begin
  if Length(IDNumber)<18 then
  begin
    BirthYear:=-1;
    Result:=False;
  end
  else if IDCheck(IDNumber) =Copy(IDNumber,18,1) then
  begin
    BirthYear:=StrToInt(Copy(IDNumber,7,4));
    BirthMonth:=StrToInt(Copy(IDNumber,11,2));
    BirthDay:=StrToInt(Copy(IDNumber,13,2));
    Result:=True;
  end
  else
    Result:=False;
end;

function sexCheck(IDNumber:string):PChar;stdcall;
var
  i:string;
begin
  i:=Copy(IDNumber,17,1);
  if StrToInt(i) mod 2 =1  then
      Result:='男'
  else
      Result:='女';
end;

function AddCheck(IDNumber:string):PChar;stdcall ;
var
  f1:TextFile;
  str1,str2,str3,str4:string;
begin
  AssignFile(F1,'data.txt');
  Reset(f1);
  try
    Readln(f1);
    while not Eof(f1) do
    begin
      if str1 =(Copy(IDNumber,1,2)+'0000') then
      begin
        Readln(f1,str2);
      end;
      if str1= (Copy(IDNumber,1,4)+'00') then
      begin
        Readln(f1,str3);
      end;
      if str1=Copy(IDNumber,1,6) then
      begin
         readln(f1,str4);
         Result:=PChar(str2+' '+str3+' '+str4);
         Exit;
      end;
      Readln(f1,str1);
    end;
    Result:='输入不合法，请重输入';
  finally
    CloseFile(f1);
  end;
end;
end.
 