inherited FrmGiroProveedor: TFrmGiroProveedor
  Caption = 'Giro Proveedor/Cliente'
  OnCreate = FormCreate
  ExplicitTop = -4
  ExplicitWidth = 525
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Height = 280
    ExplicitLeft = 8
    ExplicitTop = 124
    ExplicitHeight = 280
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnGiro: TcxGridDBColumn
        Tag = 1
        Caption = 'Giro de la Empresa'
        DataBinding.FieldName = 'Giro'
      end
      object cxColumnProveedorC: TcxGridDBColumn
        Tag = 1
        Caption = 'Proveedor/Cliente'
        DataBinding.FieldName = 'NombreCompletoRepresentante'
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 408
    Height = 113
    ExplicitTop = 408
    ExplicitHeight = 113
    inherited cxPageDatos: TcxPageControl
      Height = 109
      ClientRectBottom = 107
      inherited cxTsDatos: TcxTabSheet
        inherited dxLYCDatos: TdxLayoutControl
          Height = 79
          ExplicitLeft = 3
          ExplicitHeight = 79
          object cbbGiro: TcxDBLookupComboBox [0]
            Tag = -1
            Left = 123
            Top = 10
            DataBinding.DataField = 'IdGiro'
            DataBinding.DataSource = dsDatosUpt
            Properties.KeyFieldNames = 'IdGiro'
            Properties.ListColumns = <
              item
                FieldName = 'Giro'
              end>
            Properties.ListSource = dsGiro
            Style.HotTrack = False
            TabOrder = 0
            Width = 238
          end
          object cbbProveedorC: TcxDBLookupComboBox [1]
            Tag = -1
            Left = 123
            Top = 37
            DataBinding.DataField = 'IdProveedorCliente'
            DataBinding.DataSource = dsDatosUpt
            Properties.KeyFieldNames = 'IdProveedorCliente'
            Properties.ListColumns = <
              item
                FieldName = 'NombreCompletoRepresentante'
              end>
            Properties.ListSource = dsProveedor
            Style.HotTrack = False
            TabOrder = 1
            Width = 145
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxLYCDatosItem2: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Giro de la Empresa'
            Control = cbbGiro
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = ' Proveedor/Cliente'
            Control = cbbProveedorC
            ControlOptions.ShowBorder = False
            Index = 1
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
  end
  inherited zDatosUpt: TZQuery
    Connection = UDMConection.conBD
  end
  object zGiro: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 392
    Top = 248
  end
  object zProveedor: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 392
    Top = 200
  end
  object dsProveedor: TDataSource
    DataSet = zProveedor
    Left = 464
    Top = 192
  end
  object dsGiro: TDataSource
    DataSet = zGiro
    Left = 464
    Top = 248
  end
end
