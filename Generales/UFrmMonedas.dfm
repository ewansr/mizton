inherited FrmMonedas: TFrmMonedas
  AlignWithMargins = True
  Caption = 'Cat'#225'logo de Moneda'
  ClientHeight = 522
  ClientWidth = 594
  OnCreate = FormCreate
  ExplicitWidth = 600
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 594
    ExplicitLeft = 2
    ExplicitTop = -3
    ExplicitWidth = 594
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Monedas'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 281
    ExplicitLeft = -2
    ExplicitTop = 124
    ExplicitWidth = 588
    ExplicitHeight = 281
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnCodigo: TcxGridDBColumn
        Tag = 1
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 113
      end
      object cxColumnMoneda: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Moneda'
        Width = 461
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 99
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 409
    Width = 594
    Height = 113
    ExplicitTop = 409
    ExplicitWidth = 594
    ExplicitHeight = 113
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 109
      ExplicitWidth = 590
      ExplicitHeight = 109
      ClientRectBottom = 107
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 586
        ExplicitHeight = 79
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 79
          ExplicitWidth = 586
          ExplicitHeight = 79
          object cxtextCodigo: TcxDBTextEdit [0]
            Tag = -2
            Left = 60
            Top = 10
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 20
            Style.HotTrack = False
            TabOrder = 0
            Width = 477
          end
          object cxtextMoneda: TcxDBTextEdit [1]
            Tag = -1
            Left = 60
            Top = 37
            DataBinding.DataField = 'Moneda'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 200
            Style.HotTrack = False
            TabOrder = 1
            Width = 509
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxtextCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlytmLYCDatosItem2: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Moneda'
            Control = cxtextMoneda
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
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
      FloatClientWidth = 97
      FloatClientHeight = 366
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
  end
end
