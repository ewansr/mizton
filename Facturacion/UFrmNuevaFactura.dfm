object FrmNuevaFactura: TFrmNuevaFactura
  Left = 0
  Top = 0
  Caption = 'FrmNuevaFactura'
  ClientHeight = 604
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1041
    Height = 97
    BarManager = dxBarManager1
    ColorSchemeName = 'Office2013White'
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitLeft = -168
    ExplicitWidth = 1086
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Nombre Cat'#225'logo'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxbrManager1Bar'
        end>
      Index = 0
    end
  end
  object pnlDetalleFactura: TPanel
    Left = 0
    Top = 144
    Width = 1041
    Height = 328
    Align = alClient
    Caption = 'pnlDetalleFactura'
    TabOrder = 5
    ExplicitTop = 135
    ExplicitHeight = 337
  end
  object pnlImpuestoFactura: TPanel
    Left = 0
    Top = 472
    Width = 1041
    Height = 132
    Align = alBottom
    Caption = 'pnlImpuestoFactura'
    TabOrder = 6
  end
  object pnlEncabezadoFactura: TPanel
    Left = 0
    Top = 97
    Width = 1041
    Height = 47
    Align = alTop
    TabOrder = 7
    object dxLYC1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 1039
      Height = 45
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitWidth = 1024
      ExplicitHeight = 40
      object cbbCliente: TcxDBLookupComboBox
        Left = 52
        Top = 10
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 365
      end
      object dxLyLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxlytmLYC1Item1: TdxLayoutItem
        Parent = dxLyLayoutControl1Group_Root
        CaptionOptions.Text = 'Cliente:'
        Control = cbbCliente
        ControlOptions.ShowBorder = False
        Index = 0
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
    Left = 936
    Top = 32
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
          ItemName = 'dxButtonGuardar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonPrevisualizar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
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
    end
    object dxBButtonEditar: TdxBarButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ShortCut = 16453
    end
    object dxBButtonBuscar: TdxBarButton
      Caption = '&Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 16450
    end
    object dxBButtonEliminar: TdxBarButton
      Caption = 'Eli&minar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      ImageIndex = 9
      ShortCut = 46
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
      LargeImageIndex = 6
      ShortCut = 16464
    end
    object dxButtonEne: TdxBarLargeButton
      Caption = 'Ene'
      Category = 0
      Hint = 'Ene'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonFeb: TdxBarLargeButton
      Caption = 'Feb'
      Category = 0
      Hint = 'Feb'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonMar: TdxBarLargeButton
      Caption = 'Mar'
      Category = 0
      Hint = 'Mar'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonAbr: TdxBarLargeButton
      Caption = 'Abr'
      Category = 0
      Hint = 'Abr'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonMay: TdxBarLargeButton
      Caption = 'May'
      Category = 0
      Hint = 'May'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonJun: TdxBarLargeButton
      Caption = 'Jun'
      Category = 0
      Hint = 'Jun'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonJul: TdxBarLargeButton
      Caption = 'Jul'
      Category = 0
      Hint = 'Jul'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonAgo: TdxBarLargeButton
      Caption = 'Ago'
      Category = 0
      Hint = 'Ago'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonSep: TdxBarLargeButton
      Caption = 'Sep'
      Category = 0
      Hint = 'Sep'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonOct: TdxBarLargeButton
      Caption = 'Oct'
      Category = 0
      Hint = 'Oct'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonNov: TdxBarLargeButton
      Caption = 'Nov'
      Category = 0
      Hint = 'Nov'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxButtonDic: TdxBarLargeButton
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
      Visible = ivAlways
    end
    object dxButtonCancelarTimbre: TdxBarLargeButton
      Caption = '&Cancelar Timbre'
      Category = 0
      Hint = 'Cancelar Timbre'
      Visible = ivAlways
    end
    object dxBButtonMCancelado: TdxBarButton
      Caption = 'Marcar como cancelado'
      Category = 0
      Hint = 'Marcar como cancelado'
      Visible = ivAlways
    end
    object dxBButtonMTimbrada: TdxBarButton
      Caption = 'Marcar como Timbrada'
      Category = 0
      Hint = 'Marcar como Timbrada'
      Visible = ivAlways
    end
    object dxBButtonMCreada: TdxBarButton
      Caption = 'Marcar como creada'
      Category = 0
      Hint = 'Marcar como creada'
      Visible = ivAlways
    end
    object dxButtonMPagda: TdxBarLargeButton
      Caption = 'Marcar como pagada'
      Category = 0
      Hint = 'Marcar como pagada'
      Visible = ivAlways
    end
    object dxButtonMPendiente: TdxBarLargeButton
      Caption = 'Marcar como pendiente'
      Category = 0
      Hint = 'Marcar como pendiente'
      Visible = ivAlways
    end
    object dxButtonExportarXML: TdxBarLargeButton
      Caption = 'Exportar &XML'
      Category = 0
      Hint = 'Exportar XML'
      Visible = ivAlways
    end
    object dxButtonExportarPDF: TdxBarLargeButton
      Caption = 'Exportar a &PDF'
      Category = 0
      Hint = 'Exportar a PDF'
      Visible = ivAlways
    end
    object dxButtonPrevisualizar: TdxBarLargeButton
      Caption = '&Previsualizar'
      Category = 0
      Hint = 'Previsualizar'
      Visible = ivAlways
    end
  end
end
