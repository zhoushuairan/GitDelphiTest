unit DDGReg;

interface

uses
  classes, Qcustomlabel1, DesignIntf,clockPE,clockEditor;

procedure Register;

implementation
procedure Register;
begin

  RegisterComponents('SuperClock', [tcustomlabel1]);
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'state');
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'active');
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'begintime');
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'waketime');
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'allowwake');
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'onwakeup');
  RegisterPropertyInCategory('clockpro', tcustomlabel1, 'ontimeup');

  RegisterPropertyEditor(TypeInfo(TBeginTime),tcustomlabel1,'begintime',TClockProperty);
  RegisterComponentEditor(tcustomlabel1,TClcokEditor);
end;

end.

