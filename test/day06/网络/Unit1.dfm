object Form1: TForm1
  Left = 280
  Top = 144
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 128
    Width = 10
    Height = 13
    Caption = 'IP'
  end
  object lbl2: TLabel
    Left = 96
    Top = 72
    Width = 60
    Height = 13
    Caption = #20027#26426#21517#31216#65306
  end
  object edt1: TEdit
    Left = 168
    Top = 69
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 168
    Top = 122
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 120
    Top = 232
    Width = 75
    Height = 25
    Caption = #21462#24471#20027#26426#21517#31216
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 320
    Top = 240
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 3
    OnClick = btn2Click
  end
end
