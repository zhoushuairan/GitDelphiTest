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
  object cbb1: TComboBox
    Left = 328
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbb1'
    OnClick = cbb1Click
    Items.Strings = (
      '11'
      '22'
      '33'
      '44'
      '5'
      '44'
      '6')
  end
  object cbb2: TComboBox
    Left = 576
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'cbb1'
    OnChange = cbb2Change
  end
end
