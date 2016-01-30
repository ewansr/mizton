object FrmAbrirEmpresa: TFrmAbrirEmpresa
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Seleccionar Empresa'
  ClientHeight = 246
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lstEmpresas: TcxDBTreeList
    Left = 0
    Top = 58
    Width = 438
    Height = 188
    BorderStyle = cxcbsNone
    Align = alClient
    Bands = <
      item
        Caption.Text = 'Empresas'
      end>
    DataController.DataSource = dsEmpresa
    DataController.ImageIndexField = 'imgIndex'
    DataController.ParentField = 'IdPadre'
    DataController.KeyField = 'IdEmpresa'
    Images = UDMConection.cxImageOtros
    Navigator.Buttons.CustomButtons = <>
    OptionsSelection.CellSelect = False
    RootValue = -1
    Styles.Content = UDMConection.cxstylContent
    Styles.BandHeader = UDMConection.cxstylHeader
    Styles.ColumnHeader = UDMConection.cxstylHeader
    TabOrder = 0
    object cxColumnRazonSocial: TcxDBTreeListColumn
      PropertiesClassName = 'TcxLabelProperties'
      DataBinding.FieldName = 'Titulo'
      Width = 207
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxColumnRfc: TcxDBTreeListColumn
      PropertiesClassName = 'TcxLabelProperties'
      DataBinding.FieldName = 'RFC'
      Width = 114
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxColumnRegPät: TcxDBTreeListColumn
      PropertiesClassName = 'TcxLabelProperties'
      DataBinding.FieldName = 'RegPatronal'
      Width = 108
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxColumnImgIndex: TcxDBTreeListColumn
      PropertiesClassName = 'TcxImageProperties'
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ReadOnly = True
      Visible = False
      Caption.Text = '...'
      DataBinding.FieldName = 'ImgIndex'
      Width = 28
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object btnAbort: TcxButton
    Left = 360
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btnAbort'
    ModalResult = 3
    TabOrder = 3
    Visible = False
  end
  object btn1: TcxButton
    Left = 256
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 5
    Visible = False
    OnClick = btn1Click
  end
  object btn2: TcxButton
    Left = 337
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
    Visible = False
  end
  object zEmpresa: TZQuery
    Params = <>
    Left = 224
    Top = 8
  end
  object dsEmpresa: TDataSource
    DataSet = zEmpresa
    Left = 168
    Top = 8
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
    Left = 288
    Top = 8
    DockControlHeights = (
      0
      0
      58
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 507
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonAbiri'
        end
        item
          Visible = True
          ItemName = 'dxButtonCerrar'
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
    object dxButtonAbiri: TdxBarLargeButton
      Caption = '&Abrir'
      Category = 0
      Hint = 'Abrir'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = dxButtonAbiriClick
      AutoGrayScale = False
    end
    object dxButtonCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = dxButtonCerrarClick
      AutoGrayScale = False
    end
  end
end
