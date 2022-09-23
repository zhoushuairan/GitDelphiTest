object Form1: TForm1
  Left = 192
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
  object mmo1: TMemo
    Left = 256
    Top = 152
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object btn1: TButton
    Left = 248
    Top = 288
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 352
    Top = 288
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 448
    Top = 288
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 3
    OnClick = btn3Click
  end
  object edt1: TEdit
    Left = 480
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edt1'
  end
  object tv1: TTreeView
    Left = 664
    Top = 128
    Width = 121
    Height = 97
    Indent = 19
    TabOrder = 5
    Items.Data = {
      020000001C0000000000000000000000FFFFFFFFFFFFFFFF0000000001000000
      033131311E0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      0531315F31311C0000000000000000000000FFFFFFFFFFFFFFFF000000000000
      000003323232}
  end
end
