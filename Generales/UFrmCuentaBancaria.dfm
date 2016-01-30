inherited FrmCuentaBancaria: TFrmCuentaBancaria
  Caption = 'Cuenta Bancaria'
  OnCreate = FormCreate
  ExplicitWidth = 929
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockingType = 5
    OriginalWidth = 913
    OriginalHeight = 375
    inherited dxlytdckst2: TdxLayoutDockSite
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxlytdckst1: TdxLayoutDockSite
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited dxDockGrid: TdxDockPanel
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 875
          Height = 341
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            object cxColumnCuenta: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = 'Cuenta'
              Width = 174
            end
            object cxColumnClabeInterbancaria: TcxGridDBColumn
              Tag = 1
              Caption = 'Clabe Interbancaria'
              DataBinding.FieldName = 'ClabeInterbancaria'
              Width = 180
            end
            object cxColumnBanco: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = 'Banco'
              Width = 175
            end
            object cxColumnProveedorCliente: TcxGridDBColumn
              Tag = 1
              Caption = 'Proveedor/Cliente'
              DataBinding.FieldName = 'NombreEmpresa'
              Width = 169
            end
            object cxColumnActivo: TcxGridDBColumn
              Tag = -1
              DataBinding.FieldName = 'Activo'
              Visible = False
              Width = 171
            end
          end
        end
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Left = -400
      Width = 400
      Height = 375
      ExplicitLeft = -400
      ExplicitWidth = 400
      ExplicitHeight = 375
      AutoHidePosition = 0
      DockingType = 1
      OriginalWidth = 400
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Width = 396
        Height = 347
        ExplicitWidth = 392
        ExplicitHeight = 331
        ClientRectBottom = 343
        ClientRectLeft = 4
        ClientRectRight = 392
        ClientRectTop = 24
        inherited cxTsDatos: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 388
          ExplicitHeight = 301
          inherited dxLYCDatos: TdxLayoutControl
            Width = 388
            Height = 319
            ExplicitWidth = 388
            ExplicitHeight = 301
            object cxtextCuenta: TcxDBTextEdit [0]
              Tag = -1
              Left = 128
              Top = 11
              DataBinding.DataField = 'Cuenta'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 20
              Style.HotTrack = False
              TabOrder = 0
              Width = 242
            end
            object cxtextClave: TcxDBTextEdit [1]
              Tag = -1
              Left = 128
              Top = 38
              DataBinding.DataField = 'ClabeInterbancaria'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 20
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxButton1: TcxButton [2]
              Left = 395
              Top = 65
              Width = 20
              Height = 21
              Caption = 'cxButton1'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              TabOrder = 3
              OnClick = cxButton1Click
            end
            object cxButton2: TcxButton [3]
              Left = 395
              Top = 92
              Width = 10
              Height = 21
              Caption = 'cxButton2'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              TabOrder = 5
              OnClick = cxButton2Click
            end
            object cbbBanco: TcxDBLookupComboBox [4]
              Tag = -1
              Left = 128
              Top = 65
              DataBinding.DataField = 'IdBanco'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdBancos'
              Properties.ListColumns = <
                item
                  FieldName = 'Banco'
                end>
              Properties.ListSource = dsBanco
              Style.HotTrack = False
              TabOrder = 2
              Width = 261
            end
            object cbbProveedor: TcxDBLookupComboBox [5]
              Tag = -1
              Left = 128
              Top = 92
              DataBinding.DataField = 'IdProveedorCliente'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdProveedorCliente'
              Properties.ListColumns = <
                item
                  FieldName = 'NombreEmpresa'
                end>
              Properties.ListSource = dsProveedor
              Style.HotTrack = False
              TabOrder = 4
              Width = 261
            end
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
            object dxLYCDatosItem1: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Cuenta:'
              Control = cxtextCuenta
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYCDatosItem2: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Clabe Interbancaria:'
              Control = cxtextClave
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYCDatosItem5: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYCDatosItem6: TdxLayoutItem
              Parent = dxLYCDatosGroup2
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = cxButton2
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYCDatosItem3: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'Banco:'
              Control = cbbBanco
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLyDatos
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLYCDatosItem4: TdxLayoutItem
              Parent = dxLYCDatosGroup2
              CaptionOptions.Text = 'Proveedor/Cliente'
              Control = cbbProveedor
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLyDatos
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
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
      FloatClientWidth = 153
      FloatClientHeight = 368
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dsDatos: TDataSource
    Top = 416
  end
  inherited zDatos: TZQuery
    Connection = UDMConection.conBD
    Top = 368
  end
  inherited zDatosUpt: TZQuery
    Connection = UDMConection.conBD
    Top = 360
  end
  inherited dsDatosUpt: TDataSource
    Top = 408
  end
  inherited dxDockingManager1: TdxDockingManager
    PixelsPerInch = 96
  end
  object zBanco: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 512
    Top = 240
  end
  object zProveedor: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 456
    Top = 184
  end
  object dsProveedor: TDataSource
    DataSet = zProveedor
    Left = 456
    Top = 240
  end
  object dsBanco: TDataSource
    DataSet = zBanco
    Left = 512
    Top = 184
  end
end
