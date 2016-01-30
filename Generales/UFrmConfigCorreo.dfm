object FrmConfigCorreo: TFrmConfigCorreo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Configurar cuenta de correo'
  ClientHeight = 175
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ly1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 486
    Height = 138
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = UDMConection.dxStyleForms
    object LblEmpresa: TcxLabel
      Left = 11
      Top = 11
      Caption = 'Nombre de Empresa'
      Style.HotTrack = False
      Transparent = True
    end
    object cxTextCorreo: TcxTextEdit
      Tag = -1
      Left = 122
      Top = 34
      Style.HotTrack = False
      TabOrder = 1
      Width = 344
    end
    object cxTextContrasena: TcxTextEdit
      Tag = -1
      Left = 122
      Top = 61
      Properties.EchoMode = eemPassword
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxTextSMTP: TcxTextEdit
      Tag = -1
      Left = 122
      Top = 88
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxSpinPuerto: TcxSpinEdit
      Tag = -1
      Left = 345
      Top = 88
      Properties.AssignedValues.MinValue = True
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dxLyLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlytmly1Item1: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblEmpresa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmly1Item2: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Correo Electr'#243'nico:'
      Control = cxTextCorreo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytmly1Item3: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Contrase'#241'a:'
      Control = cxTextContrasena
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlytmly1Item4: TdxLayoutItem
      Parent = dxlytcrtdgrply1Group1
      AlignHorz = ahClient
      CaptionOptions.Text = 'SMTP:'
      Control = cxTextSMTP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmly1Item5: TdxLayoutItem
      Parent = dxlytcrtdgrply1Group1
      CaptionOptions.Text = 'Puerto:'
      Control = cxSpinPuerto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytcrtdgrply1Group1: TdxLayoutAutoCreatedGroup
      Parent = dxLyLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 138
    Width = 486
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btn1: TcxButton
      Tag = -1
      AlignWithMargins = True
      Left = 327
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = '&Guardar'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TcxButton
      AlignWithMargins = True
      Left = 408
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btn2Click
    end
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 96
    Top = 120
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object zCorreo: TZQuery
    Params = <>
    Left = 24
    Top = 120
  end
end
