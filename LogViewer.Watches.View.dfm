object frmWatchesView: TfrmWatchesView
  Left = 0
  Top = 0
  ClientHeight = 581
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TOMultiPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 581
    PanelType = ptVertical
    PanelCollection = <
      item
        Control = pnlWatches
        Position = 0.500000000000000000
        Visible = True
        Index = 0
      end
      item
        Control = pnlWatchHistory
        Position = 1.000000000000000000
        Visible = True
        Index = 1
      end>
    MinPosition = 0.020000000000000000
    SplitterSize = 8
    Align = alClient
    BevelEdges = []
    TabOrder = 0
    object pnlWatches: TPanel
      Left = 0
      Top = 0
      Width = 402
      Height = 290
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object pnlWatchHistory: TPanel
      Left = 0
      Top = 298
      Width = 402
      Height = 283
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
end
