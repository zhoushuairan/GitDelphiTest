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
  object lbl1: TLabel
    Left = 176
    Top = 72
    Width = 60
    Height = 13
    Caption = #36873#25321#39537#21160#22120
  end
  object lbl2: TLabel
    Left = 184
    Top = 128
    Width = 337
    Height = 13
    Caption = 'lbl2'
  end
  object lbl3: TLabel
    Left = 184
    Top = 176
    Width = 345
    Height = 13
    Caption = 'lbl3'
  end
  object cbb1: TComboBox
    Left = 256
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbb1'
    Items.Strings = (
      'C:\'
      'G:\'
      'D:\'
      'E:\'
      'F:\'
      'I:\')
  end
  object btn1: TButton
    Left = 280
    Top = 216
    Width = 75
    Height = 25
    Caption = #26174#31034
    TabOrder = 1
    OnClick = btn1Click
  end
end
