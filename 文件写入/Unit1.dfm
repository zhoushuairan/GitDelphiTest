object Form1: TForm1
  Left = 294
  Top = 151
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
    Left = 88
    Top = 48
    Width = 50
    Height = 20
    Caption = #28304#25991#20214
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 88
    Top = 96
    Width = 60
    Height = 13
    Caption = #30446#26631#25991#20214
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 160
    Top = 45
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 336
    Top = 48
    Width = 75
    Height = 25
    Caption = #25171#24320
    TabOrder = 1
    OnClick = btn1Click
  end
  object edt2: TEdit
    Left = 160
    Top = 93
    Width = 137
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object btn2: TButton
    Left = 336
    Top = 96
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 3
    OnClick = btn2Click
  end
  object dlgOpen1: TOpenDialog
    Left = 416
    Top = 216
  end
  object dlgSave1: TSaveDialog
    Left = 336
    Top = 216
  end
end
