object Form1: TForm1
  Left = 333
  Top = 131
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 160
    Top = 72
    Width = 111
    Height = 13
    AutoSize = False
    Caption = #24180#20221#65288'2000-2050'#65289#65306
  end
  object lbl2: TLabel
    Left = 160
    Top = 104
    Width = 111
    Height = 13
    AutoSize = False
    Caption = #26376#20221#65306
  end
  object lbl3: TLabel
    Left = 288
    Top = 104
    Width = 65
    Height = 13
    AutoSize = False
    Color = clSkyBlue
    ParentColor = False
  end
  object Gauge1: TGauge
    Left = 224
    Top = 200
    Width = 401
    Height = 177
    Progress = 0
  end
  object se1: TSpinEdit
    Left = 288
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 2000
    OnChange = se1Change
  end
  object pb1: TProgressBar
    Left = 240
    Top = 168
    Width = 150
    Height = 17
    TabOrder = 1
  end
  object cal1: TCalendar
    Left = 248
    Top = 208
    Width = 320
    Height = 120
    StartOfWeek = 0
    TabOrder = 2
    UseCurrentDate = False
  end
end
