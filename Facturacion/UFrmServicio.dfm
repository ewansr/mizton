inherited FrmServicio: TFrmServicio
  Caption = 'Servicios'
  ClientHeight = 587
  ClientWidth = 1156
  FormStyle = fsNormal
  Visible = False
  OnCreate = FormCreate
  ExplicitWidth = 1172
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 1156
    Height = 492
    ExplicitWidth = 1156
    ExplicitHeight = 490
    DockingType = 5
    OriginalWidth = 1156
    OriginalHeight = 490
    inherited dxlytdckst1: TdxLayoutDockSite
      Width = 1156
      Height = 492
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    inherited dxHorizContainerDockSite1: TdxHorizContainerDockSite
      Width = 1156
      Height = 492
      ExplicitWidth = 1156
      ExplicitHeight = 490
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      inherited dxDockGrid: TdxDockPanel
        Width = 598
        Height = 492
        ExplicitLeft = 281
        ExplicitWidth = 528
        ExplicitHeight = 377
        DockingType = 1
        OriginalWidth = 598
        OriginalHeight = 140
      end
      inherited dxDockDatos: TdxDockPanel
        Left = 598
        Width = 558
        Height = 492
        ExplicitLeft = 598
        ExplicitWidth = 558
        ExplicitHeight = 377
        DockingType = 1
        OriginalWidth = 558
        OriginalHeight = 140
        inherited cxPageDatos: TcxPageControl
          Width = 552
          Height = 459
          Properties.ActivePage = cxPrecio
          ExplicitWidth = 481
          ExplicitHeight = 446
          ClientRectBottom = 453
          ClientRectRight = 550
          inherited cxTsDatos: TcxTabSheet
            Tag = 1
            Caption = 'Servicios/Productos'
            ExplicitTop = 28
            ExplicitWidth = 477
            ExplicitHeight = 416
            inherited dxLYCDatos: TdxLayoutControl
              Width = 548
              Height = 422
              ExplicitWidth = 477
              ExplicitHeight = 416
              object cxDBImage1: TcxDBImage [0]
                Tag = -1
                Left = 11
                Top = 262
                DataBinding.DataField = 'Imagen'
                DataBinding.DataSource = dsDatosUpt
                Properties.Caption = '< Doble clic para cargar Imagen>'
                Properties.GraphicClassName = 'TdxSmartImage'
                Properties.GraphicTransparency = gtTransparent
                Properties.PopupMenuLayout.MenuItems = []
                Style.HotTrack = False
                TabOrder = 7
                OnDblClick = cxDBImage1DblClick
                Height = 201
                Width = 418
              end
              object cxdbdtdtFecha: TcxDBDateEdit [1]
                Tag = -1
                Left = 117
                Top = 11
                DataBinding.DataField = 'FechaRegistro'
                DataBinding.DataSource = dsDatosUpt
                ParentShowHint = False
                Properties.AssignedValues.DisplayFormat = True
                Properties.DateButtons = [btnToday]
                ShowHint = False
                Style.HotTrack = False
                TabOrder = 0
                Width = 312
              end
              object cbbTipo: TcxDBComboBox [2]
                Tag = -1
                Left = 117
                Top = 38
                DataBinding.DataField = 'Tipo'
                DataBinding.DataSource = dsDatosUpt
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  'SERVICIO'
                  'PRODUCTO')
                Properties.MaxLength = 0
                Properties.OnChange = cbbTipoPropertiesChange
                Style.HotTrack = False
                TabOrder = 1
                Width = 312
              end
              object cxtextServicio: TcxDBTextEdit [3]
                Tag = -1
                Left = 117
                Top = 92
                DataBinding.DataField = 'Servicio'
                DataBinding.DataSource = dsDatosUpt
                Properties.MaxLength = 100
                Style.HotTrack = False
                TabOrder = 4
                Width = 312
              end
              object cxdbmDescripciona: TcxDBMemo [4]
                Tag = -1
                Left = 117
                Top = 146
                DataBinding.DataField = 'Descripcion'
                DataBinding.DataSource = dsDatosUpt
                Properties.MaxLength = 255
                Style.HotTrack = False
                TabOrder = 6
                Height = 89
                Width = 312
              end
              object cxtextCodigos: TcxDBTextEdit [5]
                Tag = -2
                Left = 117
                Top = 119
                DataBinding.DataField = 'Codigo'
                DataBinding.DataSource = dsDatosUpt
                Properties.MaxLength = 20
                Style.HotTrack = False
                TabOrder = 5
                Width = 312
              end
              object cbbUnidadMedida: TcxDBLookupComboBox [6]
                Tag = -1
                Left = 117
                Top = 65
                DataBinding.DataField = 'IdUnidadMedida'
                DataBinding.DataSource = dsDatosUpt
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'IdUnidadMedida'
                Properties.ListColumns = <
                  item
                    FieldName = 'Unidad'
                  end>
                Properties.ListSource = dsMedida
                Style.HotTrack = False
                TabOrder = 2
                Width = 285
              end
              object btnMas: TcxButton [7]
                Left = 408
                Top = 65
                Width = 21
                Height = 21
                Caption = 'btnMas'
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = UDMConection.cxImage16
                PaintStyle = bpsGlyph
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.Flat = True
                SpeedButtonOptions.Transparent = True
                TabOrder = 3
                OnClick = btnMasClick
              end
              inherited dxLyDatos: TdxLayoutGroup
                Index = -1
              end
              object dxLYCDatosItem7: TdxLayoutItem
                Parent = dxLyDatos
                AlignHorz = ahClient
                CaptionOptions.Text = 'Imagen:'
                CaptionOptions.Layout = clTop
                Control = cxDBImage1
                ControlOptions.ShowBorder = False
                Index = 6
              end
              object dxLYCDatosItem4: TdxLayoutItem
                Parent = dxLyDatos
                CaptionOptions.Text = 'Fecha Registro'
                Control = cxdbdtdtFecha
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLYCDatosItem6: TdxLayoutItem
                Parent = dxLyDatos
                CaptionOptions.Text = 'Tipo'
                Control = cbbTipo
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLYCDatosItem2: TdxLayoutItem
                Parent = dxLyDatos
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Servicio:'
                Control = cxtextServicio
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLYCDatosItem3: TdxLayoutItem
                Parent = dxLyDatos
                CaptionOptions.Text = 'Descripci'#243'n'
                Control = cxdbmDescripciona
                ControlOptions.ShowBorder = False
                Index = 5
              end
              object dxLYCDatosItem1: TdxLayoutItem
                Parent = dxLyDatos
                CaptionOptions.Text = 'Codigo'
                Control = cxtextCodigos
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLYCDatosItem5: TdxLayoutItem
                Parent = dxlytcrtdgrpLYCDatosGroup1
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Unidad de Medida'
                Control = cbbUnidadMedida
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxlytmLYCDatosItem8: TdxLayoutItem
                Parent = dxlytcrtdgrpLYCDatosGroup1
                CaptionOptions.Visible = False
                Control = btnMas
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxlytcrtdgrpLYCDatosGroup1: TdxLayoutAutoCreatedGroup
                Parent = dxLyDatos
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
            end
          end
          object cxPrecio: TcxTabSheet
            Tag = 1
            Caption = 'Lista de Precio'
            ImageIndex = 1
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 36
              Width = 548
              Height = 119
              Align = alTop
              TabOrder = 0
              Visible = False
              LayoutLookAndFeel = UDMConection.dxStyleForms
              ExplicitWidth = 477
              object cbbAplicarIva: TcxDBComboBox
                Tag = -1
                Left = 113
                Top = 38
                DataBinding.DataField = 'AplicarIVA'
                DataBinding.DataSource = dsDatosUptPrecio
                Properties.Items.Strings = (
                  'SI'
                  'NO')
                Properties.MaxLength = 0
                Properties.OnChange = cbbAplicarIvaPropertiesChange
                Style.HotTrack = False
                TabOrder = 1
                Width = 289
              end
              object cxSpinPrecio: TcxDBSpinEdit
                Tag = -1
                Left = 113
                Top = 11
                DataBinding.DataField = 'Precio'
                DataBinding.DataSource = dsDatosUptPrecio
                Properties.AssignedValues.EditFormat = True
                Properties.ValueType = vtFloat
                Style.HotTrack = False
                TabOrder = 0
                Width = 289
              end
              object cxtextIdServicio: TcxDBTextEdit
                Left = 11
                Top = 119
                DataBinding.DataField = 'IdServicio'
                DataBinding.DataSource = dsDatosUpt
                Enabled = False
                Properties.OnChange = cxtextIdServicioPropertiesChange
                Style.Color = clWindowFrame
                Style.HotTrack = False
                TabOrder = 4
                Width = 391
              end
              object cxSpinIVA: TcxDBSpinEdit
                Tag = -1
                Left = 113
                Top = 65
                DataBinding.DataField = 'IVA'
                DataBinding.DataSource = dsDatosUptPrecio
                Properties.ValueType = vtFloat
                Style.HotTrack = False
                TabOrder = 2
                Width = 289
              end
              object cxdbdtdtFechaReg: TcxDBDateEdit
                Tag = -1
                Left = 113
                Top = 92
                DataBinding.DataField = 'FechaAplicacion'
                DataBinding.DataSource = dsDatosUptPrecio
                Properties.DateButtons = [btnClear, btnToday]
                Style.HotTrack = False
                TabOrder = 3
                Width = 289
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutControl1Item3: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                CaptionOptions.Text = 'Aplicar IVA:'
                Control = cbbAplicarIva
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Item1: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                CaptionOptions.Text = 'Precio:'
                Control = cxSpinPrecio
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahClient
                CaptionOptions.Visible = False
                Visible = False
                Control = cxtextIdServicio
                ControlOptions.ShowBorder = False
                Enabled = False
                Index = 4
              end
              object dxLayoutControl1Item4: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahLeft
                CaptionOptions.Text = 'IVA:'
                Control = cxSpinIVA
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Fecha Aplicaci'#243'n:'
                Control = cxdbdtdtFechaReg
                ControlOptions.ShowBorder = False
                Index = 3
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 548
              Height = 36
              Align = alTop
              TabOrder = 1
              object dxBarDockControl1: TdxBarDockControl
                Left = 1
                Top = 1
                Width = 546
                Height = 26
                Align = dalTop
                BarManager = dxBarManager1
              end
            end
            object cxGrid1: TcxGrid
              Left = 0
              Top = 155
              Width = 548
              Height = 267
              Align = alClient
              Enabled = False
              TabOrder = 2
              ExplicitWidth = 477
              ExplicitHeight = 261
              object cxDatosPrecios: TcxGridDBTableView
                OnKeyDown = cxDatosPreciosKeyDown
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = cxDatosPreciosCellDblClick
                DataController.DataSource = dsDatosPrecio
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                Styles.Content = UDMConection.cxstylContent
                Styles.Header = UDMConection.cxstylHeader
                object cxDatosPreciosColumn1: TcxGridDBColumn
                  Tag = 1
                  Caption = 'Precio $'
                  DataBinding.FieldName = 'Precio'
                  Width = 92
                end
                object cxDatosPreciosColumn3: TcxGridDBColumn
                  Tag = 1
                  Caption = 'Aplicar IVA'
                  DataBinding.FieldName = 'AplicarIVA'
                  Width = 124
                end
                object cxDatosPreciosColumn4: TcxGridDBColumn
                  Tag = 1
                  DataBinding.FieldName = 'IVA'
                  Width = 112
                end
                object cxDatosPreciosColumn5: TcxGridDBColumn
                  Tag = 1
                  Caption = 'Fecha:'
                  DataBinding.FieldName = 'FechaAplicacion'
                  Width = 113
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxDatosPrecios
              end
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 1156
    ExplicitWidth = 1156
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    MenusShowRecentItemsFirst = False
    ShowHint = False
    ShowHintForDisabledItems = False
    UseBarHintWindow = False
    UseF10ForMenu = False
    Left = 520
    Top = 368
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientWidth = 153
      FloatClientHeight = 339
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
          ItemName = 'dxBButtonEliminar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonBuscar'
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonDetalle'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          Visible = True
          ItemName = 'dxButtonExportar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonSalir'
        end>
    end
    object dxBarManager1Bar1: TdxBar [2]
      Caption = 'Precio'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 947
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAgregar'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnEliminar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnActualizar'
        end
        item
          Visible = True
          ItemName = 'btnAnadir'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
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
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
    object btnAgregar: TdxBarButton
      Tag = 1
      Caption = '&A'#241'adir'
      Category = 0
      Enabled = False
      Hint = 'A'#241'adir'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btnAgregarClick
    end
    object btnEditar: TdxBarButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btnEditarClick
    end
    object btnEliminar: TdxBarButton
      Caption = '&Eliminar'
      Category = 0
      Enabled = False
      Hint = 'Eliminar'
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btnEliminarClick
    end
    object btnAnadir: TdxBarButton
      Caption = '&Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnAnadirClick
    end
    object btnCancelar: TdxBarButton
      Caption = '&Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancelar'
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btnCancelarClick
    end
    object btnActualizar: TdxBarButton
      Caption = '&Actualizar'
      Category = 0
      Enabled = False
      Hint = 'Actualizar'
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = btnActualizarClick
    end
  end
  inherited dsDatos: TDataSource
    Left = 680
    Top = 216
  end
  inherited zDatos: TZQuery
    Connection = UDMConection.conBD
    Left = 680
    Top = 168
  end
  inherited zDatosUpt: TZQuery
    Connection = UDMConection.conBD
    Left = 632
    Top = 168
  end
  inherited dsDatosUpt: TDataSource
    Left = 632
    Top = 224
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 568
    Top = 320
    PixelsPerInch = 96
  end
  inherited cxHintStyleController: TcxHintStyleController
    Left = 808
    Top = 328
  end
  object zMedida: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 576
    Top = 168
  end
  object dsMedida: TDataSource
    DataSet = zMedida
    Left = 576
    Top = 224
  end
  object zDatosPrecio: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 776
    Top = 168
  end
  object dsDatosPrecio: TDataSource
    DataSet = zDatosPrecio
    Left = 520
    Top = 216
  end
  object zDatosUptPrecio: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 520
    Top = 168
  end
  object dsDatosUptPrecio: TDataSource
    DataSet = zDatosUptPrecio
    Left = 784
    Top = 216
  end
  object zProducto: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 728
    Top = 168
  end
  object dsProducto: TDataSource
    DataSet = zProducto
    Left = 728
    Top = 224
  end
end
