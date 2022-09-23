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
    Left = 216
    Top = 208
    Width = 36
    Height = 13
    Caption = #21407#20018#65306
  end
  object lbl2: TLabel
    Left = 416
    Top = 208
    Width = 48
    Height = 13
    Caption = #26367#20195#20018#65306
  end
  object lbl3: TLabel
    Left = 216
    Top = 264
    Width = 84
    Height = 13
    Caption = #36873#25321#26367#25442#26041#24335#65306
  end
  object mmo1: TMemo
    Left = 248
    Top = 40
    Width = 241
    Height = 129
    Lines.Strings = (
      'mmo1')
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 272
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 472
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 312
    Top = 256
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbb1'
    Items.Strings = (
      #26367#25442
      #26367#25442#25152#26377
      #24573#30053#22823#23567#20889
      #26367#25442#25152#26377#65292#24182#24573#30053#22823#23567#20889)
  end
  object btn1: TButton
    Left = 320
    Top = 304
    Width = 75
    Height = 25
    Caption = #26367#25442
    TabOrder = 4
    OnClick = btn1Click
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 912
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 5
  end
end
