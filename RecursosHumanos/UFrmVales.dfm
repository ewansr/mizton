inherited FrmVales: TFrmVales
  Caption = 'Cat'#225'logo de Vales'
  ClientHeight = 551
  ClientWidth = 797
  OnCreate = FormCreate
  ExplicitWidth = 803
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 797
    ExplicitWidth = 797
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Inicio'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 791
    Height = 232
    ExplicitWidth = 791
    ExplicitHeight = 232
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      OptionsView.ColumnAutoWidth = False
      OptionsView.GroupByBox = True
      object cxColFolio: TcxGridDBColumn
        Caption = 'Folio Maestro'
        DataBinding.FieldName = 'FolioMaestro'
        Width = 112
      end
      object cxColNoVale: TcxGridDBColumn
        Caption = 'No. Vale'
        DataBinding.FieldName = 'NoVale'
        Width = 75
      end
      object cxColFecha: TcxGridDBColumn
        Caption = 'Fecha Vale'
        DataBinding.FieldName = 'FechaVale'
        Width = 95
      end
      object cxColDivision: TcxGridDBColumn
        Caption = 'Divisi'#243'n'
        DataBinding.FieldName = 'Division'
        Width = 117
      end
      object cxColArea: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Width = 103
      end
      object cxColContratista: TcxGridDBColumn
        DataBinding.FieldName = 'Contratista'
        Width = 160
      end
      object cxColFirmaContratista: TcxGridDBColumn
        Caption = 'Firmante Contratista'
        DataBinding.FieldName = 'FirmaContratista'
        Width = 160
      end
      object cxColFirmaSupervisor: TcxGridDBColumn
        Caption = 'Firmante Supervisor'
        DataBinding.FieldName = 'FirmaSupervisor'
        Width = 160
      end
      object cxColCreacion: TcxGridDBColumn
        Caption = 'Fecha de Creaci'#243'n'
        DataBinding.FieldName = 'FechaCreacion'
        Width = 131
      end
      object cxColEstatus: TcxGridDBColumn
        DataBinding.FieldName = 'Estatus'
        Visible = False
        GroupIndex = 0
        Width = 106
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 360
    Width = 797
    Height = 191
    ExplicitTop = 360
    ExplicitWidth = 797
    ExplicitHeight = 191
    inherited cxPageDatos: TcxPageControl
      Width = 793
      Height = 187
      ExplicitWidth = 793
      ExplicitHeight = 187
      ClientRectBottom = 181
      ClientRectRight = 787
      inherited cxTsDatos: TcxTabSheet
        Caption = 'Inserci'#243'n/Edici'#243'n de vales'
        ExplicitWidth = 785
        ExplicitHeight = 154
        inherited dxLYCDatos: TdxLayoutControl
          Width = 785
          Height = 154
          ExplicitWidth = 785
          ExplicitHeight = 154
          object cxTextFolio: TcxDBTextEdit [0]
            Tag = -1
            Left = 94
            Top = 11
            DataBinding.DataField = 'FolioMaestro'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 235
          end
          object cxTextNoVale: TcxDBTextEdit [1]
            Tag = -1
            Left = 94
            Top = 38
            DataBinding.DataField = 'NoVale'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDateVale: TcxDBDateEdit [2]
            Tag = -1
            Left = 94
            Top = 65
            DataBinding.DataField = 'FechaVale'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxTextDivision: TcxDBTextEdit [3]
            Tag = -1
            Left = 94
            Top = 92
            DataBinding.DataField = 'Division'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxTextArea: TcxDBTextEdit [4]
            Tag = -1
            Left = 94
            Top = 119
            DataBinding.DataField = 'Area'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxTextContratista: TcxDBTextEdit [5]
            Tag = -1
            Left = 456
            Top = 11
            DataBinding.DataField = 'Contratista'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 5
            Width = 305
          end
          object cxTextFirmaContratista: TcxDBTextEdit [6]
            Tag = -1
            Left = 456
            Top = 38
            DataBinding.DataField = 'FirmaContratista'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cxTextFirmaSupervisor: TcxDBTextEdit [7]
            Tag = -1
            Left = 456
            Top = 65
            DataBinding.DataField = 'FirmaSupervisor'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 7
            Width = 121
          end
          object cbbEstatus: TcxDBComboBox [8]
            Tag = -1
            Left = 456
            Top = 92
            DataBinding.DataField = 'estatus'
            DataBinding.DataSource = dsDatosUpt
            Properties.Items.Strings = (
              'Abierto'
              'Cerrado')
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object lyFolio: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Folio Maestro:'
            Control = cxTextFolio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lyNoVale: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'No. Vale:'
            Control = cxTextNoVale
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lyFechaVale: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Fecha Vale:'
            Control = cxDateVale
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lyDivision: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Divisi'#243'n:'
            Control = cxTextDivision
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object lyArea: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Area:'
            Control = cxTextArea
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object lyContratista: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Contratista:'
            Control = cxTextContratista
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 0
            AutoCreated = True
          end
          object lyFirmaContratista: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Firmante Contratista:'
            Control = cxTextFirmaContratista
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 1
            AutoCreated = True
          end
          object lyFirmaSupervisor: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Firmante Supervisor:'
            Control = cxTextFirmaSupervisor
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lyEstatus: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Estatus:'
            Control = cbbEstatus
            ControlOptions.ShowBorder = False
            Index = 3
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
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
  end
end
