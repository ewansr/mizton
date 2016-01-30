inherited FrmFormaPago: TFrmFormaPago
  Caption = 'Forma de pago'
  ClientHeight = 522
  ClientWidth = 594
  OnCreate = FormCreate
  ExplicitWidth = 600
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 594
    ExplicitWidth = 594
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Cat'#225'logo de Forma de Pago'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 321
    ExplicitLeft = -2
    ExplicitTop = 124
    ExplicitWidth = 588
    ExplicitHeight = 321
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnForma: TcxGridDBColumn
        Tag = 1
        Caption = 'Forma de pago'
        DataBinding.FieldName = 'FormaPago'
        Width = 512
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 101
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 449
    Width = 594
    Height = 73
    ExplicitTop = 449
    ExplicitWidth = 594
    ExplicitHeight = 73
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 69
      ExplicitWidth = 590
      ExplicitHeight = 69
      ClientRectBottom = 67
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 586
        ExplicitHeight = 39
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 39
          ExplicitWidth = 586
          ExplicitHeight = 39
          object cxtextForma: TcxDBTextEdit [0]
            Tag = -1
            Left = 100
            Top = 10
            DataBinding.DataField = 'FormaPago'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 50
            Style.HotTrack = False
            TabOrder = 0
            Width = 325
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Forma de pago'
            Control = cxtextForma
            ControlOptions.ShowBorder = False
            Index = 0
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
      DockedDockControl = nil
      DockedDockingStyle = dsNone
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
