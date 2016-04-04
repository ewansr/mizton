inherited FrmVales: TFrmVales
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Cat'#225'logo de Vales'
  ClientHeight = 549
  ClientWidth = 612
  OnCreate = FormCreate
  ExplicitWidth = 628
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 612
    ExplicitWidth = 622
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Inicio'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Left = 3
    Width = 606
    Height = 253
    ExplicitLeft = 3
    ExplicitWidth = 616
    ExplicitHeight = 244
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      DataController.DetailKeyFieldNames = 'IdVale'
      DataController.KeyFieldNames = 'IdVale'
      DataController.MasterKeyFieldNames = 'IdVale'
      OptionsView.ColumnAutoWidth = False
      OptionsView.GroupByBox = True
      object cxColNoVale: TcxGridDBColumn
        Caption = 'No. Vale'
        DataBinding.FieldName = 'NoVale'
        Width = 75
      end
      object cxColCodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 112
      end
      object cxColNoSemana: TcxGridDBColumn
        Caption = 'No. Semana'
        DataBinding.FieldName = 'NoSemana'
        Width = 112
      end
      object cxColEstatus: TcxGridDBColumn
        DataBinding.FieldName = 'Estatus'
        Visible = False
        GroupIndex = 0
        Width = 106
      end
      object cxColInicio: TcxGridDBColumn
        DataBinding.FieldName = 'Inicio'
        Width = 107
      end
      object cxColTermino: TcxGridDBColumn
        Caption = 'T'#233'rmino'
        DataBinding.FieldName = 'Termino'
        Width = 123
      end
    end
    object cxGridFolios: TcxGridDBTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFolios
      DataController.DetailKeyFieldNames = 'IdVale'
      DataController.KeyFieldNames = 'IdVale'
      DataController.MasterKeyFieldNames = 'IdVale'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxColFecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FechaCreacion'
        Width = 98
      end
      object cxColExpediente: TcxGridDBColumn
        Caption = 'Expediente'
        DataBinding.FieldName = 'CodigoPersonal'
        Width = 104
      end
      object cxColFolio: TcxGridDBColumn
        DataBinding.FieldName = 'Folio'
        Width = 86
      end
      object cxColTipo: TcxGridDBColumn
        Caption = 'Tipo de Instalaci'#243'n'
        DataBinding.FieldName = 'tipoInstalacion'
        Visible = False
        GroupIndex = 0
      end
      object cxColestatus2: TcxGridDBColumn
        DataBinding.FieldName = 'Estatus'
        Width = 114
      end
      object cxColPago: TcxGridDBColumn
        Caption = 'Pago'
        DataBinding.FieldName = 'CostoCobrar'
        Width = 123
      end
    end
    inherited GridLevel1: TcxGridLevel
      object cxLvlFolios: TcxGridLevel
        GridView = cxGridFolios
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 386
    Width = 612
    Height = 163
    ExplicitTop = 593
    ExplicitWidth = 622
    ExplicitHeight = 163
    inherited cxPageDatos: TcxPageControl
      Width = 608
      Height = 159
      ExplicitWidth = 618
      ExplicitHeight = 159
      ClientRectBottom = 153
      ClientRectRight = 602
      inherited cxTsDatos: TcxTabSheet
        Caption = 'Inserci'#243'n/Edici'#243'n de vales'
        ExplicitWidth = 610
        ExplicitHeight = 126
        inherited dxLYCDatos: TdxLayoutControl
          Width = 600
          Height = 126
          ExplicitWidth = 610
          ExplicitHeight = 126
          object cxTextNoVale: TcxDBTextEdit [0]
            Tag = -1
            Left = 66
            Top = 38
            DataBinding.DataField = 'NoVale'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxTextFolio: TcxDBTextEdit [1]
            Tag = -1
            Left = 66
            Top = 11
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 235
          end
          object cbbEstatus: TcxDBComboBox [2]
            Tag = -1
            Left = 66
            Top = 65
            DataBinding.DataField = 'estatus'
            DataBinding.DataSource = dsDatosUpt
            Properties.Items.Strings = (
              'Abierto'
              'Cerrado')
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDateVale: TcxDBDateEdit [3]
            Tag = -1
            Left = 385
            Top = 11
            DataBinding.DataField = 'FechaVale'
            DataBinding.DataSource = dsDatosUpt
            Properties.OnChange = cxDateValePropertiesChange
            Style.HotTrack = False
            TabOrder = 3
            Width = 200
          end
          object cxSpinNoSemana: TcxDBSpinEdit [4]
            Left = 385
            Top = 38
            DataBinding.DataField = 'NoSemana'
            DataBinding.DataSource = dsDatosUpt
            Enabled = False
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxDateInicio: TcxDBDateEdit [5]
            Left = 385
            Top = 65
            DataBinding.DataField = 'Inicio'
            DataBinding.DataSource = dsDatosUpt
            Enabled = False
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDateTermino: TcxDBDateEdit [6]
            Left = 385
            Top = 92
            DataBinding.DataField = 'Termino'
            DataBinding.DataSource = dsDatosUpt
            Enabled = False
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object lyNoVale: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'No. Vale:'
            Control = cxTextNoVale
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lyFolio: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'C'#243'digo:'
            Control = cxTextFolio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lyEstatus: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Estatus:'
            Control = cbbEstatus
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lyFechaVale: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Fecha:'
            Control = cxDateVale
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 0
            AutoCreated = True
          end
          object lyNoSemana: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'No. Semana:'
            Control = cxSpinNoSemana
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 1
          end
          object dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 1
            AutoCreated = True
          end
          object lyInicio: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Inicio:'
            Control = cxDateInicio
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 2
          end
          object lyTermino: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Termino:'
            Control = cxDateTermino
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 3
          end
        end
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Top = 381
    Width = 612
    Height = 5
    AlignSplitter = salBottom
    ExplicitLeft = 24
    ExplicitTop = 420
    ExplicitWidth = 622
    ExplicitHeight = 5
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 544
    Top = 40
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
      ImageIndex = 8
    end
    object btnAbrir: TdxBarLargeButton
      Caption = '&Abrir'#13#10'Vales'
      Category = 0
      Hint = 'Abrir'#13#10'Vales'
      Visible = ivAlways
    end
    object btnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'#13#10'Vales'
      Category = 0
      Hint = 'Cerrar'#13#10'Vales'
      Visible = ivAlways
    end
    object btnGenerarAnual: TdxBarLargeButton
      Caption = '&Generar vales del todo el a'#241'o'
      Category = 0
      Hint = 'Generar vales del todo el a'#241'o'
      Visible = ivAlways
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
    Left = 456
    Top = 32
  end
  inherited zDatos: TZQuery
    Left = 432
    Top = 88
  end
  inherited zDatosUpt: TZQuery
    Left = 472
    Top = 16
  end
  inherited dsDatosUpt: TDataSource
    Left = 480
    Top = 72
  end
  inherited dxPopupGrid: TdxRibbonPopupMenu
    Left = 512
    Top = 24
  end
  inherited dlgSave1: TSaveDialog
    Left = 528
    Top = 80
  end
  object zFolios: TZQuery
    Params = <>
    Left = 240
    Top = 272
  end
  object dsFolios: TDataSource
    DataSet = zFolios
    Left = 192
    Top = 272
  end
end
