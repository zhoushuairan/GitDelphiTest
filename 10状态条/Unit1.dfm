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
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object rg1: TRadioGroup
    Left = 248
    Top = 104
    Width = 289
    Height = 177
    Caption = #21916#27426#30340#23395#33410
    ItemIndex = 0
    Items.Strings = (
      #26149#22825' '
      #22799#22825
      #31179#22825' '
      #20908#22825)
    TabOrder = 0
    OnClick = rg1Click
  end
  object stat1: TStatusBar
    Left = 0
    Top = 422
    Width = 912
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 50
      end>
  end
end
