inherited FrmBancos: TFrmBancos
  Caption = 'Cat'#225'logos de Bancos'
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
      Caption = 'Cat'#225'logos de Bancos'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 232
    ExplicitWidth = 588
    ExplicitHeight = 232
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnCodigo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Codigo'
        Width = 109
      end
      object cxColumnBanco: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Banco'
        Width = 131
      end
      object cxGridDatosColumn1: TcxGridDBColumn
        Tag = 1
        Caption = 'Razon Social'
        DataBinding.FieldName = 'RazonSocial'
        Width = 261
      end
      object cxColumnLogo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Logo'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TdxSmartImage'
        Properties.GraphicTransparency = gtTransparent
        Width = 73
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 70
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 360
    Width = 594
    Height = 162
    ExplicitTop = 360
    ExplicitWidth = 594
    ExplicitHeight = 162
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 158
      ExplicitWidth = 590
      ExplicitHeight = 158
      ClientRectBottom = 156
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 586
        ExplicitHeight = 128
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 128
          ExplicitWidth = 586
          ExplicitHeight = 128
          object imgPaisBancos: TcxDBImage [0]
            Tag = -1
            Left = 407
            Top = 10
            DataBinding.DataField = 'Logo'
            DataBinding.DataSource = dsDatosUpt
            Properties.Caption = 'Doble clic para cargar Imagen'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.GraphicTransparency = gtTransparent
            Properties.PopupMenuLayout.MenuItems = []
            Style.HotTrack = False
            TabOrder = 3
            OnDblClick = imgPaisBancosDblClick
            Height = 95
            Width = 170
          end
          object cxtextCodigo: TcxDBTextEdit [1]
            Tag = -2
            Left = 88
            Top = 10
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 20
            Style.HotTrack = False
            TabOrder = 0
            Width = 313
          end
          object cxtextBanco: TcxDBTextEdit [2]
            Tag = -1
            Left = 88
            Top = 37
            DataBinding.DataField = 'Banco'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 50
            Style.HotTrack = False
            TabOrder = 1
            Width = 313
          end
          object cxtextRazonSocial: TcxDBTextEdit [3]
            Tag = -1
            Left = 88
            Top = 64
            DataBinding.DataField = 'RazonSocial'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object dxLYCDatosItem3: TdxLayoutItem
            Parent = dxLyDatos
            AlignHorz = ahClient
            CaptionOptions.Layout = clTop
            Control = imgPaisBancos
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 0
            AutoCreated = True
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxtextCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosItem2: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Banco'
            Control = cxtextBanco
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosItem6: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Raz'#243'n Social'
            Control = cxtextRazonSocial
            ControlOptions.ShowBorder = False
            Index = 2
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
  inherited zDatos: TZQuery
    Connection = UDMConection.conBD
    ReadOnly = True
  end
  inherited zDatosUpt: TZQuery
    Connection = UDMConection.conBD
  end
  object zPais: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 288
    Top = 248
  end
  object dsPais: TDataSource
    DataSet = zPais
    Left = 336
    Top = 248
  end
end
