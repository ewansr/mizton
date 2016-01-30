inherited FrmAEmpresas: TFrmAEmpresas
  Caption = 'Empresas'
  ClientHeight = 560
  ClientWidth = 959
  OnCreate = FormCreate
  ExplicitWidth = 975
  ExplicitHeight = 599
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 959
    Height = 463
    ExplicitWidth = 959
    ExplicitHeight = 463
    DockingType = 5
    OriginalWidth = 959
    OriginalHeight = 463
    inherited dxlytdckst2: TdxLayoutDockSite
      Width = 931
      Height = 463
      ExplicitWidth = 931
      ExplicitHeight = 463
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxlytdckst1: TdxLayoutDockSite
        Width = 931
        Height = 463
        ExplicitWidth = 931
        ExplicitHeight = 463
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited dxDockGrid: TdxDockPanel
        Width = 931
        Height = 463
        ExplicitWidth = 931
        ExplicitHeight = 463
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 917
          Height = 413
          Visible = False
          ExplicitWidth = 917
          ExplicitHeight = 413
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            object cxColumnCodigo: TcxGridDBColumn
              DataBinding.FieldName = 'Codigo'
              Width = 173
            end
            object cxColumnEmpresa: TcxGridDBColumn
              Caption = 'Empresa'
              DataBinding.FieldName = 'Titulo'
              Width = 204
            end
            object cxGridDatosColumn1: TcxGridDBColumn
              Tag = 1
              Caption = 'RFC'
              DataBinding.FieldName = 'Rfc'
              Width = 131
            end
            object cxGridDatosColumn2: TcxGridDBColumn
              Tag = 1
              Caption = 'Registro Patronal'
              DataBinding.FieldName = 'RegPatronal'
              Width = 158
            end
            object cxGridDatosColumn3: TcxGridDBColumn
              Tag = 1
              Caption = 'Raz'#243'n Social'
              DataBinding.FieldName = 'RazonSocial'
              Width = 249
            end
          end
        end
        object lstEmpresas: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 923
          Height = 419
          Align = alClient
          Bands = <
            item
              Caption.Text = 'Empresas'
            end>
          DataController.DataSource = dsDatos
          DataController.ImageIndexField = 'imgIndex'
          DataController.ParentField = 'IdPadre'
          DataController.KeyField = 'IdEmpresa'
          Images = UDMConection.cxImageOtros
          Navigator.Buttons.CustomButtons = <>
          OptionsSelection.CellSelect = False
          PopupMenu = dxPopupGrid
          RootValue = -1
          Styles.Content = UDMConection.cxstylContent
          Styles.BandHeader = UDMConection.cxstylHeader
          Styles.ColumnHeader = UDMConection.cxstylHeader
          TabOrder = 1
          object cxColumnRazonSocial: TcxDBTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            Caption.Text = 'Empresa'
            DataBinding.FieldName = 'Titulo'
            Width = 207
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxColumnRfc: TcxDBTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            DataBinding.FieldName = 'RFC'
            Width = 114
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxColumnRegPät: TcxDBTreeListColumn
            PropertiesClassName = 'TcxLabelProperties'
            Caption.Text = 'Registro Patronal'
            DataBinding.FieldName = 'RegPatronal'
            Width = 155
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxColumnImgIndex: TcxDBTreeListColumn
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.ReadOnly = True
            Caption.Text = '...'
            DataBinding.FieldName = 'ImgIndex'
            Width = 28
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxColumnCodigoc: TcxDBTreeListColumn
            Caption.Text = 'C'#243'digo'
            DataBinding.FieldName = 'Codigo'
            Width = 144
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxColumnRSocial: TcxDBTreeListColumn
            Caption.Text = 'Raz'#243'n Social'
            DataBinding.FieldName = 'RazonSocial'
            Width = 259
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Left = 0
      Width = 660
      Height = 140
      Color = clWhite
      ManagerColor = False
      ExplicitLeft = 0
      ExplicitWidth = 660
      ExplicitHeight = 140
      AutoHidePosition = 0
      DockingType = 1
      OriginalWidth = 660
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Width = 652
        Height = 419
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        Properties.ActivePage = cxDomicilio
        ExplicitWidth = 652
        ExplicitHeight = 419
        ClientRectBottom = 417
        ClientRectLeft = 2
        ClientRectRight = 650
        ClientRectTop = 28
        inherited cxTsDatos: TcxTabSheet
          Caption = 'Empresa'
          TabVisible = False
          inherited dxLYCDatos: TdxLayoutControl
            Width = 648
            Height = 389
            ExplicitWidth = 648
            ExplicitHeight = 389
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
          end
        end
        object cxDomicilio: TcxTabSheet
          Caption = 'Datos Generales'
          ImageIndex = 1
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 648
            Height = 389
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object cxtextRegFiscal: TcxDBTextEdit
              Tag = -1
              Left = 124
              Top = 119
              DataBinding.DataField = 'RegimenFiscal'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 100
              Style.HotTrack = False
              TabOrder = 5
              Width = 473
            end
            object cxtextRepLeg: TcxDBTextEdit
              Tag = -1
              Left = 124
              Top = 146
              DataBinding.DataField = 'RepresentanteLegal'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 200
              Style.HotTrack = False
              TabOrder = 6
              Width = 473
            end
            object EdithBtnArchivos: TcxDBButtonEdit
              Tag = -1
              Left = 124
              Top = 173
              DataBinding.DataField = 'ArchivosEmpresa'
              DataBinding.DataSource = dsDatosUpt
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = EdithBtnArchivosPropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 7
              Width = 473
            end
            object cxtextCodi: TcxDBTextEdit
              Tag = -1
              Left = 124
              Top = 38
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 20
              Style.HotTrack = False
              TabOrder = 1
              Width = 473
            end
            object cxtextEmpre: TcxDBTextEdit
              Tag = -1
              Left = 124
              Top = 11
              DataBinding.DataField = 'Titulo'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 100
              Style.HotTrack = False
              TabOrder = 0
              Width = 473
            end
            object cxtextRazonSo: TcxDBTextEdit
              Tag = -1
              Left = 124
              Top = 65
              DataBinding.DataField = 'RazonSocial'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 150
              Style.HotTrack = False
              TabOrder = 2
              Width = 473
            end
            object imgCedula: TcxDBImage
              Tag = -1
              Left = 11
              Top = 473
              DataBinding.DataField = 'Cedula'
              DataBinding.DataSource = dsDatosUpt
              Properties.Caption = '<Dar doble clic para cargar>'
              Properties.GraphicClassName = 'TdxSmartImage'
              Properties.GraphicTransparency = gtTransparent
              Style.HotTrack = False
              TabOrder = 9
              OnDblClick = imgCedulaDblClick
              Height = 225
              Width = 586
            end
            object imgEmp: TcxDBImage
              Tag = -1
              Left = 11
              Top = 221
              DataBinding.DataField = 'Logotipo'
              DataBinding.DataSource = dsDatosUpt
              Properties.Caption = '<Dar doble clic para cargar>'
              Properties.GraphicClassName = 'TdxSmartImage'
              Properties.GraphicTransparency = gtTransparent
              Style.HotTrack = False
              TabOrder = 8
              OnDblClick = imgEmpDblClick
              Height = 225
              Width = 586
            end
            object cxMaskRFC: TcxDBMaskEdit
              Tag = -1
              Left = 124
              Top = 92
              DataBinding.DataField = 'Rfc'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 14
              Style.HotTrack = False
              TabOrder = 3
              Width = 173
            end
            object cxtextRegPat: TcxDBTextEdit
              Tag = -1
              Left = 384
              Top = 92
              DataBinding.DataField = 'RegPatronal'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 14
              Style.HotTrack = False
              TabOrder = 4
              Width = 213
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl1Item3: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Regimen Fiscal'
              Control = cxtextRegFiscal
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Rep. Legal'
              Control = cxtextRepLeg
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Guardar Archivo en:'
              Control = EdithBtnArchivos
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'C'#243'digo:'
              Control = cxtextCodi
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Item8: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Nombre Empresa:'
              Control = cxtextEmpre
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Raz'#243'n Social'
              Control = cxtextRazonSo
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'C'#233'dula Fiscal:'
              CaptionOptions.Layout = clTop
              Control = imgCedula
              ControlOptions.ShowBorder = False
              Index = 8
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Logotipo:'
              CaptionOptions.Layout = clTop
              Control = imgEmp
              ControlOptions.ShowBorder = False
              Index = 7
            end
            object dxLayoutControl1Item1: TdxLayoutItem
              Parent = dxLayoutControl1Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'RFC:'
              Control = cxMaskRFC
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl1Item2: TdxLayoutItem
              Parent = dxLayoutControl1Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Reg. Patronal'
              Control = cxtextRegPat
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl1Group_Root
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
        object cxDireccion: TcxTabSheet
          Caption = 'Direcci'#243'n'
          ImageIndex = 2
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 648
            Height = 389
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object cxtextCalle: TcxDBTextEdit
              Tag = -1
              Left = 95
              Top = 11
              DataBinding.DataField = 'Calle'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 0
              Width = 532
            end
            object cxtextColonia: TcxDBTextEdit
              Tag = -1
              Left = 95
              Top = 38
              DataBinding.DataField = 'Colonia'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 1
              Width = 532
            end
            object cxtextNoInt: TcxDBTextEdit
              Tag = -1
              Left = 95
              Top = 65
              DataBinding.DataField = 'NoInt'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 10
              Style.HotTrack = False
              TabOrder = 2
              Width = 532
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Tag = -1
              Left = 95
              Top = 92
              DataBinding.DataField = 'NoExt'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 10
              Style.HotTrack = False
              TabOrder = 3
              Width = 532
            end
            object cxtextMail: TcxDBTextEdit
              Tag = -1
              Left = 95
              Top = 146
              DataBinding.DataField = 'CorreoElectronico'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 6
              Width = 532
            end
            object cxDBHyperLinkEdit1: TcxDBHyperLinkEdit
              Tag = -1
              Left = 95
              Top = 173
              DataBinding.DataField = 'Web'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 7
              Width = 532
            end
            object cxtextLocalidad: TcxDBTextEdit
              Tag = -1
              Left = 95
              Top = 281
              DataBinding.DataField = 'Localidad'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 50
              Style.HotTrack = False
              TabOrder = 14
              Width = 532
            end
            object btnMasP: TcxButton
              Left = 592
              Top = 200
              Width = 35
              Height = 21
              Caption = 'btnMasP'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 9
              OnClick = btnMasPClick
            end
            object cbbPais: TcxDBLookupComboBox
              Tag = -1
              Left = 95
              Top = 200
              DataBinding.DataField = 'IdPais'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdPais'
              Properties.ListColumns = <
                item
                  FieldName = 'Pais'
                end>
              Properties.ListSource = dsPais
              Properties.OnChange = cbbPaisPropertiesChange
              Style.HotTrack = False
              TabOrder = 8
              Width = 491
            end
            object btnMasE: TcxButton
              Left = 592
              Top = 227
              Width = 35
              Height = 20
              Caption = 'btnMasE'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 11
              OnClick = btnMasEClick
            end
            object btnMasC: TcxButton
              Left = 592
              Top = 254
              Width = 35
              Height = 21
              Caption = 'btnMasC'
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = UDMConection.cxImage16
              PaintStyle = bpsGlyph
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 13
              OnClick = btnMasCClick
            end
            object cbbCiudad: TcxDBLookupComboBox
              Tag = -1
              Left = 95
              Top = 254
              DataBinding.DataField = 'IdCiudad'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdCiudad'
              Properties.ListColumns = <
                item
                  FieldName = 'Ciudad'
                end>
              Properties.ListSource = dsCiudad
              Style.HotTrack = False
              TabOrder = 12
              Width = 491
            end
            object cbbEstado: TcxDBLookupComboBox
              Tag = -1
              Left = 95
              Top = 227
              DataBinding.DataField = 'IdEstado'
              DataBinding.DataSource = dsDatosUpt
              Properties.KeyFieldNames = 'IdEstado'
              Properties.ListColumns = <
                item
                  FieldName = 'Estado'
                end>
              Properties.ListSource = dsEstado
              Properties.OnChange = cbbEstadoPropertiesChange
              Style.HotTrack = False
              TabOrder = 10
              Width = 491
            end
            object cxMaskTel: TcxDBMaskEdit
              Tag = -1
              Left = 431
              Top = 119
              DataBinding.DataField = 'Telefono'
              DataBinding.DataSource = dsDatosUpt
              Properties.EditMask = '!\(999\)000-0000;1;_'
              Properties.MaxLength = 0
              Style.HotTrack = False
              TabOrder = 5
              Width = 196
            end
            object cxSpinCP: TcxDBSpinEdit
              Tag = -1
              Left = 95
              Top = 119
              DataBinding.DataField = 'CP'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 4
              Width = 273
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
              CaptionOptions.Text = 'Calle:'
              Control = cxtextCalle
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Item2: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Colonia:'
              Control = cxtextColonia
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'No. Int:'
              Control = cxtextNoInt
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl2Item5: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'No. Ext:'
              Control = cxDBTextEdit1
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutControl2Item7: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Correo:'
              Control = cxtextMail
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutControl2Item8: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              CaptionOptions.Text = 'Web:'
              Control = cxDBHyperLinkEdit1
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object dxLayoutControl2Item12: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Localidad:'
              Control = cxtextLocalidad
              ControlOptions.ShowBorder = False
              Index = 10
            end
            object dxLayoutControl2Item13: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              LayoutLookAndFeel = UDMConection.dxStyleForms
              Control = btnMasP
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item9: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              CaptionOptions.Text = 'Pa'#237's:'
              Control = cbbPais
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl2Group_Root
              LayoutDirection = ldHorizontal
              Index = 7
              AutoCreated = True
            end
            object dxLayoutControl2Item14: TdxLayoutItem
              Parent = dxLayoutControl2Group3
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              LayoutLookAndFeel = UDMConection.dxStyleForms
              Control = btnMasE
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item15: TdxLayoutItem
              Parent = dxLayoutControl2Group2
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              LayoutLookAndFeel = UDMConection.dxStyleForms
              Control = btnMasC
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item11: TdxLayoutItem
              Parent = dxLayoutControl2Group2
              CaptionOptions.Text = 'Ciudad:'
              Control = cbbCiudad
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl2Group_Root
              LayoutDirection = ldHorizontal
              Index = 9
              AutoCreated = True
            end
            object dxLayoutControl2Item10: TdxLayoutItem
              Parent = dxLayoutControl2Group3
              CaptionOptions.Text = 'Estado:'
              Control = cbbEstado
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl2Group_Root
              LayoutDirection = ldHorizontal
              Index = 8
              AutoCreated = True
            end
            object dxLayoutControl2Item6: TdxLayoutItem
              Parent = dxLayoutControl2Group4
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Telefono:'
              Control = cxMaskTel
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item4: TdxLayoutItem
              Parent = dxLayoutControl2Group4
              AlignHorz = ahClient
              CaptionOptions.Text = 'Codigo Postal'
              Control = cxSpinCP
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl2Group_Root
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
          end
        end
        object cxConfiguracionImpuesto: TcxTabSheet
          Caption = 'Configuraci'#243'n de Impuesto'
          ImageIndex = 3
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 289
            Height = 389
            Align = alLeft
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object cxImpuestosCatalogo: TcxListBox
              Left = 11
              Top = 32
              Width = 265
              Height = 330
              ItemHeight = 13
              TabOrder = 0
              OnDblClick = cxImpuestosCatalogoDblClick
            end
            object dxLayoutControl3Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl3Item1: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              CaptionOptions.Text = 'Cat'#225'logo de Impuestos'
              CaptionOptions.Layout = clTop
              Control = cxImpuestosCatalogo
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
          object btnsImp: TdxLayoutControl
            Left = 289
            Top = 0
            Width = 72
            Height = 0
            Align = alLeft
            TabOrder = 1
            LayoutLookAndFeel = UDMConection.dxStyleForms
            ExplicitHeight = 389
            DesignSize = (
              72
              0)
            object cxButton1: TcxButton
              Left = 11
              Top = 11
              Width = 52
              Height = 25
              Caption = '>'
              TabOrder = 0
              OnClick = cxButton1Click
            end
            object cxButton2: TcxButton
              Left = 11
              Top = 42
              Width = 52
              Height = 25
              Caption = '<'
              TabOrder = 1
              OnClick = cxButton2Click
            end
            object cxButton3: TcxButton
              Left = 11
              Top = 73
              Width = 52
              Height = 25
              Caption = '>>'
              TabOrder = 2
              OnClick = cxButton3Click
            end
            object cxButton4: TcxButton
              Left = 11
              Top = 104
              Width = 52
              Height = 25
              Anchors = [akLeft]
              Caption = '<<'
              TabOrder = 3
              OnClick = cxButton4Click
            end
            object btnsImpGroup_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avCenter
              CaptionOptions.AlignVert = tavCenter
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object btnsImpItem1: TdxLayoutItem
              Parent = btnsImpGroup_Root
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = cxButton1
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object btnsImpItem2: TdxLayoutItem
              Parent = btnsImpGroup_Root
              CaptionOptions.Text = 'cxButton2'
              CaptionOptions.Visible = False
              Control = cxButton2
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object btnsImpItem3: TdxLayoutItem
              Parent = btnsImpGroup_Root
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = cxButton3
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object btnsImpItem4: TdxLayoutItem
              Parent = btnsImpGroup_Root
              CaptionOptions.Text = 'cxButton4'
              CaptionOptions.Visible = False
              Control = cxButton4
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
          object dxLayoutControl7: TdxLayoutControl
            Left = 361
            Top = 0
            Width = 287
            Height = 0
            Align = alClient
            TabOrder = 2
            LayoutLookAndFeel = UDMConection.dxStyleForms
            ExplicitHeight = 389
            object cxImpuestosSeleccionados: TcxListBox
              Left = 11
              Top = 32
              Width = 265
              Height = 330
              ItemHeight = 13
              TabOrder = 0
            end
            object dxLayoutControl7Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl7Item1: TdxLayoutItem
              Parent = dxLayoutControl7Group_Root
              CaptionOptions.Text = 'Impuestos Seleccionados'
              CaptionOptions.Layout = clTop
              Control = cxImpuestosSeleccionados
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxConfiguracionCDFI: TcxTabSheet
          Caption = 'Configuraci'#243'n CFDI'
          ImageIndex = 4
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 648
            Height = 389
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object EdithBtnCertificado: TcxDBButtonEdit
              Tag = -1
              Left = 108
              Top = 11
              DataBinding.DataField = 'Certificado'
              DataBinding.DataSource = dsDatosUpt
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = EdithBtnCertificadoPropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 0
              Width = 494
            end
            object EdithBtnKey: TcxDBButtonEdit
              Tag = -1
              Left = 108
              Top = 38
              DataBinding.DataField = 'Llave'
              DataBinding.DataSource = dsDatosUpt
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = EdithBtnKeyPropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 1
              Width = 494
            end
            object cxtextClave: TcxDBTextEdit
              Tag = -1
              Left = 108
              Top = 65
              DataBinding.DataField = 'ClaveCSD'
              DataBinding.DataSource = dsDatosUpt
              Properties.EchoMode = eemPassword
              Properties.MaxLength = 20
              Style.HotTrack = False
              TabOrder = 2
              Width = 494
            end
            object dxLayoutControl4Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl4Item1: TdxLayoutItem
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'Ruta Certificado:'
              Control = EdithBtnCertificado
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl4Item2: TdxLayoutItem
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'Ruta Llave:'
              Control = EdithBtnKey
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl4Item3: TdxLayoutItem
              Parent = dxLayoutControl4Group_Root
              CaptionOptions.Text = 'Clave CSD'
              Control = cxtextClave
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxOtrasConfiguraciones: TcxTabSheet
          Caption = 'Otras Configuraciones'
          ImageIndex = 5
          object dxLayoutControl5: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 648
            Height = 389
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = UDMConection.dxStyleForms
            object cxSpinDeci: TcxDBSpinEdit
              Tag = -1
              Left = 165
              Top = 11
              DataBinding.DataField = 'Decimales'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 0
              Width = 437
            end
            object cxMaskProveedores: TcxDBMaskEdit
              Tag = -1
              Left = 165
              Top = 38
              DataBinding.DataField = 'MascaraProveedores'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 10
              Style.HotTrack = False
              TabOrder = 1
              Width = 437
            end
            object cxMaskClientes: TcxDBMaskEdit
              Tag = -1
              Left = 165
              Top = 65
              DataBinding.DataField = 'MascaraClientes'
              DataBinding.DataSource = dsDatosUpt
              Properties.MaxLength = 10
              Style.HotTrack = False
              TabOrder = 2
              Width = 437
            end
            object cbbFoco: TcxDBColorComboBox
              Tag = -1
              Left = 165
              Top = 92
              Properties.CustomColors = <>
              Style.HotTrack = False
              TabOrder = 3
              Width = 437
            end
            object dxLayoutControl5Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl5Item1: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'N'#176'. Decimales'
              Control = cxSpinDeci
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item2: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.ShowAccelChar = False
              CaptionOptions.Text = 'Mascara oara Proveedores'
              Control = cxMaskProveedores
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item3: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'Mascara para Clientes:'
              Control = cxMaskClientes
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl5Item4: TdxLayoutItem
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'Color de Foco:'
              Control = cbbFoco
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 959
    ExplicitWidth = 959
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 904
    Top = 168
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      FloatClientWidth = 153
      FloatClientHeight = 420
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
    object dxbrlrgbNuevaSubEm: TdxBarLargeButton [12]
      Caption = 'SubEmpresa'
      Category = 0
      Hint = 'SubEmpresa'
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      SyncImageIndex = False
      ImageIndex = 16
    end
    inherited dxButtonOpcional: TdxBarLargeButton
      Caption = '&Agregar Sub-Empresa'
      Hint = 'Agregar Sub-Empresa'
      Visible = ivAlways
      LargeImageIndex = 21
      OnClick = dxButtonOpcionalClick
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  inherited dsDatos: TDataSource
    Left = 688
    Top = 328
  end
  inherited zDatos: TZQuery
    Left = 688
    Top = 280
  end
  inherited zDatosUpt: TZQuery
    Left = 728
    Top = 280
  end
  inherited dsDatosUpt: TDataSource
    Left = 728
    Top = 328
  end
  inherited dxPopupGrid: TdxRibbonPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxButtonNuevo'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEditar'
      end
      item
        Visible = True
        ItemName = 'dxButtonGuardar'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEliminar'
      end
      item
        Visible = True
        ItemName = 'dxbrlrgbNuevaSubEm'
      end>
    Left = 840
    Top = 320
  end
  inherited dlgSave1: TSaveDialog
    Left = 880
    Top = 88
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 752
    Top = 416
    PixelsPerInch = 96
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 888
    Top = 216
  end
  object dsPais: TDataSource
    DataSet = zPais
    Left = 680
    Top = 216
  end
  object dsEstado: TDataSource
    DataSet = zEstado
    Left = 712
    Top = 216
  end
  object dsCiudad: TDataSource
    DataSet = zCiudad
    Left = 744
    Top = 216
  end
  object zCiudad: TZQuery
    Params = <>
    Left = 744
    Top = 168
  end
  object zEstado: TZQuery
    Params = <>
    Left = 712
    Top = 168
  end
  object zPais: TZQuery
    Params = <>
    Left = 680
    Top = 168
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 800
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    Left = 800
    Top = 216
  end
  object zCatalogoImpuestos: TZQuery
    Params = <>
    Left = 56
    Top = 456
  end
  object dsCatalogoImpuestos: TDataSource
    DataSet = zCatalogoImpuestos
    Left = 56
    Top = 504
  end
  object zImpuestosSeleccionados: TZQuery
    Params = <>
    Left = 416
    Top = 456
  end
  object dsImpuestosSeleccionados: TDataSource
    Left = 416
    Top = 504
  end
  object zImpuestosSeleccionadosUpt: TZQuery
    Params = <>
    Left = 256
    Top = 456
  end
  object zImpConsulta: TZQuery
    Params = <>
    Left = 344
    Top = 312
  end
end
