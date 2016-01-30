inherited FrmCatalogoProveedores: TFrmCatalogoProveedores
  Caption = 'Cat'#225'logo de Proveedores'
  ClientHeight = 480
  ClientWidth = 921
  OnCreate = FormCreate
  ExplicitWidth = 937
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 921
    Height = 383
    ExplicitWidth = 921
    ExplicitHeight = 383
    DockingType = 5
    OriginalWidth = 921
    OriginalHeight = 383
    inherited dxlytdckst2: TdxLayoutDockSite
      Width = 893
      Height = 383
      ExplicitWidth = 893
      ExplicitHeight = 383
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxlytdckst1: TdxLayoutDockSite
        Width = 893
        Height = 383
        ExplicitWidth = 893
        ExplicitHeight = 383
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited dxDockGrid: TdxDockPanel
        Width = 893
        Height = 383
        ExplicitWidth = 893
        ExplicitHeight = 383
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 879
          Height = 333
          ExplicitWidth = 879
          ExplicitHeight = 333
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            object cxColumnCodigo: TcxGridDBColumn
              Tag = 1
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
              Width = 101
            end
            object cxColumnProveedor: TcxGridDBColumn
              Tag = 1
              Caption = 'Proveedor'
              DataBinding.FieldName = 'NombreEmpresa'
              Width = 180
            end
            object cxColumnRFC: TcxGridDBColumn
              Tag = 1
              DataBinding.FieldName = 'RFC'
              Width = 135
            end
            object cxColumnFecha: TcxGridDBColumn
              Tag = 1
              Caption = 'Fecha'
              DataBinding.FieldName = 'FechaRegistro'
              Width = 105
            end
            object cxColumnRepresentante: TcxGridDBColumn
              Tag = 1
              Caption = 'Representante'
              DataBinding.FieldName = 'NombreCompletoRepresentante'
              Width = 219
            end
            object cxColumnTelRepresentante: TcxGridDBColumn
              Tag = 1
              Caption = 'Tel. Representante'
              DataBinding.FieldName = 'TelRepresentante'
              Width = 129
            end
          end
        end
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Left = 0
      Width = 430
      Height = 383
      Visible = True
      ExplicitLeft = 0
      ExplicitWidth = 430
      ExplicitHeight = 383
      AutoHidePosition = 0
      DockingType = 1
      OriginalWidth = 430
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Width = 422
        Height = 339
        ExplicitWidth = 422
        ClientRectBottom = 337
        ClientRectLeft = 2
        ClientRectRight = 420
        ClientRectTop = 28
        inherited cxTsDatos: TcxTabSheet
          Caption = 'Datos Generales'
          inherited dxLYCDatos: TdxLayoutControl
            Width = 418
            Height = 309
            object cxdbdtdtFecha: TcxDBDateEdit [0]
              Tag = -1
              Left = 103
              Top = 10
              DataBinding.DataField = 'FechaRegistro'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 0
              Width = 241
            end
            object cxtextCodigo: TcxDBTextEdit [1]
              Tag = -2
              Left = 103
              Top = 37
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 20
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxtextProveedor: TcxDBTextEdit [2]
              Tag = -1
              Left = 103
              Top = 64
              DataBinding.DataField = 'NombreEmpresa'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 100
              Style.HotTrack = False
              TabOrder = 3
              Width = 257
            end
            object cxMaskTel: TcxDBMaskEdit [3]
              Tag = -1
              Left = 103
              Top = 91
              DataBinding.DataField = 'TelEmpresa'
              DataBinding.DataSource = dsDatosUpt
              Properties.EditMask = '!\(999\)000-0000;1;_'
              Properties.MaxLength = 0
              Style.HotTrack = False
              TabOrder = 4
              Width = 281
            end
            object cxtextCorreo: TcxDBTextEdit [4]
              Tag = -1
              Left = 103
              Top = 118
              DataBinding.DataField = 'Email'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 5
              Width = 289
            end
            object cxtextURL: TcxDBTextEdit [5]
              Tag = -1
              Left = 103
              Top = 145
              DataBinding.DataField = 'Web'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 6
              Width = 265
            end
            object imgLogo: TcxDBImage [6]
              Left = 10
              Top = 193
              DataBinding.DataField = 'Logo'
              DataBinding.DataSource = dsDatosUpt
              Properties.Caption = '<Dar doble clic para agregar Imagen> '
              Properties.GraphicClassName = 'TdxSmartImage'
              Properties.GraphicTransparency = gtTransparent
              Style.HotTrack = False
              TabOrder = 7
              OnClick = imgLogoClick
              Height = 216
              Width = 367
            end
            object cxMaskRFC: TcxDBMaskEdit [7]
              Left = 10000
              Top = 10000
              DataBinding.DataField = 'RFC'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 8
              Visible = False
              Width = 249
            end
            object cxDBMaskEdit1: TcxDBMaskEdit [8]
              Tag = -1
              Left = 271
              Top = 37
              DataBinding.DataField = 'RFC'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 13
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
            object dxLYCDatosItem1: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Fecha Registro:'
              Control = cxdbdtdtFecha
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYCDatosItem2: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'C'#243'digo:'
              Control = cxtextCodigo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYCDatosItem4: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Proveedor:'
              Control = cxtextProveedor
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLYCDatosItem5: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Telef'#243'no:'
              Control = cxMaskTel
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLYCDatosItem6: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Correo:'
              Control = cxtextCorreo
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLYCDatosItem7: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'URL Web:'
              Control = cxtextURL
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLYCDatosItem8: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Logotipo:'
              CaptionOptions.Layout = clTop
              Control = imgLogo
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLYCDatosItem3: TdxLayoutItem
              CaptionOptions.Text = 'RFC:'
              Control = cxMaskRFC
              ControlOptions.ShowBorder = False
              Index = -1
            end
            object RFcxDBMaskEdit1: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'RFC:'
              Control = cxDBMaskEdit1
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLyDatos
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
          end
        end
        object cxDomicilio: TcxTabSheet
          Caption = 'Domicilio'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 418
            Height = 309
            Touch.ParentTabletOptions = False
            Touch.TabletOptions = [toPressAndHold]
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = True
            ParentFont = False
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxtextCalle: TcxDBTextEdit
              Tag = -1
              Left = 62
              Top = 10
              DataBinding.DataField = 'Calle'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 0
              Width = 323
            end
            object cxtextColonia: TcxDBTextEdit
              Tag = -1
              Left = 62
              Top = 37
              DataBinding.DataField = 'Colonia'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 1
              Width = 349
            end
            object cxSpinCP: TcxDBSpinEdit
              Tag = -1
              Left = 62
              Top = 64
              DataBinding.DataField = 'CP'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 2
              Width = 59
            end
            object cxtextNumero: TcxDBTextEdit
              Tag = -1
              Left = 215
              Top = 64
              DataBinding.DataField = 'No'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 10
              Style.HotTrack = False
              TabOrder = 3
              Width = 138
            end
            object btnMasP: TcxButton
              Left = 391
              Top = 91
              Width = 20
              Height = 21
              Caption = 'btnMasP'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 5
              OnClick = btnMasPClick
            end
            object btnMasE: TcxButton
              Left = 391
              Top = 118
              Width = 8
              Height = 21
              Caption = 'btnMasE'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 7
              OnClick = btnMasEClick
            end
            object btnMasC: TcxButton
              Left = 391
              Top = 145
              Width = 8
              Height = 20
              Caption = 'btnMasC'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 9
              OnClick = btnMasCClick
            end
            object cbbPais: TcxDBLookupComboBox
              Tag = -1
              Left = 62
              Top = 91
              DataBinding.DataField = 'IdPais'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdPais'
              Properties.ListColumns = <
                item
                  FieldName = 'Pais'
                end>
              Properties.ListSource = dsPais
              Properties.OnChange = cbbpaisPropertiesChange
              Properties.OnCloseUp = cbbPaisPropertiesCloseUp
              Properties.OnEditValueChanged = cbbPaisPropertiesEditValueChanged
              Style.HotTrack = False
              TabOrder = 4
              Width = 323
            end
            object cbbEstado: TcxDBLookupComboBox
              Tag = -1
              Left = 62
              Top = 118
              DataBinding.DataField = 'IdEstado'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdEstado'
              Properties.ListColumns = <
                item
                  FieldName = 'Estado'
                end>
              Properties.ListSource = dsEstado
              Properties.OnChange = cbbEstadoPropertiesChange
              Properties.OnCloseUp = cbbEstadoPropertiesCloseUp
              Properties.OnEditValueChanged = cbbEstadoPropertiesEditValueChanged
              Style.HotTrack = False
              TabOrder = 6
              Width = 319
            end
            object cbbCiudad: TcxDBLookupComboBox
              Tag = -1
              Left = 62
              Top = 145
              DataBinding.DataField = 'IdCiudad'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdCiudad'
              Properties.ListColumns = <
                item
                  FieldName = 'Ciudad'
                end>
              Properties.ListSource = dsCiudad
              Style.HotTrack = False
              TabOrder = 8
              Width = 278
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Calle:'
              Control = cxtextCalle
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Colonia:'
              Control = cxtextColonia
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Parent = dxLayoutControl1Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'C.P.'
              Control = cxSpinCP
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              Parent = dxLayoutControl1Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'N'#250'mero:'
              Control = cxtextNumero
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Item8: TdxLayoutItem
              Parent = dxLayoutControl1Group2
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnMasP
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              Parent = dxLayoutControl1Group3
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnMasE
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              Parent = dxLayoutControl1Group4
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnMasC
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              Parent = dxLayoutControl1Group2
              CaptionOptions.Text = 'Pa'#237's:'
              Control = cbbPais
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              Parent = dxLayoutControl1Group3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Estado:'
              Control = cbbEstado
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              Parent = dxLayoutControl1Group4
              AlignHorz = ahClient
              CaptionOptions.Text = 'Ciudad:'
              Control = cbbCiudad
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 5
              AutoCreated = True
            end
          end
        end
        object cxContactoRepresentante: TcxTabSheet
          Caption = 'Contacto/Representante'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 418
            Height = 309
            Align = alClient
            ParentBackground = True
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxtextNombre: TcxDBTextEdit
              Tag = -1
              Left = 90
              Top = 10
              DataBinding.DataField = 'NomRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 0
              Width = 292
            end
            object cxtextPaterno: TcxDBTextEdit
              Tag = -1
              Left = 90
              Top = 37
              DataBinding.DataField = 'APRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 1
              Width = 284
            end
            object cxtextMaterno: TcxDBTextEdit
              Tag = -1
              Left = 90
              Top = 64
              DataBinding.DataField = 'AMRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 2
              Width = 284
            end
            object cxMaskTele: TcxDBMaskEdit
              Tag = -1
              Left = 90
              Top = 91
              DataBinding.DataField = 'TelRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.EditMask = '!\(999\)000-0000;1;_'
              Style.HotTrack = False
              TabOrder = 3
              Width = 284
            end
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl2Item1: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Nombre:'
              Control = cxtextNombre
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Item2: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Ape. Paterno:'
              Control = cxtextPaterno
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Ape. Materno:'
              Control = cxtextMaterno
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl2Item4: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Telef'#243'no'
              Control = cxMaskTele
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 921
    ExplicitWidth = 921
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
      FloatClientWidth = 154
      FloatClientHeight = 366
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dsDatos: TDataSource
    Left = 456
  end
  inherited zDatos: TZQuery
    Connection = UDMConection.conBD
    Left = 464
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 488
    Top = 336
    PixelsPerInch = 96
  end
  object zqryPais: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 544
    Top = 184
  end
  object zqryEstado: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 624
    Top = 184
  end
  object zqryCiudad: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 704
    Top = 192
  end
  object dsPais: TDataSource
    DataSet = zqryPais
    Left = 544
    Top = 256
  end
  object dsEstado: TDataSource
    DataSet = zqryEstado
    Left = 616
    Top = 256
  end
  object dsCiudad: TDataSource
    DataSet = zqryCiudad
    Left = 696
    Top = 256
  end
end
