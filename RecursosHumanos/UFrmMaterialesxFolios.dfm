object FrmMaterialesxFolios: TFrmMaterialesxFolios
  Left = 0
  Top = 0
  Caption = 'Materiales usados en actividades'
  ClientHeight = 624
  ClientWidth = 1335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxDockSite1: TdxDockSite
    Left = 289
    Top = 131
    Width = 1046
    Height = 493
    Align = alClient
    ExplicitTop = 127
    ExplicitWidth = 833
    ExplicitHeight = 497
    DockingType = 5
    OriginalWidth = 1046
    OriginalHeight = 493
    object dxLayoutDockSite1: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 656
      Height = 493
      ExplicitWidth = 443
      ExplicitHeight = 497
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object dxlytdckst1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 656
        Height = 493
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dxDockGrid: TdxDockPanel
        Left = 0
        Top = 0
        Width = 656
        Height = 493
        AllowFloating = False
        AutoHide = False
        Caption = 'Listado de Folios'
        CaptionButtons = []
        CustomCaptionButtons.Buttons = <>
        TabsProperties.CustomButtons.Buttons = <>
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object cxGridGral: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 642
          Height = 457
          Align = alClient
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          OnActiveTabChanged = cxGridGralActiveTabChanged
          ExplicitWidth = 429
          ExplicitHeight = 461
          object cxGridDatos: TcxGridDBTableView
            PopupMenu = dxPopupGrid
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDatos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = '< Clic aqu'#237' para definir un filtro >'
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay informaci'#243'n disponible>'
            Styles.Content = UDMConection.cxstylContent
            Styles.Header = UDMConection.cxstylHeader
            object cxColFolioPrincipal: TcxGridDBColumn
              Caption = 'Folio Maestro'
              DataBinding.FieldName = 'FolioPrincipal'
              Visible = False
              GroupIndex = 0
              Width = 117
            end
            object cxColFolio: TcxGridDBColumn
              DataBinding.FieldName = 'Folio'
              Width = 117
            end
            object cxColTelefono: TcxGridDBColumn
              Caption = 'Tel'#233'fono'
              DataBinding.FieldName = 'Telefono'
              Width = 123
            end
            object cxColPrincipal: TcxGridDBColumn
              DataBinding.FieldName = 'Principal'
              Width = 85
            end
            object cxColSecundario: TcxGridDBColumn
              DataBinding.FieldName = 'Secundario'
              Width = 87
            end
            object cxColArea: TcxGridDBColumn
              Caption = #193'rea'
              DataBinding.FieldName = 'Area'
              Width = 135
            end
            object cxColContratista: TcxGridDBColumn
              DataBinding.FieldName = 'Contratista'
              Width = 125
            end
            object cxColNoVale: TcxGridDBColumn
              Caption = 'No. Vale'
              DataBinding.FieldName = 'NoVale'
              Width = 151
            end
          end
          object cxChartProductividad: TcxGridDBChartView
            DataController.DataSource = dsDatos
            DiagramColumn.Active = True
            ToolBox.DiagramSelector = True
            object cxDataEstatus: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'estatus'
            end
            object cxSerieProductividad: TcxGridDBChartSeries
              DataBinding.FieldName = 'productividad'
            end
          end
          object GridLevel1: TcxGridLevel
            Caption = 'Informaci'#243'n detallada de Folios'
            GridView = cxGridDatos
          end
          object cxLvlGrafico: TcxGridLevel
            Caption = 'Gr'#225'fico de productividad'
            GridView = cxChartProductividad
          end
        end
      end
    end
    object dxDockDatos: TdxDockPanel
      Left = 656
      Top = 0
      Width = 390
      Height = 493
      AllowFloating = True
      AutoHide = False
      Caption = 'Insertar / Editar Registros'
      CaptionButtons = [cbHide]
      CustomCaptionButtons.Buttons = <>
      TabsProperties.CustomButtons.Buttons = <>
      ExplicitLeft = 443
      ExplicitHeight = 497
      DockingType = 3
      OriginalWidth = 390
      OriginalHeight = 140
      object cxPageDatos: TcxPageControl
        Left = 0
        Top = 63
        Width = 382
        Height = 400
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTsDatos
        Properties.CustomButtons.Buttons = <>
        Properties.NavigatorPosition = npRightBottom
        ExplicitTop = 58
        ExplicitHeight = 409
        ClientRectBottom = 394
        ClientRectLeft = 2
        ClientRectRight = 376
        ClientRectTop = 27
        object cxTsDatos: TcxTabSheet
          Caption = 'Materiales por Folio'
          ImageIndex = 0
          ExplicitHeight = 376
          object dxLYCDatos: TdxLayoutControl
            Left = 0
            Top = 351
            Width = 374
            Height = 16
            Align = alBottom
            TabOrder = 0
            Visible = False
            LayoutLookAndFeel = UDMConection.dxStyleForms
            ExplicitTop = 360
            object dxLyDatos: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
          end
          object cxGrid1: TcxGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 368
            Height = 345
            Align = alClient
            TabOrder = 1
            ExplicitHeight = 354
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = '< Clic aqu'#237' para definir un filtro >'
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay informaci'#243'n disponible>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Content = UDMConection.cxstylContent
              Styles.Header = UDMConection.cxstylHeader
              object cxColCantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
                Width = 65
              end
              object cxColmaterial: TcxGridDBColumn
                DataBinding.FieldName = 'Material'
                Width = 221
              end
              object cxColUMedida: TcxGridDBColumn
                Caption = 'U. Medida'
                DataBinding.FieldName = 'UnidadMedida'
                Width = 80
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object dxDockBar1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 382
        Height = 63
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 131
    Width = 289
    Height = 493
    Align = alLeft
    TabOrder = 3
    ExplicitTop = 127
    ExplicitHeight = 497
    object cxGboxFiltro: TcxGroupBox
      AlignWithMargins = True
      Left = 11
      Top = 11
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'Semana:'
      TabOrder = 0
      Height = 126
      Width = 267
      object dxLayControl1: TdxLayoutControl
        Left = 3
        Top = 15
        Width = 261
        Height = 101
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        object cxDateDesde: TcxDateEdit
          Left = 57
          Top = 11
          Style.HotTrack = False
          TabOrder = 0
          Width = 184
        end
        object cxDateHasta: TcxDateEdit
          Left = 57
          Top = 38
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object btnAplicar: TcxButton
          Left = 11
          Top = 65
          Width = 75
          Height = 25
          Caption = '&Mostrar'
          TabOrder = 2
          OnClick = btnAplicarClick
        end
        object dxLayControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lyLayControl1Item1: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'Desde:'
          Control = cxDateDesde
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lyHasta: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'Hasta:'
          Control = cxDateHasta
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lyAplicar: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnAplicar
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 11
      Top = 157
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Caption = 'Informaci'#243'n del Empleado:'
      TabOrder = 1
      ExplicitHeight = 329
      Height = 325
      Width = 267
      object dxLayoutControl1: TdxLayoutControl
        Left = 3
        Top = 15
        Width = 261
        Height = 300
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        ExplicitHeight = 304
        object imgFoto: TcxDBImage
          Left = 11
          Top = 11
          DataBinding.DataField = 'Imagen'
          DataBinding.DataSource = dsPersonal
          Properties.GraphicClassName = 'TdxSmartImage'
          Style.HotTrack = False
          TabOrder = 0
          Height = 129
          Width = 230
        end
        object LblCodigo: TcxDBLabel
          Left = 84
          Top = 146
          DataBinding.DataField = 'CodigoPersonal'
          DataBinding.DataSource = dsPersonal
          Style.HotTrack = False
          Height = 21
          Width = 121
        end
        object LblApMat: TcxDBLabel
          Left = 84
          Top = 227
          DataBinding.DataField = 'AMaterno'
          DataBinding.DataSource = dsPersonal
          Style.HotTrack = False
          Height = 21
          Width = 121
        end
        object LblNombre: TcxDBLabel
          Left = 84
          Top = 173
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsPersonal
          Style.HotTrack = False
          Height = 21
          Width = 121
        end
        object LblApPat: TcxDBLabel
          Left = 84
          Top = 200
          DataBinding.DataField = 'APaterno'
          DataBinding.DataSource = dsPersonal
          Style.HotTrack = False
          Height = 21
          Width = 121
        end
        object LblNoCarro: TcxDBLabel
          Left = 84
          Top = 254
          DataBinding.DataField = 'NoCarro'
          DataBinding.DataSource = dsPersonal
          Style.HotTrack = False
          Height = 21
          Width = 121
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lyFoto: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'cxDBImage1'
          CaptionOptions.Visible = False
          Control = imgFoto
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'C'#243'digo:'
          Control = LblCodigo
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lyApMat: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Ap. Materno:'
          Control = LblApMat
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lyNombre: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Nombre(s):'
          Control = LblNombre
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lyApPat: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Ap. Paterno:'
          Control = LblApPat
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lyBNocarro: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'No. Carro:'
          Control = LblNoCarro
          ControlOptions.ShowBorder = False
          Index = 5
        end
      end
    end
  end
  object dxRibbon1: TdxRibbon
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1329
    Height = 125
    BarManager = dxBarManager1
    Style = rs2013
    ColorSchemeName = 'UserSkin'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 6
    TabStop = False
    ExplicitWidth = 1116
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Inicio'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxbrManager1Bar'
        end>
      Index = 0
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = UDMConection.cxMizton16
    ImageOptions.LargeImages = UDMConection.cxMizton32
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 600
    Top = 432
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrManager1Bar: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 664
      FloatTop = 8
      FloatClientWidth = 153
      FloatClientHeight = 307
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonNuevo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBButtonEditar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonBuscar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEliminar'
        end
        item
          Visible = True
          ItemName = 'dxButtonDetalle'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelar'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonExportar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'Materiales'
      CaptionButtons = <>
      DockControl = dxDockBar1
      DockedDockControl = dxDockBar1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1156
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnadd'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnRefresh'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxButtonNuevo: TdxBarLargeButton
      Caption = '&Nuevo'#13#10'Folio'
      Category = 0
      Hint = 'Nuevo'#13#10'Folio'
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16462
    end
    object dxBButtonEditar: TdxBarButton
      Caption = '&Editar Folio'
      Category = 0
      Hint = 'Editar Folio'
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ShortCut = 16453
    end
    object dxBButtonBuscar: TdxBarButton
      Caption = '&Buscar Folio'
      Category = 0
      Hint = 'Buscar Folio'
      Visible = ivAlways
      ImageIndex = 10
      ShortCut = 16450
    end
    object dxBButtonEliminar: TdxBarButton
      Caption = 'Eli&minar Folio'
      Category = 0
      Hint = 'Eliminar Folio'
      Visible = ivAlways
      ImageIndex = 11
      LargeImageIndex = 11
      ShortCut = 46
    end
    object dxButtonGuardar: TdxBarLargeButton
      Caption = '&Guardar Folio'
      Category = 0
      Hint = 'Guardar Folio'
      Visible = ivNever
      LargeImageIndex = 9
      ShortCut = 16455
      SyncImageIndex = False
      ImageIndex = 8
    end
    object dxButtonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 12
      ShortCut = 116
    end
    object dxButtonCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivNever
      LargeImageIndex = 14
      ShortCut = 115
    end
    object dxButtonSalir: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 16499
    end
    object dxButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxButtonExportar: TdxBarLargeButton
      Caption = '&Exportar a Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 16464
    end
    object dxButtonOpcional: TdxBarLargeButton
      Caption = 'Opcional'
      Category = 0
      Hint = 'Opcional'
      Visible = ivNever
    end
    object dxButtonDetalle: TdxBarLargeButton
      Caption = '&Ver materiales'
      Category = 0
      Hint = 'Ver materiales'
      Visible = ivNever
      LargeImageIndex = 13
    end
    object btnadd: TdxBarLargeButton
      Caption = 'A'#241'adir'
      Category = 0
      Hint = 'A'#241'adir'
      Visible = ivAlways
      LargeImageIndex = 4
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Caption = 'Quitar'
      Category = 0
      Hint = 'Quitar'
      Visible = ivAlways
      LargeImageIndex = 11
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 3
      AutoGrayScale = False
    end
    object btnRefresh: TdxBarLargeButton
      Caption = 'Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 12
      AutoGrayScale = False
    end
  end
  object dsDatos: TDataSource
    DataSet = zDatos
    Left = 440
    Top = 432
  end
  object zDatos: TZQuery
    ReadOnly = True
    Params = <>
    Left = 440
    Top = 384
  end
  object dxPopupGrid: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxButtonNuevo'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEditar'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEliminar'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 680
    Top = 384
  end
  object dlgSave1: TSaveDialog
    Filter = 'Documento de Microsoft Excel|*.xls'
    Left = 600
    Top = 384
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 344
    Top = 384
    PixelsPerInch = 96
  end
  object cxHintStyleController: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintHidePause = 10000
    Left = 472
    Top = 320
  end
  object zPersonal: TZQuery
    Params = <>
    Left = 320
    Top = 504
  end
  object dsPersonal: TDataSource
    DataSet = zPersonal
    Left = 328
    Top = 448
  end
  object zMaterial: TZQuery
    Params = <>
    Left = 544
    Top = 232
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 632
    Top = 240
  end
end
