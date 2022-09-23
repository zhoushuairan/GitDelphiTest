unit TimeEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TTimeEditForm = class(TForm)
    dtp1: TDateTimePicker;
    btn1: TButton;
    btn2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimeEditForm: TTimeEditForm;

implementation

{$R *.dfm}

end.
