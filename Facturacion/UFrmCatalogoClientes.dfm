inherited frmCatalogoClientes: TfrmCatalogoClientes
  Caption = 'Cat'#225'logo de Clientes'
  ClientHeight = 603
  ClientWidth = 999
  FormStyle = fsNormal
  Visible = False
  OnCreate = FormCreate
  ExplicitWidth = 1015
  ExplicitHeight = 642
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 999
    Height = 506
    ExplicitWidth = 999
    ExplicitHeight = 506
    DockingType = 5
    OriginalWidth = 999
    OriginalHeight = 506
    inherited dxlytdckst2: TdxLayoutDockSite
      Width = 971
      Height = 506
      ExplicitWidth = 971
      ExplicitHeight = 506
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxlytdckst1: TdxLayoutDockSite
        Width = 971
        Height = 506
        ExplicitWidth = 971
        ExplicitHeight = 506
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited dxDockGrid: TdxDockPanel
        Width = 971
        Height = 506
        ExplicitWidth = 971
        ExplicitHeight = 506
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 957
          Height = 456
          ExplicitWidth = 957
          ExplicitHeight = 456
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            OptionsView.ColumnAutoWidth = False
            object cxColumnCodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'Codigo'
              Width = 94
            end
            object cxColumnNombre: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NombreEmpresa'
              Width = 131
            end
            object cxColumnRFC: TcxGridDBColumn
              Caption = 'Rfc'
              DataBinding.FieldName = 'rfc'
              Width = 96
            end
            object cxColumnFecha: TcxGridDBColumn
              Caption = 'Fecha Registro'
              DataBinding.FieldName = 'FechaRegistro'
              Width = 110
            end
            object cxColumnTelEmpresa: TcxGridDBColumn
              Caption = 'Tel'#233'fono'
              DataBinding.FieldName = 'TelEmpresa'
              Width = 101
            end
            object cxColRepresentante: TcxGridDBColumn
              Caption = 'Representante'
              DataBinding.FieldName = 'NombreCompletoRepresentante'
              Width = 213
            end
            object cxColTelefonoRep: TcxGridDBColumn
              Caption = 'Tel. Representante'
              DataBinding.FieldName = 'TelRepresentante'
              Width = 138
            end
          end
        end
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Left = -417
      Width = 417
      ExplicitLeft = -417
      ExplicitWidth = 417
      AutoHidePosition = 0
      DockingType = 1
      OriginalWidth = 417
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Width = 409
        ExplicitWidth = 409
        inherited cxTsDatos: TcxTabSheet
          Tag = -1
          Caption = 'Datos Generales Cliente'
          inherited dxLYCDatos: TdxLayoutControl
            object cxDateRegistro: TcxDBDateEdit [0]
              Tag = -1
              Left = 104
              Top = 11
              DataBinding.DataField = 'FechaRegistro'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 0
              Width = 288
            end
            object cxDBTextCliente: TcxDBTextEdit [1]
              Tag = -1
              Left = 104
              Top = 65
              DataBinding.DataField = 'NombreEmpresa'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.MaxLength = 100
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 3
              Width = 288
            end
            object cxDBTextCodigo: TcxDBTextEdit [2]
              Tag = -2
              Left = 104
              Top = 38
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.MaxLength = 20
              ShowHint = True
              Style.HotTrack = False
              StyleFocused.BorderStyle = ebsOffice11
              TabOrder = 1
              Width = 121
            end
            object cxDbMaskRFC: TcxDBMaskEdit [3]
              Tag = -1
              Left = 271
              Top = 38
              DataBinding.DataField = 'rfc'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.MaxLength = 13
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxMaskTelEmpresa: TcxDBMaskEdit [4]
              Tag = -1
              Left = 104
              Top = 92
              DataBinding.DataField = 'telEmpresa'
              DataBinding.DataSource = dsDatosUpt
              Properties.EditMask = '!\(999\)000-0000;1;_'
              Style.HotTrack = False
              TabOrder = 4
              Width = 288
            end
            object cxTextEmail: TcxDBTextEdit [5]
              Tag = -1
              Left = 104
              Top = 119
              DataBinding.DataField = 'email'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 5
              Width = 288
            end
            object cxTextWeb: TcxDBTextEdit [6]
              Tag = -1
              Left = 104
              Top = 146
              DataBinding.DataField = 'web'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 6
              Width = 288
            end
            object imgLogo: TcxDBImage [7]
              Tag = -1
              Left = 11
              Top = 194
              DataBinding.DataField = 'Logo'
              DataBinding.DataSource = dsDatosUpt
              Properties.Caption = '< Doble clic para seleccionar una imagen. >'
              Properties.GraphicClassName = 'TdxSmartImage'
              Properties.PopupMenuLayout.MenuItems = [pmiCut, pmiCopy, pmiPaste, pmiDelete, pmiLoad]
              Style.HotTrack = False
              TabOrder = 7
              OnDblClick = imgLogoDblClick
              Height = 216
              Width = 381
            end
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
            object dxlytmLYCDatosItem1: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Fecha Registro:'
              Control = cxDateRegistro
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxlytmLYCDatosItem11: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Cliente:'
              Control = cxDBTextCliente
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxlytmLYCDatosItem12: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              AlignHorz = ahClient
              CaptionOptions.Text = 'C'#243'digo:'
              Control = cxDBTextCodigo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxlytmLYCDatosItem13: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'R.F.C:'
              Control = cxDbMaskRFC
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLyDatos
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayitemLYCDatosItem1: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Tel'#233'fono:'
              Control = cxMaskTelEmpresa
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayitemLYCDatosItem11: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Correo:'
              Control = cxTextEmail
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayitemLYCDatosItem12: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'URL Web:'
              Control = cxTextWeb
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxlytmLYCDatosItem14: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Logotipo:'
              CaptionOptions.Layout = clTop
              Control = imgLogo
              ControlOptions.ShowBorder = False
              Index = 6
            end
          end
        end
        object cxTabDomicilio: TcxTabSheet
          Tag = -1
          Caption = 'Domicilio'
          ImageIndex = 1
          object dxLYC1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 0
            Height = 0
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object cxDBTextCalle: TcxDBTextEdit
              Tag = -1
              Left = 63
              Top = 11
              DataBinding.DataField = 'Calle'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.MaxLength = 50
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 0
              Width = 333
            end
            object cxDBTextColonia: TcxDBTextEdit
              Tag = -1
              Left = 63
              Top = 38
              DataBinding.DataField = 'Colonia'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.MaxLength = 50
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 1
              Width = 333
            end
            object cxSpinCP: TcxDBSpinEdit
              Tag = -1
              Left = 63
              Top = 65
              DataBinding.DataField = 'Cp'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 2
              Width = 172
            end
            object cxDBTextNo: TcxDBTextEdit
              Tag = -1
              Left = 295
              Top = 65
              DataBinding.DataField = 'No'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.MaxLength = 10
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 3
              Width = 101
            end
            object btnMasP: TcxButton
              Left = 376
              Top = 92
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
              Left = 376
              Top = 119
              Width = 20
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
              Left = 376
              Top = 146
              Width = 20
              Height = 21
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
              Left = 63
              Top = 92
              DataBinding.DataField = 'IdPais'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.KeyFieldNames = 'IdPais'
              Properties.ListColumns = <
                item
                  FieldName = 'Pais'
                end>
              Properties.ListSource = dsPais
              Properties.OnChange = cbbPaisPropertiesChange
              Properties.OnCloseUp = cbbPaisPropertiesCloseUp
              Properties.OnEditValueChanged = cbbPaisPropertiesEditValueChanged
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 4
              Width = 307
            end
            object cbbEstado: TcxDBLookupComboBox
              Tag = -1
              Left = 63
              Top = 119
              DataBinding.DataField = 'IdEstado'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.KeyFieldNames = 'IdEstado'
              Properties.ListColumns = <
                item
                  FieldName = 'Estado'
                end>
              Properties.ListSource = dsEstado
              Properties.OnChange = cbbEstadoPropertiesChange
              Properties.OnCloseUp = cbbEstadoPropertiesCloseUp
              Properties.OnEditValueChanged = cbbEstadoPropertiesEditValueChanged
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 6
              Width = 307
            end
            object cbbCiudad: TcxDBLookupComboBox
              Tag = -1
              Left = 63
              Top = 146
              DataBinding.DataField = 'IdCiudad'
              DataBinding.DataSource = dsDatosUpt
              ParentShowHint = False
              Properties.KeyFieldNames = 'IdCiudad'
              Properties.ListColumns = <
                item
                  FieldName = 'Ciudad'
                end>
              Properties.ListSource = dsCiudad
              ShowHint = True
              Style.HotTrack = False
              TabOrder = 8
              Width = 307
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
              CaptionOptions.Text = 'Calle:'
              Control = cxDBTextCalle
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxlytmLYC1Item11: TdxLayoutItem
              Parent = dxLyLayoutControl1Group_Root
              CaptionOptions.Text = 'Colonia:'
              Control = cxDBTextColonia
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxlytmLYC1Item12: TdxLayoutItem
              Parent = dxLYC1Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'C.P:'
              Control = cxSpinCP
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxlytmLYC1Item13: TdxLayoutItem
              Parent = dxLYC1Group1
              CaptionOptions.Text = 'N'#250'mero:'
              Control = cxDBTextNo
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYC1Group1: TdxLayoutAutoCreatedGroup
              Parent = dxLyLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLYC1Item1: TdxLayoutItem
              Parent = dxLYC1Group2
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnMasP
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYC1Item2: TdxLayoutItem
              Parent = dxLYC1Group3
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = btnMasE
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYC1Item3: TdxLayoutItem
              Parent = dxLYC1Group4
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = btnMasC
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxlytmLYC1Item14: TdxLayoutItem
              Parent = dxLYC1Group2
              CaptionOptions.Text = 'Pa'#237's:'
              Control = cbbPais
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYC1Group2: TdxLayoutAutoCreatedGroup
              Parent = dxLyLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxlytmLYC1Item15: TdxLayoutItem
              Parent = dxLYC1Group3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Estado:'
              Control = cbbEstado
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYC1Group3: TdxLayoutAutoCreatedGroup
              Parent = dxLyLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxlytmLYC1Item16: TdxLayoutItem
              Parent = dxLYC1Group4
              AlignHorz = ahClient
              CaptionOptions.Text = 'Ciudad:'
              Control = cbbCiudad
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYC1Group4: TdxLayoutAutoCreatedGroup
              Parent = dxLyLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 5
              AutoCreated = True
            end
          end
        end
        object cxTabContacto: TcxTabSheet
          Tag = -1
          Caption = 'Contacto / Representante'
          ImageIndex = 2
          object dxLayControlContacto: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 0
            Height = 0
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object cxTextNombreRepresentante: TcxDBTextEdit
              Tag = -1
              Left = 84
              Top = 11
              DataBinding.DataField = 'NomRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 0
              Width = 310
            end
            object cxTextApRepresentante: TcxDBTextEdit
              Tag = -1
              Left = 84
              Top = 38
              DataBinding.DataField = 'ApRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 1
              Width = 310
            end
            object cxTextAMRepresentante: TcxDBTextEdit
              Tag = -1
              Left = 84
              Top = 65
              DataBinding.DataField = 'AmRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 2
              Width = 310
            end
            object cxMaskTelefonoRepresentante: TcxDBMaskEdit
              Tag = -1
              Left = 84
              Top = 92
              DataBinding.DataField = 'TelRepresentante'
              DataBinding.DataSource = dsDatosUpt
              Properties.EditMask = '!\(999\)000-0000;1;_'
              Style.HotTrack = False
              TabOrder = 3
              Width = 310
            end
            object dxLayControlContactoGroup_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayitemLayControlContactoItem1: TdxLayoutItem
              Parent = dxLayControlContactoGroup_Root
              CaptionOptions.Text = 'Nombre:'
              Control = cxTextNombreRepresentante
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayitemLayControlContactoItem11: TdxLayoutItem
              Parent = dxLayControlContactoGroup_Root
              CaptionOptions.Text = 'Ap. Paterno:'
              Control = cxTextApRepresentante
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayitemLayControlContactoItem12: TdxLayoutItem
              Parent = dxLayControlContactoGroup_Root
              CaptionOptions.Text = 'Ap. Materno:'
              Control = cxTextAMRepresentante
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayitemLayControlContactoItem13: TdxLayoutItem
              Parent = dxLayControlContactoGroup_Root
              CaptionOptions.Text = 'Tel'#233'fono:'
              Control = cxMaskTelefonoRepresentante
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxTsGiro: TcxTabSheet
          Tag = -1
          Caption = 'Giro'
          ImageIndex = 3
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 999
    ExplicitWidth = 999
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Cat'#225'logo de Clientes'
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
      FloatClientWidth = 153
      FloatClientHeight = 339
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonNuevo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBButtonEditar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonBuscar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEliminar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonDetalle'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          Visible = True
          ItemName = 'dxButtonExportar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonSalir'
        end>
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 592
    Top = 216
    PixelsPerInch = 96
  end
  object zEstado: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 808
    Top = 288
  end
  object zPais: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 808
    Top = 176
  end
  object zCiudad: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 808
    Top = 232
  end
  object dsPais: TDataSource
    DataSet = zPais
    Left = 856
    Top = 176
  end
  object dsEstado: TDataSource
    DataSet = zEstado
    Left = 856
    Top = 288
  end
  object dsCiudad: TDataSource
    DataSet = zCiudad
    Left = 856
    Top = 232
  end
  object zPaise: TZQuery
    Connection = UDMConection.conBD
    Params = <>
    Left = 464
    Top = 240
  end
  object dsPaise: TDataSource
    DataSet = zPaise
    Left = 512
    Top = 224
  end
end
