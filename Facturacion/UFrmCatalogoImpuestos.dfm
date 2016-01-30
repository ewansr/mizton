inherited FrmCatalogoImpuestos: TFrmCatalogoImpuestos
  Caption = 'Cat'#225'logo de Impuestos'
  ClientHeight = 591
  ClientWidth = 647
  OnCreate = FormCreate
  ExplicitWidth = 653
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 647
    ExplicitWidth = 633
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Cat'#225'logo de Impuestos'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 641
    Height = 272
    ExplicitWidth = 627
    ExplicitHeight = 264
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      OptionsView.GroupByBox = True
      object cxColumnGridDatosColumn1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 70
      end
      object cxColumnGridDatosColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Impuesto'
        Width = 121
      end
      object cxColumnGridDatosColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Alias'
        Width = 97
      end
      object cxColumnGridDatosColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Width = 69
      end
      object cxColumnGridDatosColumn5: TcxGridDBColumn
        Caption = 'Importe'
        DataBinding.FieldName = 'Valor'
        Width = 69
      end
      object cxColumnGridDatosColumn6: TcxGridDBColumn
        Caption = 'Tipo Impuesto'
        DataBinding.FieldName = 'TipoImpuesto'
        Visible = False
        GroupIndex = 0
        Width = 104
      end
      object cxColumnGridDatosColumn7: TcxGridDBColumn
        Caption = 'Aplicar Sobre'
        DataBinding.FieldName = 'AplicaSobre'
        Width = 136
      end
      object cxColumnGridDatosColumn8: TcxGridDBColumn
        Caption = 'Informaci'#243'n'
        DataBinding.FieldName = 'url'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = 'Ver'
            Default = True
            Kind = bkText
          end>
        Visible = False
        Width = 110
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 400
    Width = 647
    Height = 191
    ExplicitTop = 400
    ExplicitWidth = 647
    ExplicitHeight = 191
    inherited cxPageDatos: TcxPageControl
      Width = 643
      Height = 170
      ExplicitWidth = 643
      ExplicitHeight = 224
      ClientRectBottom = 168
      ClientRectRight = 641
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 625
        ExplicitHeight = 129
        inherited dxLYCDatos: TdxLayoutControl
          Width = 639
          Height = 140
          ExplicitWidth = 625
          ExplicitHeight = 129
          object cxTextCodigo: TcxDBTextEdit [0]
            Left = 88
            Top = 10
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 142
          end
          object cxTextImpuesto: TcxDBTextEdit [1]
            Left = 88
            Top = 37
            DataBinding.DataField = 'Impuesto'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxTextAlias: TcxDBTextEdit [2]
            Left = 88
            Top = 64
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cbbTipo: TcxDBComboBox [3]
            Left = 269
            Top = 10
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = dsDatosUpt
            Properties.Items.Strings = (
              'Porcentaje'
              'Fijo')
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cbbTipoImpuesto: TcxDBComboBox [4]
            Left = 484
            Top = 10
            DataBinding.DataField = 'TipoImpuesto'
            DataBinding.DataSource = dsDatosUpt
            Properties.Items.Strings = (
              'Trasladado'
              'Retenido')
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cbbAplicaSobre: TcxDBComboBox [5]
            Left = 88
            Top = 91
            DataBinding.DataField = 'AplicaSobre'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 5
            Width = 238
          end
          object cxSpinValor: TcxDBSpinEdit [6]
            Left = 484
            Top = 91
            DataBinding.DataField = 'Valor'
            DataBinding.DataSource = dsDatosUpt
            Properties.ValueType = vtFloat
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxlytmLYCDatosItem1: TdxLayoutItem
            Parent = dxlytcrtdgrpLYCDatosGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'C'#243'digo:'
            Control = cxTextCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlytmLYCDatosItem2: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Impuesto:'
            Control = cxTextImpuesto
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlytmLYCDatosItem3: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Alias:'
            Control = cxTextAlias
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxlytmLYCDatosItem4: TdxLayoutItem
            Parent = dxlytcrtdgrpLYCDatosGroup1
            CaptionOptions.Text = 'Tipo:'
            Control = cbbTipo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlytcrtdgrpLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            LayoutDirection = ldHorizontal
            Index = 0
            AutoCreated = True
          end
          object dxlytmLYCDatosItem6: TdxLayoutItem
            Parent = dxlytcrtdgrpLYCDatosGroup1
            CaptionOptions.Text = 'Tipo Impuesto:'
            Control = cbbTipoImpuesto
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxlytmLYCDatosItem8: TdxLayoutItem
            Parent = dxlytcrtdgrpLYCDatosGroup2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Aplica Sobre:'
            Control = cbbAplicaSobre
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlytmLYCDatosItem5: TdxLayoutItem
            Parent = dxlytcrtdgrpLYCDatosGroup2
            CaptionOptions.Text = 'Importe:'
            Control = cxSpinValor
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlytcrtdgrpLYCDatosGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            LayoutDirection = ldHorizontal
            Index = 3
            AutoCreated = True
          end
        end
      end
    end
    object Lbl1: TcxLabel
      Left = 0
      Top = 170
      Align = alBottom
      Caption = 
        'Algunos elementos no podr'#225'n est'#225'r disponibles para la edici'#243'n, d' +
        'ebido a que son elementos del sistema.'
      Transparent = True
      Visible = False
      ExplicitTop = 159
      ExplicitWidth = 629
    end
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 184
    Top = 256
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
    Left = 24
    Top = 256
  end
  inherited zDatos: TZQuery
    AfterScroll = zDatosAfterScroll
    Left = 24
    Top = 208
  end
  inherited zDatosUpt: TZQuery
    Left = 88
    Top = 208
  end
  inherited dsDatosUpt: TDataSource
    Left = 88
    Top = 256
  end
  inherited dxPopupGrid: TdxRibbonPopupMenu
    Left = 272
    Top = 256
  end
  inherited dlgSave1: TSaveDialog
    Left = 184
    Top = 208
  end
  object zImpuestos: TZQuery
    Params = <>
    Left = 344
    Top = 280
  end
end
