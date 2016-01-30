inherited FrmCondicionPago: TFrmCondicionPago
  Caption = 'Condiciones  de pago'
  ClientHeight = 522
  ClientWidth = 594
  OnCreate = FormCreate
  ExplicitWidth = 600
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 594
    ExplicitWidth = 474
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Condiciones de pago'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 316
    ExplicitWidth = 468
    ExplicitHeight = 328
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnCondicion: TcxGridDBColumn
        Tag = 1
        Caption = 'Condici'#243'n de pago'
        DataBinding.FieldName = 'CondicionPago'
        Width = 391
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 139
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 444
    Width = 594
    Height = 78
    ExplicitTop = 456
    ExplicitWidth = 474
    ExplicitHeight = 78
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 74
      ExplicitWidth = 470
      ExplicitHeight = 74
      ClientRectBottom = 72
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 466
        ExplicitHeight = 44
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 44
          ExplicitWidth = 466
          ExplicitHeight = 44
          object cxtextCondicion: TcxDBTextEdit [0]
            Tag = -1
            Left = 121
            Top = 10
            DataBinding.DataField = 'CondicionPago'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 20
            Style.HotTrack = False
            TabOrder = 0
            Width = 232
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Condici'#243'n de Pago'
            Control = cxtextCondicion
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
  inherited zDatos: TZQuery
    Connection = UDMConection.conBD
  end
  inherited zDatosUpt: TZQuery
    Connection = UDMConection.conBD
  end
end
