inherited FrmPersonal: TFrmPersonal
  Caption = 'FrmPersonal'
  ClientHeight = 561
  ClientWidth = 1056
  OnCreate = FormCreate
  ExplicitWidth = 1072
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 1056
    Height = 466
    ExplicitWidth = 1056
    ExplicitHeight = 466
    DockingType = 5
    OriginalWidth = 1056
    OriginalHeight = 466
    inherited dxLayoutDockSite1: TdxLayoutDockSite
      Width = 666
      Height = 466
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxDockGrid: TdxDockPanel [0]
        Width = 666
        Height = 466
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 652
          Height = 430
        end
      end
      inherited dxlytdckst1: TdxLayoutDockSite [1]
        Width = 666
        Height = 466
        ExplicitWidth = 666
        ExplicitHeight = 466
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Left = 666
      Height = 466
      ExplicitLeft = 666
      ExplicitHeight = 466
      DockingType = 3
      OriginalWidth = 390
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Height = 436
        ClientRectBottom = 430
        inherited cxTsDatos: TcxTabSheet
          ExplicitHeight = 403
          inherited dxLYCDatos: TdxLayoutControl
            Height = 403
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 1056
    ExplicitWidth = 1056
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      FloatClientWidth = 153
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dxDockingManager1: TdxDockingManager
    PixelsPerInch = 96
  end
end
