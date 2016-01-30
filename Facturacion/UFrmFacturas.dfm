object FrmFacturas: TFrmFacturas
  Left = 0
  Top = 0
  Caption = 'Facturas Electr'#243'nicas'
  ClientHeight = 733
  ClientWidth = 1354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1354
    Height = 97
    BarManager = dxBarManager1
    ColorSchemeName = 'Office2013White'
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Nombre Cat'#225'logo'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxbrManager1Bar'
        end
        item
          Caption = 'Timbrado'
          ToolbarName = 'dxBarManager1Bar2'
        end
        item
          Caption = 'Opciones de Factura'
          ToolbarName = 'dxbrOpcionesFactura'
        end>
      Index = 0
    end
  end
  object cxPagePrincipal: TcxPageControl
    Left = 0
    Top = 97
    Width = 1354
    Height = 636
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = cxTabPrincipal
    Properties.CustomButtons.Buttons = <>
    Properties.TabPosition = tpBottom
    ClientRectBottom = 612
    ClientRectLeft = 4
    ClientRectRight = 1350
    ClientRectTop = 4
    object cxTabPrincipal: TcxTabSheet
      Caption = 'P'#225'gina Principal'
      ImageIndex = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1350
      ExplicitHeight = 606
      object dxDockSite1: TdxDockSite
        Left = 0
        Top = 0
        Width = 1346
        Height = 608
        Align = alClient
        ExplicitWidth = 1350
        ExplicitHeight = 606
        DockingType = 5
        OriginalWidth = 1346
        OriginalHeight = 608
        object dxLayoutDockSite2: TdxLayoutDockSite
          Left = 241
          Top = 0
          Width = 1105
          Height = 608
          ExplicitWidth = 1109
          ExplicitHeight = 606
          DockingType = 0
          OriginalWidth = 300
          OriginalHeight = 200
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 1105
            Height = 608
            DockingType = 0
            OriginalWidth = 300
            OriginalHeight = 200
          end
          object dxTabContFact: TdxTabContainerDockSite
            Left = 0
            Top = 0
            Width = 1105
            Height = 608
            AllowDockClients = []
            ActiveChildIndex = 0
            AllowDock = []
            AllowFloating = True
            OnActiveChildChanged = dxTabContFactActiveChildChanged
            AutoHide = False
            CaptionButtons = [cbMaximize, cbHide]
            CustomCaptionButtons.Buttons = <>
            Dockable = False
            TabsProperties.CustomButtons.Buttons = <>
            DockingType = 0
            OriginalWidth = 185
            OriginalHeight = 140
            object dxDockPanel1: TdxDockPanel
              Left = 0
              Top = 0
              Width = 1101
              Height = 556
              AllowFloating = False
              AutoHide = False
              Caption = 'Listado de Facturas'
              CaptionButtons = []
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitHeight = 536
              DockingType = 0
              OriginalWidth = 185
              OriginalHeight = 140
              object cxGridFact: TcxGrid
                Left = 0
                Top = 0
                Width = 1101
                Height = 556
                Align = alClient
                PopupMenu = dxPmFacturas
                TabOrder = 0
                ExplicitHeight = 536
                object cxGridFacturas: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  OnCellDblClick = cxGridFacturasCellDblClick
                  DataController.DataSource = dsFacturas
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsSelection.CellSelect = False
                  OptionsView.NoDataToDisplayInfoText = '<No hay facturas creadas con el criterio seleccionado>'
                  OptionsView.GroupRowHeight = 30
                  OptionsView.GroupRowStyle = grsOffice11
                  Styles.Content = UDMConection.cxstylContent
                  Styles.Header = UDMConection.cxstylHeader
                  object cxColNombreCliente: TcxGridDBColumn
                    Caption = 'Cliente'
                    DataBinding.FieldName = 'Receptor'
                    Visible = False
                    GroupIndex = 0
                    Width = 275
                  end
                  object cxColEstatus: TcxGridDBColumn
                    DataBinding.FieldName = 'Estatus'
                    Width = 95
                  end
                  object cxColRfcCliente: TcxGridDBColumn
                    Caption = 'R.F.C.'
                    DataBinding.FieldName = 'rfcReceptor'
                    Width = 131
                  end
                  object cxColMetodoPago: TcxGridDBColumn
                    Caption = 'M'#233'todo de Pago'
                    DataBinding.FieldName = 'metodoPago'
                    Width = 178
                  end
                  object cxColFormaPago: TcxGridDBColumn
                    Caption = 'Forma de Pago'
                    DataBinding.FieldName = 'Formapago'
                    Width = 181
                  end
                  object cxColParcialidades: TcxGridDBColumn
                    Caption = 'Parcialidades de Pago'
                    DataBinding.FieldName = 'Noparcialidades'
                    Width = 183
                  end
                  object cxColTotalFactura: TcxGridDBColumn
                    Caption = 'Total Factura'
                    DataBinding.FieldName = 'TotFactura'
                    Width = 126
                  end
                  object cxColFecha: TcxGridDBColumn
                    DataBinding.FieldName = 'Fecha'
                    Width = 114
                  end
                  object cxColHora: TcxGridDBColumn
                    DataBinding.FieldName = 'Hora'
                    Width = 90
                  end
                  object cxColumnGridFacturasColumn1: TcxGridDBColumn
                    Caption = 'Folio Fiscal'
                    DataBinding.FieldName = 'FolioFiscal'
                    Width = 277
                  end
                end
                object GridLevel1: TcxGridLevel
                  GridView = cxGridFacturas
                end
              end
            end
            object dxDockParcialidades: TdxDockPanel
              Left = 0
              Top = 0
              Width = 1101
              Height = 556
              AllowFloating = True
              AutoHide = False
              Caption = 'Ver Parcialidades'
              CaptionButtons = [cbMaximize, cbHide]
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitHeight = 536
              DockingType = 0
              OriginalWidth = 185
              OriginalHeight = 140
              object cxGrid1: TcxGrid
                Left = 0
                Top = 58
                Width = 1101
                Height = 498
                Align = alClient
                PopupMenu = dxPmFacturas
                TabOrder = 0
                ExplicitHeight = 478
                object cxGridDBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  OnCellDblClick = cxGridFacturasCellDblClick
                  DataController.DataSource = dsFacturasParciales
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsSelection.CellSelect = False
                  OptionsView.NoDataToDisplayInfoText = '<No hay facturas creadas con el criterio seleccionado>'
                  OptionsView.GroupRowHeight = 30
                  OptionsView.GroupRowStyle = grsOffice11
                  Styles.Content = UDMConection.cxstylContent
                  Styles.Header = UDMConection.cxstylHeader
                  object cxGridDBColumn1: TcxGridDBColumn
                    Caption = 'Cliente'
                    DataBinding.FieldName = 'Receptor'
                    Width = 275
                  end
                  object cxGridDBColumn2: TcxGridDBColumn
                    DataBinding.FieldName = 'Estatus'
                    Width = 95
                  end
                  object cxGridDBColumn3: TcxGridDBColumn
                    Caption = 'R.F.C.'
                    DataBinding.FieldName = 'rfcReceptor'
                    Width = 131
                  end
                  object cxGridDBColumn4: TcxGridDBColumn
                    Caption = 'M'#233'todo de Pago'
                    DataBinding.FieldName = 'metodoPago'
                    Width = 178
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    Caption = 'Forma de Pago'
                    DataBinding.FieldName = 'Formapago'
                    Width = 181
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    Caption = 'Parcialidades de Pago'
                    DataBinding.FieldName = 'Noparcialidades'
                    Width = 183
                  end
                  object cxGridDBColumn7: TcxGridDBColumn
                    Caption = 'Total Factura'
                    DataBinding.FieldName = 'TotFactura'
                    Width = 126
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    DataBinding.FieldName = 'Fecha'
                    Width = 114
                  end
                  object cxGridDBColumn9: TcxGridDBColumn
                    DataBinding.FieldName = 'Hora'
                    Width = 90
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    Caption = 'Folio Fiscal'
                    DataBinding.FieldName = 'FolioFiscal'
                    Width = 277
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
              object dxBarDockControl1: TdxBarDockControl
                Left = 0
                Top = 0
                Width = 1101
                Height = 58
                Align = dalTop
                BarManager = dxBarManager1
              end
            end
          end
        end
        object dxDockFiltro: TdxDockPanel
          Left = 0
          Top = 0
          Width = 241
          Height = 608
          AllowFloating = True
          AutoHide = False
          Caption = 'Opciones'
          CaptionButtons = [cbMaximize, cbHide]
          CustomCaptionButtons.Buttons = <>
          TabsProperties.CustomButtons.Buttons = <>
          DockingType = 1
          OriginalWidth = 241
          OriginalHeight = 140
          object dxNavBar1: TdxNavBar
            Left = 0
            Top = 0
            Width = 237
            Height = 580
            Align = alClient
            ActiveGroupIndex = 0
            TabOrder = 0
            View = 14
            OptionsImage.SmallImages = UDMConection.cxImage16
            ExplicitWidth = 233
            ExplicitHeight = 562
            object dxGroupFacturas: TdxNavBarGroup
              Caption = 'Facturas'
              SelectedLinkIndex = -1
              TopVisibleLinkIndex = 0
              Links = <
                item
                  Item = dxItemCreadas
                end
                item
                  Item = dxItemTimbradas
                end
                item
                  Item = dxItemCancelada
                end
                item
                  Item = dxItemTodos
                end>
            end
            object dxGroupFiltro: TdxNavBarGroup
              Caption = 'Periodos de visualizaci'#243'n'
              SelectedLinkIndex = -1
              TopVisibleLinkIndex = 0
              OptionsGroupControl.AllowControlResizing = True
              OptionsGroupControl.ShowControl = True
              OptionsGroupControl.UseControl = True
              Links = <>
            end
            object dxItemCreadas: TdxNavBarItem
              Caption = 'Creadas'
              LargeImageIndex = 30
              SmallImageIndex = 18
            end
            object dxItemTimbradas: TdxNavBarItem
              Caption = 'Timbradas'
              LargeImageIndex = 29
              SmallImageIndex = 19
            end
            object dxItemCancelada: TdxNavBarItem
              Caption = 'Canceladas'
              SmallImageIndex = 20
            end
            object dxNavBar1Item1: TdxNavBarItem
              Caption = 'dxNavBar1Item1'
            end
            object dxItemTodos: TdxNavBarItem
              Caption = 'Todas '
              SmallImageIndex = 18
            end
            object dxnvbrgrpcntrlGroupFiltroControl: TdxNavBarGroupControl
              Left = 13
              Top = 181
              Width = 211
              Height = 194
              Caption = 'dxnvbrgrpcntrlGroupFiltroControl'
              TabOrder = 3
              GroupIndex = 1
              OriginalHeight = 194
              object pnl1: TPanel
                Left = 0
                Top = 159
                Width = 211
                Height = 35
                Align = alBottom
                TabOrder = 0
                ExplicitWidth = 207
                object btnAplicarFiltro: TcxButton
                  Left = 56
                  Top = 4
                  Width = 75
                  Height = 25
                  Caption = '&Aplicar Filtro'
                  TabOrder = 0
                  OnClick = btnAplicarFiltroClick
                end
              end
              object cxPageFiltro: TcxPageControl
                Left = 0
                Top = 0
                Width = 211
                Height = 159
                Align = alClient
                TabOrder = 1
                Properties.ActivePage = cxTabMes
                Properties.CustomButtons.Buttons = <>
                ExplicitWidth = 207
                ClientRectBottom = 155
                ClientRectLeft = 4
                ClientRectRight = 207
                ClientRectTop = 24
                object cxTabAnio: TcxTabSheet
                  Caption = 'A'#241'o'
                  ImageIndex = 0
                  ExplicitLeft = 2
                  ExplicitTop = 28
                  ExplicitHeight = 129
                  object cxSpinAnio: TcxSpinEdit
                    Left = 41
                    Top = 52
                    TabOrder = 0
                    Width = 126
                  end
                  object cxLblAnio: TcxLabel
                    Left = 6
                    Top = 53
                    Caption = 'A'#241'o:'
                    Transparent = True
                  end
                end
                object cxTabMes: TcxTabSheet
                  Caption = 'Mes'
                  ImageIndex = 1
                  ExplicitLeft = 2
                  ExplicitTop = 28
                  ExplicitHeight = 129
                  object dxbrdckcntrl1: TdxBarDockControl
                    Left = 0
                    Top = 0
                    Width = 203
                    Height = 130
                    Align = dalTop
                    BarManager = dxBarManager1
                  end
                end
                object cxTabFechas: TcxTabSheet
                  Caption = 'Rango  Fechas'
                  ImageIndex = 2
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object cxDateNavigator1: TcxDateNavigator
                    Left = 0
                    Top = 0
                    Width = 203
                    Height = 129
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TabOrder = 0
                    OnSelectionChanged = cxDateNavigator1SelectionChanged
                  end
                end
              end
            end
          end
        end
      end
    end
    object cxTabPreview: TcxTabSheet
      Caption = 'Reporte preliminar de factura.'
      ImageIndex = 1
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1350
      ExplicitHeight = 606
      object pnlBoton: TPanel
        Left = 0
        Top = 0
        Width = 1350
        Height = 38
        Align = alTop
        TabOrder = 0
        object btnPrint: TcxButton
          AlignWithMargins = True
          Left = 85
          Top = 4
          Width = 75
          Height = 30
          Align = alLeft
          Caption = 'Imprimir'
          TabOrder = 0
          OnClick = btnPrintClick
        end
        object btnSave: TcxButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 75
          Height = 30
          Align = alLeft
          Caption = '&Guardar...'
          TabOrder = 1
          OnClick = btnSaveClick
        end
      end
      object frxpvFactura: TfrxPreview
        Left = 0
        Top = 38
        Width = 1350
        Height = 568
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        OutlineVisible = False
        OutlineWidth = 120
        ThumbnailVisible = False
        UseReportHints = True
      end
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
    ImageOptions.Images = UDMConection.cxImage16
    ImageOptions.LargeImages = UDMConection.cxImage342
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 896
    Top = 192
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
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonPrevisualizar'
        end
        item
          Visible = True
          ItemName = 'dxButtonExportar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonExportarPDF'
        end
        item
          Visible = True
          ItemName = 'dxButtonExportarXML'
        end
        item
          Visible = True
          ItemName = 'btnEnviarCorreo'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 543
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          ItemName = 'dxBButtonBuscar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEliminar'
        end
        item
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelar'
        end
        item
          Visible = True
          ItemName = 'dxButtonSalir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxbrdckcntrl1
      DockedDockControl = dxbrdckcntrl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 998
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonEne'
        end
        item
          Visible = True
          ItemName = 'dxButtonFeb'
        end
        item
          Visible = True
          ItemName = 'dxButtonMar'
        end
        item
          Visible = True
          ItemName = 'dxButtonAbr'
        end
        item
          Visible = True
          ItemName = 'dxButtonMay'
        end
        item
          Visible = True
          ItemName = 'dxButtonJun'
        end
        item
          Visible = True
          ItemName = 'dxButtonJul'
        end
        item
          Visible = True
          ItemName = 'dxButtonAgo'
        end
        item
          Visible = True
          ItemName = 'dxButtonSep'
        end
        item
          Visible = True
          ItemName = 'dxButtonOct'
        end
        item
          Visible = True
          ItemName = 'dxButtonNov'
        end
        item
          Visible = True
          ItemName = 'dxButtonDic'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 594
      DockedTop = 0
      FloatLeft = 1004
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonTimbrar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelarTimbre'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrOpcionesFactura: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedLeft = 721
      DockedTop = 0
      FloatLeft = 1004
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonMPagda'
        end
        item
          Visible = True
          ItemName = 'dxButtonMPendiente'
        end
        item
          Visible = True
          ItemName = 'btnTimbres'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar2: TdxBar
      Caption = 'MiniBar'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1222
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnInsert'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          Visible = True
          ItemName = 'btnRefresh'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxButtonNuevo: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 0
      ShortCut = 16462
      OnClick = dxButtonNuevoClick
    end
    object dxBButtonEditar: TdxBarButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ShortCut = 16453
      OnClick = dxBButtonEditarClick
    end
    object dxBButtonBuscar: TdxBarButton
      Caption = '&Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 16450
      OnClick = dxBButtonBuscarClick
    end
    object dxBButtonEliminar: TdxBarButton
      Caption = 'Eli&minar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      ImageIndex = 9
      ShortCut = 46
      OnClick = dxBButtonEliminarClick
    end
    object dxButtonGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 8
      ShortCut = 16455
      SyncImageIndex = False
      ImageIndex = 8
    end
    object dxButtonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 116
      OnClick = dxButtonActualizarClick
    end
    object dxButtonCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 115
    end
    object dxButtonSalir: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16499
    end
    object dxButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxButtonExportar: TdxBarLargeButton
      Caption = '&Exportar Listado a Excel'
      Category = 0
      Hint = 'Exportar Listado a Excel'
      Visible = ivAlways
      LargeImageIndex = 12
      ShortCut = 16464
      OnClick = dxButtonExportarClick
    end
    object dxButtonEne: TdxBarLargeButton
      Tag = 1
      Caption = 'Ene'
      Category = 0
      Hint = 'Ene'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonFeb: TdxBarLargeButton
      Tag = 2
      Caption = 'Feb'
      Category = 0
      Hint = 'Feb'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonMar: TdxBarLargeButton
      Tag = 3
      Caption = 'Mar'
      Category = 0
      Hint = 'Mar'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonAbr: TdxBarLargeButton
      Tag = 4
      Caption = 'Abr'
      Category = 0
      Hint = 'Abr'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonMay: TdxBarLargeButton
      Tag = 5
      Caption = 'May'
      Category = 0
      Hint = 'May'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonJun: TdxBarLargeButton
      Tag = 6
      Caption = 'Jun'
      Category = 0
      Hint = 'Jun'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonJul: TdxBarLargeButton
      Tag = 7
      Caption = 'Jul'
      Category = 0
      Hint = 'Jul'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonAgo: TdxBarLargeButton
      Tag = 8
      Caption = 'Ago'
      Category = 0
      Hint = 'Ago'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonSep: TdxBarLargeButton
      Tag = 9
      Caption = 'Sep'
      Category = 0
      Hint = 'Sep'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonOct: TdxBarLargeButton
      Tag = 10
      Caption = 'Oct'
      Category = 0
      Hint = 'Oct'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonNov: TdxBarLargeButton
      Tag = 11
      Caption = 'Nov'
      Category = 0
      Hint = 'Nov'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonDic: TdxBarLargeButton
      Tag = 12
      Caption = 'Dic'
      Category = 0
      Hint = 'Dic'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonTimbrar: TdxBarLargeButton
      Caption = '&Timbrar'
      Category = 0
      Hint = 'Timbrar'
      Visible = ivNever
      LargeImageIndex = 19
    end
    object dxButtonCancelarTimbre: TdxBarLargeButton
      Caption = '&Cancelar Timbre'
      Category = 0
      Hint = 'Cancelar Timbre'
      Visible = ivAlways
      LargeImageIndex = 20
      OnClick = dxButtonCancelarTimbreClick
    end
    object dxBButtonMCancelado: TdxBarButton
      Caption = 'Marcar como cancelado'
      Category = 0
      Hint = 'Marcar como cancelado'
      Visible = ivAlways
      ImageIndex = 20
    end
    object dxBButtonMTimbrada: TdxBarButton
      Caption = 'Marcar como Timbrada'
      Category = 0
      Hint = 'Marcar como Timbrada'
      Visible = ivAlways
      ImageIndex = 19
    end
    object dxBButtonMCreada: TdxBarButton
      Caption = 'Marcar como creada'
      Category = 0
      Hint = 'Marcar como creada'
      Visible = ivAlways
      ImageIndex = 18
    end
    object dxButtonMPagda: TdxBarLargeButton
      Caption = 'Registrar pago'
      Category = 0
      Hint = 'Registrar pago'
      Visible = ivNever
      LargeImageIndex = 27
    end
    object dxButtonMPendiente: TdxBarLargeButton
      Caption = 'Eliminar pago'
      Category = 0
      Hint = 'Eliminar pago'
      Visible = ivNever
      LargeImageIndex = 28
    end
    object dxButtonExportarXML: TdxBarLargeButton
      Caption = 'Exportar &XML'
      Category = 0
      Hint = 'Exportar XML'
      Visible = ivAlways
      LargeImageIndex = 25
      OnClick = dxButtonExportarXMLClick
    end
    object dxButtonExportarPDF: TdxBarLargeButton
      Caption = 'Exportar a &PDF'
      Category = 0
      Hint = 'Exportar a PDF'
      Visible = ivAlways
      LargeImageIndex = 26
      OnClick = dxButtonExportarPDFClick
    end
    object dxButtonPrevisualizar: TdxBarLargeButton
      Caption = '&Previsualizar'
      Category = 0
      Hint = 'Previsualizar'
      Visible = ivAlways
      LargeImageIndex = 24
      OnClick = dxButtonPrevisualizarClick
    end
    object btnTimbres: TdxBarLargeButton
      Caption = '&Timbres usados'
      Category = 0
      Hint = 'Timbres usados'
      Visible = ivNever
      OnClick = btnTimbresClick
    end
    object btnEnviarCorreo: TdxBarLargeButton
      Caption = '&Enviar XML por correo'
      Category = 0
      Hint = 'Enviar XML por correo'
      Visible = ivAlways
      LargeImageIndex = 33
      OnClick = btnEnviarCorreoClick
    end
    object btnInsert: TdxBarLargeButton
      Caption = '&Nueva Parcialidad'
      Category = 0
      Hint = 'Nueva Parcialidad'
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = btnInsertClick
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Caption = '&Editar Parcialidad'
      Category = 0
      Hint = 'Editar Parcialidad'
      Visible = ivAlways
      LargeImageIndex = 3
      OnClick = btnEditClick
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Caption = 'Eli&minar Parcialidad'
      Category = 0
      Hint = 'Eliminar Parcialidad'
      Visible = ivAlways
      LargeImageIndex = 9
      AutoGrayScale = False
    end
    object btnRefresh: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 7
      AutoGrayScale = False
    end
  end
  object dxDockManager1: TdxDockingManager
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
    Left = 896
    Top = 248
    PixelsPerInch = 96
  end
  object zFacturas: TZQuery
    AfterScroll = zFacturasAfterScroll
    Params = <>
    Left = 688
    Top = 384
  end
  object dsFacturas: TDataSource
    DataSet = zFacturas
    Left = 744
    Top = 448
  end
  object dlgSave1: TSaveDialog
    Filter = 'Documento de Microsoft Excel|*.xls'
    Left = 312
    Top = 208
  end
  object dsEmpresa: TDataSource
    Left = 392
    Top = 376
  end
  object zImpuestosFactura: TZQuery
    Params = <>
    Left = 432
    Top = 296
  end
  object zDatosFactura: TZQuery
    Params = <>
    Left = 392
    Top = 472
  end
  object zDetalleFactura: TZQuery
    Params = <>
    Left = 392
    Top = 520
  end
  object zEstatusFactura: TZQuery
    Params = <>
    Left = 848
    Top = 360
  end
  object zDescuentos: TZQuery
    Params = <>
    Left = 376
    Top = 584
  end
  object frxExportPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 664
    Top = 208
  end
  object FrxDbImpuestos: TfrxDBDataset
    UserName = 'FrxDbImpuestos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Descripcion=Descripcion'
      'porcentaje=porcentaje'
      'Subtotal=Subtotal')
    DataSet = zImpuestosFactura
    BCDToCurrency = False
    Left = 304
    Top = 344
  end
  object FrxDbDetalleFactura: TfrxDBDataset
    UserName = 'FrxDbDetalleFactura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cantidad=cantidad'
      'UnidadMedida=UnidadMedida'
      'servicio=servicio'
      'PrecioUnitario=PrecioUnitario'
      'Subtotal=Subtotal')
    DataSet = zDetalleFactura
    BCDToCurrency = False
    Left = 304
    Top = 392
  end
  object frxDbEmpresa: TfrxDBDataset
    UserName = 'frxDbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Logotipo=Logotipo')
    DataSource = dsEmpresa
    BCDToCurrency = False
    Left = 304
    Top = 512
  end
  object frxFactura1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxpvFactura
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42347.754862175900000000
    ReportOptions.LastChange = 42388.985598900500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxFactura1GetValue
    Left = 632
    Top = 272
    Datasets = <
      item
        DataSet = FrxDbDatosFactura
        DataSetName = 'FrxDbDatosFactura'
      end
      item
        DataSet = FrxDbDetalleFactura
        DataSetName = 'FrxDbDetalleFactura'
      end
      item
        DataSet = frxDbEmpresa
        DataSetName = 'frxDbEmpresa'
      end
      item
        DataSet = FrxDbImpuestos
        DataSetName = 'FrxDbImpuestos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        DataSet = FrxDbDetalleFactura
        DataSetName = 'FrxDbDetalleFactura'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDbDetalleFactura."cantidad"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 83.149660000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDbDetalleFactura."UnidadMedida"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 204.094620000000000000
          Width = 355.275820000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDbDetalleFactura."servicio"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 559.370440000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDetalleFactura."PrecioUnitario"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 650.078740160000000000
          Width = 90.708661420000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDetalleFactura."Subtotal"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 366.614410000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        object Memo10: TfrxMemoView
          Left = 3.881880000000000000
          Top = 37.795300000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."NombreEmpresa"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 204.094620000000000000
          Top = 84.929190000000000000
          Width = 234.330860000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'CAlle [FrxDbDatosFactura."calle"] No. Ext. [FrxDbDatosFactura."n' +
              'oExt"] Col. [FrxDbDatosFactura."colonia"] C.P. [FrxDbDatosFactur' +
              'a."cp"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 204.315090000000000000
          Top = 164.299320000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel: [FrxDbDatosFactura."TelEmpresa"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 204.196970000000000000
          Top = 69.031540000000010000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RFC: [FrxDbDatosFactura."rfcEmpresa"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 83.149611180000000000
          Top = 340.157700000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDAD DE MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Top = 340.157700000000000000
          Width = 355.275820000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 340.157700000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 192.756030000000000000
          Height = 120.944960000000000000
          ShowHint = True
          DataField = 'Logotipo'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 559.370440000000000000
          Top = 340.157700000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P. UNITARIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Width = 740.787880000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA ELECTR'#211'NICA(CFDI)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 646.299630000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FACTURA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 642.520100000000000000
          Top = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Folio Fiscal:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Top = 126.724490000000000000
          Width = 294.803340000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'No de serie del Certificado del CSD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 532.913730000000000000
          Top = 162.519790000000000000
          Width = 204.094620000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha y hora de emisi'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Top = 83.149660000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."IdFactura"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 442.205010000000000000
          Top = 117.165430000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."FolioFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 442.205010000000000000
          Top = 154.960730000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."SerieCSD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 532.913730000000000000
          Top = 192.756030000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."FechaHoraEmision"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Top = 192.756030000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'LUGAR DE EXPEDICI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 173.858380000000000000
          Top = 192.756030000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."LugarExpedicion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 219.212740000000000000
          Width = 737.008350000000000000
          ShowHint = False
          Frame.Color = 12615680
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 222.992270000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RECEPTOR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 105.826840000000000000
          Top = 220.992270000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."Receptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Top = 241.889920000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RFC CLIENTE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 105.826840000000000000
          Top = 241.889920000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."rfcReceptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 3.779530000000000000
          Top = 260.787570000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DIRECCION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 105.826840000000000000
          Top = 260.787570000000000000
          Width = 627.401980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."DireccionReceptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 313.700990000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TELEF'#211'NO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 105.826840000000000000
          Top = 313.700990000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."TelReceptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 650.078740157480100000
          Top = 340.157700000000000000
          Width = 90.708661417322800000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 956.221090000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Left = 600.945270000000000000
          Top = 3.779529999999908000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Efectos Fiscales al pago')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 737.008350000000000000
          ShowHint = False
          Frame.Color = 12615680
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo61: TfrxMemoView
          Left = -3.779530000000000000
          Top = 3.779530000000022000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxDbDatosFactura."FormaPago"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 215.433210000000000000
          Top = 3.779529999999908000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Esta es una representaci'#243'n impresa de un CFDI')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 899.528140000000000000
        Width = 740.409927000000000000
        object Memo59: TfrxMemoView
          Left = 154.960730000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 12615680
          HAlign = haRight
          Memo.UTF8W = (
            'No de Serie del certificado del SAT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 151.181200000000000000
          Top = 15.118119999999980000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha y hora de Certificaci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 396.850650000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxDbDatosFactura."SerieSAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."FechaHoraCertificado"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 384.157700000000000000
        Top = 453.543600000000000000
        Width = 740.409927000000000000
        object Subreport1: TfrxSubreport
          Left = 559.370440000000000000
          Top = 60.472479999999960000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxFactura1.Page2
        end
        object Memo36: TfrxMemoView
          Left = 166.299320000000000000
          Top = 7.559059999999988000
          Width = 381.732530000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '( [CANTIDADTOTAL] )')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 559.370440000000000000
          Top = 7.559055119999982000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'SUBTOTAL    :')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 559.370440000000000000
          Top = 25.322834650000000000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'DESCUENTO :')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 559.370440000000000000
          Top = 41.574803149999980000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'SUBTOTAL    :')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 559.370440000000000000
          Top = 128.504020000000000000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'TOTAL           :')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.559055119999982000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."Subtotal"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 650.079160000000000000
          Top = 25.322834650000000000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."descuentos"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 650.079160000000000000
          Top = 41.574803149999980000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUBTOTAL]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 650.079160000000000000
          Top = 128.504020000000000000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbDatosFactura."TotalFactura"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 7.338590000000010000
          Width = 143.622140000000000000
          Height = 124.724490000000000000
          ShowHint = False
          DataField = 'qr'
          DataSet = FrxDbDatosFactura
          DataSetName = 'FrxDbDatosFactura'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo49: TfrxMemoView
          Left = 166.299320000000000000
          Top = 55.574830000000020000
          Width = 120.189054000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'M'#201'TODO DE PAGO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 285.732468000000000000
          Top = 55.574830000000020000
          Width = 262.299382000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."MetodoPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 226.771800000000000000
          Top = 74.472479999999960000
          Width = 318.992332000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxDbDatosFactura."regimenFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 166.299320000000000000
          Top = 74.472479999999960000
          Width = 120.189054000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'R'#201'GIMEN:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 3.779530000000000000
          Top = 202.740260000000000000
          Width = 175.370192000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Sello Digital del CFDI:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 153.606370000000000000
          Width = 175.370192000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Sello SAT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 3.779530000000000000
          Top = 255.653679999999900000
          Width = 447.496352000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cadena Original de Complemento de certificaci'#243'n digital del SAT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Top = 172.504020000000000000
          Width = 733.228820000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxDbDatosFactura."SelloSAT"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 3.779530000000000000
          Top = 221.637910000000000000
          Width = 725.669760000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxDbDatosFactura."SelloCFDI"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 274.551329999999900000
          Width = 725.669760000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxDbDatosFactura."CadenaSAT"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Top = 309.921459999999900000
          Width = 725.669760000000000000
          Height = 68.031540000000010000
          ShowHint = False
          Shape = skRoundRectangle
        end
        object FrxDbDatosFacturaComentarios: TfrxMemoView
          Left = 11.338590000000000000
          Top = 328.819109999999900000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'Comentarios'
          DataSet = FrxDbDatosFactura
          DataSetName = 'FrxDbDatosFactura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxDbDatosFactura."Comentarios"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 306.141929999999900000
          Width = 175.370192000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Comentarios:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        DataSet = FrxDbImpuestos
        DataSetName = 'FrxDbImpuestos'
        RowCount = 0
        object Memo40: TfrxMemoView
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[FrxDbImpuestos."Descripcion"] [FrxDbImpuestos."porcentaje"] %  ' +
              '$:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 17.385838000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbImpuestos."Subtotal"]')
          ParentFont = False
        end
      end
    end
  end
  object FolderDlg1: TFolderDialog
    DialogX = 0
    DialogY = 0
    Version = '1.1.0.1'
    Left = 472
    Top = 376
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 488
    Top = 312
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvSSLv2, sslvSSLv3, sslvTLSv1]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 312
    Top = 280
  end
  object FrxDbDatosFactura: TfrxDBDataset
    UserName = 'FrxDbDatosFactura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdFactura=IdFactura'
      'Titulo=NombreEmpresa'
      'rfcEmpresa=rfcEmpresa'
      'regimenFiscal=regimenFiscal'
      'Receptor=Receptor'
      'rfcReceptor=rfcReceptor'
      'LugarExpedicion=LugarExpedicion'
      'ciudad=ciudad'
      'estado=estado'
      'pais=pais'
      'TelEmpresa=TelEmpresa'
      'calle=calle'
      'colonia=colonia'
      'noInt=noInt'
      'noExt=noExt'
      'cp=cp'
      'DireccionReceptor=DireccionReceptor'
      'TelReceptor=TelReceptor'
      'FolioFiscal=FolioFiscal'
      'SelloCFDI=SelloCFDI'
      'SelloSAT=SelloSAT'
      'CadenaSAT=CadenaSAT'
      'xml=xml'
      'qr=qr'
      'FormaPago=FormaPago'
      'MetodoPago=MetodoPago'
      'SerieSAT=SerieSAT'
      'SerieCSD=SerieCSD'
      'NoCertificadoSAT=NoCertificadoSAT'
      'TotalFactura=TotalFactura'
      'FechaHoraCertificado=FechaHoraCertificado'
      'FechaHoraEmision=FechaHoraEmision'
      'Subtotal=Subtotal'
      'descuentos=descuentos'
      'codigoMoneda=CodigoMoneda'
      'Comentarios=Comentarios')
    DataSet = zDatosFactura
    BCDToCurrency = False
    Left = 296
    Top = 448
  end
  object dxPmFacturas: TdxBarPopupMenu
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
        ItemName = 'dxBButtonBuscar'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEliminar'
      end
      item
        Visible = True
        ItemName = 'dxButtonActualizar'
      end>
    UseOwnFont = False
    Left = 416
    Top = 224
  end
  object zFacturasParciales: TZQuery
    Params = <>
    Left = 600
    Top = 560
  end
  object dsFacturasParciales: TDataSource
    DataSet = zFacturasParciales
    Left = 600
    Top = 608
  end
end
