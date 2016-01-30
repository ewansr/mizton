inherited FrmCiudad: TFrmCiudad
  Caption = 'Cat'#225'logo de Ciudad'
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
      Caption = 'Cat'#225'logo de Ciudad'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 257
    ExplicitWidth = 588
    ExplicitHeight = 257
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnCodigo: TcxGridDBColumn
        Tag = 1
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 85
      end
      object cxColumnCiudad: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Ciudad'
        Width = 174
      end
      object cxColumnEstado: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Estado'
        Width = 181
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 85
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 385
    Width = 594
    Height = 137
    ExplicitTop = 385
    ExplicitWidth = 594
    ExplicitHeight = 137
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 133
      ExplicitWidth = 590
      ExplicitHeight = 133
      ClientRectBottom = 131
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 586
        ExplicitHeight = 103
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 103
          ExplicitWidth = 586
          ExplicitHeight = 103
          object cxtextCodigo: TcxDBTextEdit [0]
            Tag = -2
            Left = 56
            Top = 10
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 20
            Style.HotTrack = False
            TabOrder = 0
            Width = 377
          end
          object cxtextCiudad: TcxDBTextEdit [1]
            Tag = -1
            Left = 56
            Top = 37
            DataBinding.DataField = 'Ciudad'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 50
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cbbEstado: TcxDBLookupComboBox [2]
            Tag = -1
            Left = 56
            Top = 64
            DataBinding.DataField = 'IdEstado'
            DataBinding.DataSource = dsDatosUpt
            Properties.KeyFieldNames = 'IdEstado'
            Properties.ListColumns = <
              item
                FieldName = 'Estado'
              end>
            Properties.ListSource = dsEstado
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object btnMas: TcxButton [3]
            Left = 412
            Top = 64
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
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'C'#243'digo'
            Control = cxtextCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosItem2: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Ciudad'
            Control = cxtextCiudad
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosItem3: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'Estado'
            Control = cbbEstado
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlytmLYCDatosItem4: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Visible = False
            Control = btnMas
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
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
  end
  object zqryEstado: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 272
    Top = 320
  end
  object dsEstado: TDataSource
    DataSet = zqryEstado
    Left = 328
    Top = 320
  end
end
