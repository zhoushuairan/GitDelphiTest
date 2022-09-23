object Form1: TForm1
  Left = 252
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
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 240
    Top = 160
    Width = 65
    Height = 65
    Shape = stEllipse
  end
  object TrackBar1: TTrackBar
    Left = 272
    Top = 72
    Width = 150
    Height = 45
    Max = 5
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 408
    Top = 184
  end
end
