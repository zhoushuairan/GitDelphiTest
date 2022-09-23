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
    Left = 224
    Top = 80
    Width = 97
    Height = 25
    Caption = #25991#20214#21517#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 144
    Top = 128
    Width = 177
    Height = 33
    Caption = #26032#25991#20214#25193#23637#21517#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 360
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 360
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 568
    Top = 80
    Width = 75
    Height = 25
    Caption = #25171#24320
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 360
    Top = 176
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 3
    OnClick = btn2Click
  end
  object dlgOpen1: TOpenDialog
    Left = 648
    Top = 80
  end
end
