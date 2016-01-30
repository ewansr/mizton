inherited FrmEstado: TFrmEstado
  Caption = 'Cat'#225'logo de Estado'
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
      Caption = 'Cat'#225'logo de Estado'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 250
    ExplicitWidth = 588
    ExplicitHeight = 250
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnCodigo: TcxGridDBColumn
        Tag = 1
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 129
      end
      object cxColumnEstado: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Estado'
        Width = 172
      end
      object cxColumnPais: TcxGridDBColumn
        Tag = 1
        Caption = 'Pa'#237's'
        DataBinding.FieldName = 'Pais'
        Width = 213
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 103
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 378
    Width = 594
    Height = 144
    ExplicitTop = 378
    ExplicitWidth = 594
    ExplicitHeight = 144
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 140
      ExplicitWidth = 590
      ExplicitHeight = 140
      ClientRectBottom = 138
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 586
        ExplicitHeight = 110
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 110
          ExplicitWidth = 586
          ExplicitHeight = 110
          object cxtextCodigo: TcxDBTextEdit [0]
            Tag = -2
            Left = 56
            Top = 10
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 20
            Style.HotTrack = False
            TabOrder = 0
            Width = 433
          end
          object cxtextEstado: TcxDBTextEdit [1]
            Tag = -1
            Left = 56
            Top = 37
            DataBinding.DataField = 'Estado'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 50
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cbbPais: TcxDBLookupComboBox [2]
            Tag = -1
            Left = 56
            Top = 64
            DataBinding.DataField = 'IdPais'
            DataBinding.DataSource = dsDatosUpt
            Properties.KeyFieldNames = 'IdPais'
            Properties.ListColumns = <
              item
                FieldName = 'Pais'
              end>
            Properties.ListSource = dsPais
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object btnMas: TcxButton [3]
            Left = 468
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
            CaptionOptions.Text = 'Estado'
            Control = cxtextEstado
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLYCDatosItem3: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'Pa'#237's'
            Control = cbbPais
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlytmLYCDatosItem4: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'cxButton1'
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
  object zqryPais: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 216
    Top = 320
  end
  object dsPais: TDataSource
    DataSet = zqryPais
    Left = 280
    Top = 296
  end
end
