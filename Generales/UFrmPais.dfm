inherited FrmPais: TFrmPais
  Caption = 'Cat'#225'logo de Pais'
  ClientHeight = 522
  ClientWidth = 594
  OnCreate = FormCreate
  ExplicitWidth = 600
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 594
    ExplicitWidth = 594
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Pa'#237's'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 583
    Height = 249
    ExplicitWidth = 583
    ExplicitHeight = 249
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxGridDatosColumn1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 107
      end
      object cxColumnGridDatosColumn2: TcxGridDBColumn
        Tag = 1
        Caption = 'Pa'#237's'
        DataBinding.FieldName = 'Pais'
        Width = 221
      end
      object cxColumnImagen: TcxGridDBColumn
        Tag = 1
        Caption = 'Bandera'
        DataBinding.FieldName = 'ImagenP'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TdxSmartImage'
        Width = 171
      end
      object cxColumnGridDatosColumn3: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 105
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 377
    Width = 594
    Height = 145
    ExplicitTop = 377
    ExplicitWidth = 594
    ExplicitHeight = 145
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 141
      ExplicitWidth = 590
      ExplicitHeight = 141
      ClientRectBottom = 135
      ClientRectRight = 584
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 582
        ExplicitHeight = 108
        inherited dxLYCDatos: TdxLayoutControl
          Width = 582
          Height = 108
          ExplicitWidth = 582
          ExplicitHeight = 108
          object cxtextCodigo: TcxDBTextEdit [0]
            Tag = -1
            Left = 57
            Top = 11
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 20
            Style.HotTrack = False
            TabOrder = 0
            Width = 281
          end
          object cxtextPais: TcxDBTextEdit [1]
            Tag = -1
            Left = 57
            Top = 38
            DataBinding.DataField = 'Pais'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 50
            Style.HotTrack = False
            TabOrder = 1
            Width = 281
          end
          object imgPaisBandera: TcxDBImage [2]
            Tag = -1
            AlignWithMargins = True
            Left = 344
            Top = 11
            DataBinding.DataField = 'ImagenP'
            DataBinding.DataSource = dsDatosUpt
            Properties.Caption = '<Doble clic para cargar Imagen>'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.GraphicTransparency = gtTransparent
            Properties.PopupMenuLayout.MenuItems = []
            Style.HotTrack = False
            TabOrder = 2
            Transparent = True
            OnDblClick = imgPaisBanderaDblClick
            Height = 82
            Width = 146
          end
          inherited dxLyDatos: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxtextCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosItem2: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Pa'#237's'
            Control = cxtextPais
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosItem3: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Layout = clTop
            Control = imgPaisBandera
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 0
            AutoCreated = True
          end
        end
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Height = 255
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
  inherited zDatos: TZQuery
    Connection = UDMConection.conBD
  end
  inherited zDatosUpt: TZQuery
    Connection = UDMConection.conBD
  end
  inherited dlgSave1: TSaveDialog
    Left = 184
  end
end
