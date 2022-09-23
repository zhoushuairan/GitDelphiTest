object Form1: TForm1
  Left = 367
  Top = 136
  Width = 334
  Height = 202
  Caption = 'Action -- '#40060'C'#24037#20316#23460
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
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
    object N1: TMenuItem
      Caption = #25991#20214
      object N2: TMenuItem
        Caption = #26174#31034#20869#23481
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #36864#20986#31243#24207
        OnClick = N3Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 8
    object N4: TMenuItem
      Caption = #26174#31034#20869#23481
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #36864#20986#31243#24207
      OnClick = N5Click
    end
  end
end
