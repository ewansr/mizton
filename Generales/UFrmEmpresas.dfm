object FrmEmpresas: TFrmEmpresas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Empresa'
  ClientHeight = 564
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 546
    Height = 97
    BarManager = dxBarManager1
    ColorSchemeName = 'Office2013White'
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitWidth = 540
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Nombre Cat'#225'logo'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxbrManager1Bar'
        end>
      Index = 0
    end
  end
  object pnlEmpresa: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 100
    Width = 540
    Height = 74
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitWidth = 534
    object dxLYC6: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 538
      Height = 72
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = UDMConection.dxStyleForms
      ExplicitWidth = 532
      object cxDBTextEmpresa: TcxDBTextEdit
        Tag = -1
        Left = 118
        Top = 10
        DataBinding.DataField = 'Titulo'
        DataBinding.DataSource = dsDatosUpt
        Style.HotTrack = False
        TabOrder = 0
        Width = 219
      end
      object cxDBTextRazonSocial: TcxDBTextEdit
        Tag = -1
        Left = 118
        Top = 37
        DataBinding.DataField = 'RazonSocial'
        DataBinding.DataSource = dsDatosUpt
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cxDBTextCodigo: TcxDBTextEdit
        Left = 392
        Top = 10
        DataBinding.DataField = 'Codigo'
        DataBinding.DataSource = dsDatosUpt
        Style.HotTrack = False
        TabOrder = 1
        Width = 125
      end
      object dxLy5: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxlytmLYC6Item1: TdxLayoutItem
        Parent = dxLYC6Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nombre Empresa:'
        Control = cxDBTextEmpresa
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxlytmLYC6Item11: TdxLayoutItem
        Parent = dxLy5
        CaptionOptions.Text = 'Raz'#243'n Social:'
        Control = cxDBTextRazonSocial
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxlytmLYC6Item12: TdxLayoutItem
        Parent = dxLYC6Group1
        CaptionOptions.Text = 'C'#243'digo:'
        Control = cxDBTextCodigo
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLYC6Group1: TdxLayoutAutoCreatedGroup
        Parent = dxLy5
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
    end
  end
  object cxPageEmpresas: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 180
    Width = 540
    Height = 381
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabDatosGenerales
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 534
    ExplicitHeight = 373
    ClientRectBottom = 379
    ClientRectLeft = 2
    ClientRectRight = 538
    ClientRectTop = 28
    object cxTabDatosGenerales: TcxTabSheet
      Caption = 'Datos Generales'
      ImageIndex = 0
      ExplicitWidth = 530
      ExplicitHeight = 343
      object dxLYC1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 536
        Height = 351
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        ExplicitWidth = 530
        ExplicitHeight = 343
        object cxDbMaskRFC: TcxDBMaskEdit
          Tag = -1
          Left = 130
          Top = 10
          DataBinding.DataField = 'rfc'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 0
          Width = 159
        end
        object cxDBTextRepLegal: TcxDBTextEdit
          Tag = -1
          Left = 130
          Top = 64
          DataBinding.DataField = 'RepresentanteLegal'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object imgLogo: TcxDBImage
          Tag = -1
          Left = 10
          Top = 139
          DataBinding.DataField = 'Logotipo'
          DataBinding.DataSource = dsDatosUpt
          Properties.Caption = '< Doble clic para insertar Logotipo> '
          Properties.GraphicClassName = 'TdxSmartImage'
          Style.HotTrack = False
          TabOrder = 5
          OnDblClick = imgLogoDblClick
          Height = 166
          Width = 252
        end
        object imgCedula: TcxDBImage
          Tag = -1
          Left = 268
          Top = 139
          DataBinding.DataField = 'Cedula'
          DataBinding.DataSource = dsDatosUpt
          Properties.Caption = '< Doble clic para insertar C'#233'dula Fiscal >'
          Properties.GraphicClassName = 'TdxSmartImage'
          Style.HotTrack = False
          TabOrder = 6
          OnDblClick = imgCedulaDblClick
          Height = 166
          Width = 252
        end
        object cxEditBtnArchivos: TcxDBButtonEdit
          Tag = -1
          Left = 130
          Top = 91
          DataBinding.DataField = 'ArchivosEmpresa'
          DataBinding.DataSource = dsDatosUpt
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxEditBtnArchivosPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxTextRegFiscal: TcxDBTextEdit
          Left = 130
          Top = 37
          DataBinding.DataField = 'RegimenFiscal'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cxTextRegPat: TcxDBTextEdit
          Left = 380
          Top = 10
          DataBinding.DataField = 'RegPatronal'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 1
          Width = 140
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
          Parent = dxLYC1Group2
          AlignHorz = ahClient
          CaptionOptions.Text = 'RFC:'
          Control = cxDbMaskRFC
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmRepresentanteLegal: TdxLayoutItem
          Parent = dxLyLayoutControl1Group_Root
          CaptionOptions.Text = 'Representante:'
          Control = cxDBTextRepLegal
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxlytmLYC1Item11: TdxLayoutItem
          Parent = dxLYC1Group1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Logotipo:'
          CaptionOptions.Layout = clTop
          Control = imgLogo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmLYC1Item12: TdxLayoutItem
          Parent = dxLYC1Group1
          CaptionOptions.Text = 'C'#233'dula Fiscal:'
          CaptionOptions.Layout = clTop
          Control = imgCedula
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLYC1Group1: TdxLayoutAutoCreatedGroup
          Parent = dxLyLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 4
          AutoCreated = True
        end
        object dxlytmLYC1Item13: TdxLayoutItem
          Parent = dxLyLayoutControl1Group_Root
          CaptionOptions.Text = 'Guardar Archivos en:'
          Control = cxEditBtnArchivos
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayitemLYC1Item1: TdxLayoutItem
          Parent = dxLyLayoutControl1Group_Root
          CaptionOptions.Text = 'R'#233'gimen Fiscal:'
          Control = cxTextRegFiscal
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayitemLYC1Item11: TdxLayoutItem
          Parent = dxLYC1Group2
          CaptionOptions.Text = 'Reg. Patronal:'
          Control = cxTextRegPat
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLYC1Group2: TdxLayoutAutoCreatedGroup
          Parent = dxLyLayoutControl1Group_Root
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
      end
    end
    object cxTabDireccion: TcxTabSheet
      Caption = 'Direcci'#243'n'
      ImageIndex = 1
      ExplicitWidth = 530
      ExplicitHeight = 343
      object dxLYC2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 536
        Height = 351
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        ExplicitWidth = 530
        ExplicitHeight = 343
        object cxDBTextCalle: TcxDBTextEdit
          Tag = -1
          Left = 97
          Top = 10
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 0
          Width = 416
        end
        object cxDBTextColonia: TcxDBTextEdit
          Tag = -1
          Left = 97
          Top = 37
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextNoInt: TcxDBTextEdit
          Tag = -1
          Left = 97
          Top = 64
          DataBinding.DataField = 'Noint'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cbbCiudad: TcxDBLookupComboBox
          Tag = -1
          Left = 97
          Top = 226
          DataBinding.DataField = 'IdCiudad'
          DataBinding.DataSource = dsDatosUpt
          Properties.KeyFieldNames = 'IdCiudad'
          Properties.ListColumns = <
            item
              FieldName = 'Ciudad'
            end>
          Properties.ListSource = dsCiudad
          Style.HotTrack = False
          TabOrder = 10
          Width = 145
        end
        object cxDBTextLocalidad: TcxDBTextEdit
          Tag = -1
          Left = 97
          Top = 253
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 11
          Width = 121
        end
        object cxHyperLinkWeb: TcxDBHyperLinkEdit
          Tag = -1
          Left = 97
          Top = 145
          DataBinding.DataField = 'Web'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object cxDBTextMail: TcxDBTextEdit
          Tag = -1
          Left = 97
          Top = 118
          DataBinding.DataField = 'CorreoElectronico'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object cbbPais: TcxDBLookupComboBox
          Tag = -1
          Left = 97
          Top = 172
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
          Width = 145
        end
        object cbbEstado: TcxDBLookupComboBox
          Tag = -1
          Left = 97
          Top = 199
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
          TabOrder = 9
          Width = 145
        end
        object cxDBTextNoExt: TcxDBTextEdit
          Tag = -1
          Left = 392
          Top = 64
          DataBinding.DataField = 'NoExt'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDbMaskTelefono: TcxDBMaskEdit
          Tag = -1
          Left = 392
          Top = 91
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsDatosUpt
          Properties.EditMask = '!\(999\)000-0000;1;_'
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cxSpinCP: TcxDBSpinEdit
          Tag = -1
          Left = 97
          Top = 91
          DataBinding.DataField = 'Cp'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object dxLy1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxlytmLYC2Item1: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Calle:'
          Control = cxDBTextCalle
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmColonia: TdxLayoutItem
          Parent = dxLy1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Colonia:'
          Control = cxDBTextColonia
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxlytmNoINt: TdxLayoutItem
          Parent = dxLYC2Group3
          AlignHorz = ahClient
          CaptionOptions.Text = 'No. Int:'
          Control = cxDBTextNoInt
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmLYC2Item14: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Ciudad:'
          Control = cbbCiudad
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxlytmLocalidad: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Localidad:'
          Control = cxDBTextLocalidad
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxlytmLYC2Item16: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Web:'
          Control = cxHyperLinkWeb
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxlytmMail: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Correo:'
          Control = cxDBTextMail
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxlytmLYC2Item12: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Pa'#237's:'
          Control = cbbPais
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxlytmLYC2Item13: TdxLayoutItem
          Parent = dxLy1
          CaptionOptions.Text = 'Estado:'
          Control = cbbEstado
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxlytmNoExt: TdxLayoutItem
          Parent = dxLYC2Group2
          CaptionOptions.Text = 'No. Ext:'
          Control = cxDBTextNoExt
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLYC2Group1: TdxLayoutAutoCreatedGroup
          Parent = dxLy1
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object dxlytmLYC2Item15: TdxLayoutItem
          Parent = dxLYC2Group2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Tel'#233'fono:'
          Control = cxDbMaskTelefono
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLYC2Group2: TdxLayoutAutoCreatedGroup
          Parent = dxLYC2Group1
          Index = 1
          AutoCreated = True
        end
        object dxlytmLYC2Item11: TdxLayoutItem
          Parent = dxLYC2Group3
          AlignHorz = ahClient
          CaptionOptions.Text = 'C'#243'digo Postal:'
          Control = cxSpinCP
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLYC2Group3: TdxLayoutAutoCreatedGroup
          Parent = dxLYC2Group1
          AlignHorz = ahClient
          Index = 0
          AutoCreated = True
        end
      end
    end
    object cxTabImpuestos: TcxTabSheet
      Caption = 'Configuraci'#243'n de Impuestos'
      ImageIndex = 2
      ExplicitWidth = 530
      ExplicitHeight = 343
      object dxLYC3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 536
        Height = 351
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        ExplicitWidth = 530
        ExplicitHeight = 343
        object cxDBTextIESPS: TcxDBTextEdit
          Tag = -1
          Left = 81
          Top = 37
          DataBinding.DataField = 'IESPS'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 1
          Width = 211
        end
        object cxDBTextImpuesto3: TcxDBTextEdit
          Tag = -1
          Left = 81
          Top = 64
          DataBinding.DataField = 'Impuesto3'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBTextISR: TcxDBTextEdit
          Tag = -1
          Left = 81
          Top = 91
          DataBinding.DataField = 'RetencionISR'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextRetIVA: TcxDBTextEdit
          Tag = -1
          Left = 81
          Top = 118
          DataBinding.DataField = 'RetencionIVA'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cxCheckIESPS: TcxDBCheckBox
          Tag = -1
          Left = 400
          Top = 37
          Caption = 'I.E.S.P.S Fijo:'
          Style.HotTrack = False
          TabOrder = 2
          Transparent = True
          Width = 121
        end
        object cxDBTextIVA: TcxDBTextEdit
          Tag = -1
          Left = 81
          Top = 10
          DataBinding.DataField = 'IVA'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 0
          Width = 440
        end
        object dxLy2: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxlytmLYC3Item11: TdxLayoutItem
          Parent = dxLYC3Group1
          AlignHorz = ahClient
          CaptionOptions.Text = 'I.E.S.P.S:'
          Control = cxDBTextIESPS
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmImpuesto3: TdxLayoutItem
          Parent = dxLy2
          CaptionOptions.Text = 'Impuesto 3:'
          Control = cxDBTextImpuesto3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxlytmLYC3Item12: TdxLayoutItem
          Parent = dxLy2
          CaptionOptions.Text = 'Ret. I.S.R:'
          Control = cxDBTextISR
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxlytmLYC3Item13: TdxLayoutItem
          Parent = dxLy2
          CaptionOptions.Text = 'Ret. I.V.A:'
          Control = cxDBTextRetIVA
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxlytmLYC3Item14: TdxLayoutItem
          Parent = dxLYC3Group1
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Control = cxCheckIESPS
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLYC3Group1: TdxLayoutAutoCreatedGroup
          Parent = dxLy2
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxlytmIva: TdxLayoutItem
          Parent = dxLy2
          CaptionOptions.Text = 'I.V.A:'
          Control = cxDBTextIVA
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxTabCFDI: TcxTabSheet
      Caption = 'Configuraci'#243'n de CFDI'
      ImageIndex = 3
      ExplicitWidth = 530
      ExplicitHeight = 343
      object dxLYC4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 536
        Height = 351
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        ExplicitWidth = 530
        ExplicitHeight = 343
        object cxEditBtnCer: TcxDBButtonEdit
          Tag = -1
          Left = 107
          Top = 10
          DataBinding.DataField = 'Certificado'
          DataBinding.DataSource = dsDatosUpt
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxEditBtnCerPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 0
          Width = 414
        end
        object cxEditBtnkey: TcxDBButtonEdit
          Tag = -1
          Left = 107
          Top = 37
          DataBinding.DataField = 'Llave'
          DataBinding.DataSource = dsDatosUpt
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxEditBtnkeyPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextClave: TcxDBTextEdit
          Tag = -1
          Left = 107
          Top = 64
          DataBinding.DataField = 'ClaveCSD'
          DataBinding.DataSource = dsDatosUpt
          Properties.EchoMode = eemPassword
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object dxLy3: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxlytmLYC4Item1: TdxLayoutItem
          Parent = dxLy3
          CaptionOptions.Text = 'Ruta Certificado:'
          Control = cxEditBtnCer
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmLYC4Item11: TdxLayoutItem
          Parent = dxLy3
          CaptionOptions.Text = 'Ruta Llave:'
          Control = cxEditBtnkey
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxlytmClave: TdxLayoutItem
          Parent = dxLy3
          CaptionOptions.Text = 'Clave CSD:'
          Control = cxDBTextClave
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxTabOtros: TcxTabSheet
      Caption = 'Otras Config.'
      ImageIndex = 4
      ExplicitWidth = 530
      ExplicitHeight = 343
      object dxLYC5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 536
        Height = 351
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = UDMConection.dxStyleForms
        ExplicitWidth = 530
        ExplicitHeight = 343
        object cxSpinDecimales: TcxDBSpinEdit
          Tag = -1
          Left = 153
          Top = 10
          DataBinding.DataField = 'Decimales'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 0
          Width = 339
        end
        object cxDBTextMaskProveedores: TcxDBTextEdit
          Tag = -1
          Left = 153
          Top = 37
          DataBinding.DataField = 'MascaraProveedores'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 1
          Width = 360
        end
        object cxDBTextMaskClientes: TcxDBTextEdit
          Tag = -1
          Left = 153
          Top = 64
          DataBinding.DataField = 'MascaraClientes'
          DataBinding.DataSource = dsDatosUpt
          Style.HotTrack = False
          TabOrder = 2
          Width = 72
        end
        object cbbColorFocus: TcxDBColorComboBox
          Left = 153
          Top = 91
          DataBinding.DataField = 'Focus'
          DataBinding.DataSource = dsDatosUpt
          Properties.AllowSelectColor = True
          Properties.CustomColors = <>
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object dxLy4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxlytmLYC5Item1: TdxLayoutItem
          Parent = dxLy4
          CaptionOptions.Text = 'No. Decimales:'
          Control = cxSpinDecimales
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxlytmMaskProveedores: TdxLayoutItem
          Parent = dxLy4
          CaptionOptions.Text = 'M'#225'scara para Proveedor:'
          Control = cxDBTextMaskProveedores
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxlytmLYC5Item11: TdxLayoutItem
          Parent = dxLy4
          CaptionOptions.Text = 'M'#225'scara para Cliente:'
          Control = cxDBTextMaskClientes
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxlytmLYC5Item12: TdxLayoutItem
          Parent = dxLy4
          CaptionOptions.Text = 'Color de Foco:'
          Control = cbbColorFocus
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
  end
  object btnABORT: TcxButton
    Left = 446
    Top = 40
    Width = 75
    Height = 25
    Caption = 'btnABORT'
    ModalResult = 3
    TabOrder = 7
    Visible = False
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = UDMConection.cxImage16
    ImageOptions.LargeImages = UDMConection.cxImage342
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 600
    Top = 432
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrManager1Bar: TdxBar
      Caption = 'Opciones de Empresa'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 196
      FloatTop = 251
      FloatClientWidth = 97
      FloatClientHeight = 366
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonExportar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonSalir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 543
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          ItemName = 'dxBButtonBuscar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEliminar'
        end
        item
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelar'
        end
        item
          Visible = True
          ItemName = 'dxButtonSalir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxButtonNuevo: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 0
      ShortCut = 16462
    end
    object dxBButtonEditar: TdxBarButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ShortCut = 16453
    end
    object dxBButtonBuscar: TdxBarButton
      Caption = '&Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 16450
    end
    object dxBButtonEliminar: TdxBarButton
      Caption = 'Eli&minar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      ImageIndex = 9
      ShortCut = 46
    end
    object dxButtonGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 8
      ShortCut = 16455
      OnClick = dxButtonGuardarClick
      SyncImageIndex = False
      ImageIndex = 8
    end
    object dxButtonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 116
    end
    object dxButtonCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 115
    end
    object dxButtonSalir: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16499
      OnClick = dxButtonSalirClick
    end
    object dxButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxButtonExportar: TdxBarLargeButton
      Caption = '&Imprimir Ficha'
      Category = 0
      Hint = 'Imprimir Ficha'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 16464
    end
  end
  object zDatosUpt: TZQuery
    Params = <>
    Left = 464
    Top = 384
  end
  object dsDatosUpt: TDataSource
    DataSet = zDatosUpt
    Left = 376
    Top = 376
  end
  object zPais: TZQuery
    Params = <>
    Left = 176
    Top = 440
  end
  object zEstado: TZQuery
    Params = <>
    Left = 176
    Top = 392
  end
  object zCiudad: TZQuery
    Params = <>
    Left = 176
    Top = 344
  end
  object dsPais: TDataSource
    DataSet = zPais
    Left = 224
    Top = 440
  end
  object dsEstado: TDataSource
    DataSet = zEstado
    Left = 224
    Top = 392
  end
  object dsCiudad: TDataSource
    DataSet = zCiudad
    Left = 224
    Top = 344
  end
  object dlgOpen1: TOpenDialog
    Left = 384
    Top = 328
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 464
    Top = 344
  end
end
