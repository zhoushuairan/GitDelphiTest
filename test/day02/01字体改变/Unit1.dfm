object Form1: TForm1
  Left = 252
  Top = 131
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 584
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
  object lbl2: TLabel
    Left = 5
    Top = 142
    Width = 73
    Height = 18
    AutoSize = False
    Caption = #23383#20307#36873#25321
  end
  object lbl3: TLabel
    Left = 389
    Top = 142
    Width = 73
    Height = 18
    AutoSize = False
    Caption = #39068#33394#36873#25321
  end
  object lbl4: TLabel
    Left = 389
    Top = 198
    Width = 73
    Height = 18
    AutoSize = False
    Caption = #23383#20307#22823#23567
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 129
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 1
      Top = 1
      Width = 582
      Height = 127
      Align = alClient
      AutoSize = False
      Caption = #20320#22909#65292#36825#37324#26159#20320#33258#24049#30340#23478#22253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object ColorBox1: TColorBox
    Left = 392
    Top = 160
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 1
    OnChange = ColorBox1Change
  end
  object cbb1: TComboBox
    Left = 392
    Top = 216
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnChange = cbb1Change
    Items.Strings = (
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '14'
      '16'
      '18'
      '20'
      '30'
      '40'
      '50'
      '60')
  end
  object lst1: TListBox
    Left = 0
    Top = 160
    Width = 233
    Height = 281
    ItemHeight = 13
    TabOrder = 3
    OnClick = lst1Click
  end
end
