object Form1: TForm1
  Left = 345
  Top = 119
  Width = 334
  Height = 173
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 160
    Top = 8
    Width = 75
    Height = 25
    Action = Action1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 160
    Top = 48
    Width = 75
    Height = 25
    Action = Action2
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 16
    Top = 16
    object Action1: TAction
      Caption = #26174#31034#20869#23481
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #36864#20986#31243#24207
      OnExecute = Action2Execute
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 16
    object N1: TMenuItem
      Caption = #25991#20214
      object N2: TMenuItem
        Action = Action1
      end
      object N3: TMenuItem
        Action = Action2
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 16
    object N4: TMenuItem
      Action = Action1
    end
    object N5: TMenuItem
      Action = Action2
    end
  end
end
