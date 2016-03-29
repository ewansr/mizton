inherited FrmTipoOrden: TFrmTipoOrden
  Caption = 'Cat'#225'logo Tipos de Ordenes'
  ClientWidth = 468
  OnCreate = FormCreate
  ExplicitWidth = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 468
    ExplicitWidth = 468
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Inicio'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 457
    Height = 336
    ExplicitWidth = 457
    ExplicitHeight = 336
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      OptionsView.GroupByBox = True
      object cxColTipoInstalacion: TcxGridDBColumn
        Caption = 'Tipo Instalaci'#243'n'
        DataBinding.FieldName = 'TipoInstalacion'
        Visible = False
        GroupIndex = 0
      end
      object cxColTipoOrden: TcxGridDBColumn
        Caption = 'Tipo Orden'
        DataBinding.FieldName = 'TipoOrden'
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 464
    Width = 468
    Height = 110
    ExplicitTop = 464
    ExplicitWidth = 468
    ExplicitHeight = 110
    inherited cxPageDatos: TcxPageControl
      Width = 464
      Height = 106
      ExplicitWidth = 464
      ExplicitHeight = 106
      ClientRectBottom = 100
      ClientRectRight = 458
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 456
        ExplicitHeight = 73
        inherited dxLYCDatos: TdxLayoutControl
          Width = 456
          Height = 73
          ExplicitWidth = 456
          ExplicitHeight = 73
          object cbbTipo: TcxDBComboBox [0]
            Left = 107
            Top = 11
            DataBinding.DataField = 'TipoInstalacion'
            DataBinding.DataSource = dsDatosUpt
            Properties.Items.Strings = (
              'Cobre'
              'FO')
            Style.HotTrack = False
            TabOrder = 0
            Width = 326
          end
          object cxTextTipoOrden: TcxDBTextEdit [1]
            Left = 107
            Top = 38
            DataBinding.DataField = 'TipoOrden'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object lyTipo: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Tipo Instalaci'#243'n:'
            Control = cbbTipo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lyTipoOrden: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Tipo Orden:'
            Control = cxTextTipoOrden
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Height = 342
    ExplicitHeight = 342
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 184
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      FloatClientWidth = 97
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 9
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
    Left = 24
    Top = 240
  end
  inherited zDatos: TZQuery
    Left = 24
    Top = 192
  end
  inherited zDatosUpt: TZQuery
    Left = 88
    Top = 200
  end
  inherited dsDatosUpt: TDataSource
    Left = 88
    Top = 248
  end
  inherited dxPopupGrid: TdxRibbonPopupMenu
    Left = 264
    Top = 200
  end
  inherited dlgSave1: TSaveDialog
    Left = 184
    Top = 200
  end
end
