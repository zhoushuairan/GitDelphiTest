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
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 121
    Height = 25
    AutoSize = False
    Caption = #36873#25321#30011#31508#39068#33394#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 416
    Top = 8
    Width = 36
    Height = 13
    Caption = #22826#38590#20102
  end
  object ColorBox1: TColorBox
    Left = 136
    Top = 0
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 0
    OnChange = ColorBox1Change
  end
  object btn1: TButton
    Left = 296
    Top = -3
    Width = 75
    Height = 25
    Caption = #28165#38500
    TabOrder = 1
    OnClick = btn1Click
  end
  object stat1: TStatusBar
    Left = 0
    Top = 422
    Width = 912
    Height = 19
    Panels = <>
  end
end
