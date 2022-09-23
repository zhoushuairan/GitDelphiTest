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
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 0
    Width = 912
    Height = 17
    Sections = <
      item
        AutoSize = True
        ImageIndex = -1
        Text = #32534#21495
        Width = 50
      end
      item
        AutoSize = True
        ImageIndex = -1
        Text = #22995#21517
        Width = 50
      end
      item
        AutoSize = True
        ImageIndex = -1
        Text = #24180#40836
        Width = 50
      end
      item
        AutoSize = True
        ImageIndex = -1
        Text = #24615#21035
        Width = 50
      end
      item
        AutoSize = True
        ImageIndex = -1
        Text = #31821#36143
        Width = 50
      end>
    OnSectionResize = HeaderControl1SectionResize
  end
  object lst1: TListBox
    Left = 0
    Top = 40
    Width = 182
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    TabOrder = 1
  end
  object lst2: TListBox
    Left = 176
    Top = 40
    Width = 182
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      #21608
      #29579
      #27573
      #23609
      #26446)
    TabOrder = 2
  end
  object lst3: TListBox
    Left = 360
    Top = 40
    Width = 182
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      '18'
      '19'
      '20'
      '21'
      '22')
    TabOrder = 3
  end
  object lst4: TListBox
    Left = 544
    Top = 40
    Width = 182
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      #30007
      #30007
      #22899
      #22899
      #22899)
    TabOrder = 4
  end
  object lst5: TListBox
    Left = 728
    Top = 40
    Width = 182
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      #27827#21335
      #27827#21335
      #23665#19996
      #23665#19996
      #27827#21335)
    TabOrder = 5
  end
  object btn1: TButton
    Left = 200
    Top = 272
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 376
    Top = 272
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 7
    OnClick = btn2Click
  end
end
