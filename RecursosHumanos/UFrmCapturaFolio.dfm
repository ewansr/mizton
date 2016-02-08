object FrmCapturaFolio: TFrmCapturaFolio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Captura Folio'
  ClientHeight = 314
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 399
    Height = 274
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 389
    ExplicitHeight = 264
    object cxTextFolioPrincipal: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 37
      DataBinding.DataField = 'FolioPrincipal'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 290
    end
    object cxTextFolio: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 64
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxMaskTelefono: TcxDBMaskEdit
      Tag = -1
      Left = 83
      Top = 91
      DataBinding.DataField = 'Telefono'
      DataBinding.DataSource = dsDatos
      Properties.EditMask = '!\(999\)000-0000;1;_'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxTextSecundario: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 199
      DataBinding.DataField = 'Secundario'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxTextArea: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 145
      DataBinding.DataField = 'Area'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxTextNoVale: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 118
      DataBinding.DataField = 'NoVale'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDateFecha: TcxDBDateEdit
      Tag = -1
      Left = 83
      Top = 10
      DataBinding.DataField = 'FechaCreacion'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbbEstatus: TcxDBComboBox
      Tag = -1
      Left = 83
      Top = 226
      DataBinding.DataField = 'Estatus'
      DataBinding.DataSource = dsDatos
      Properties.Items.Strings = (
        'Liquidada'
        'Objetada'
        'Queja')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxTextPrincipal: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 172
      DataBinding.DataField = 'Principal'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object dxLayControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lyFolioPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio Maestro:'
      Control = cxTextFolioPrincipal
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lyFolio: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio:'
      Control = cxTextFolio
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lyTelefono: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Tel'#233'fono:'
      Control = cxMaskTelefono
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lySecundario: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Secundario:'
      Control = cxTextSecundario
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lyArea: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = #193'rea:'
      Control = cxTextArea
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lyNoVale: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'No. Vale'
      Control = cxTextNoVale
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lyFecha: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Fecha:'
      Control = cxDateFecha
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyEstatus: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Estatus:'
      Control = cbbEstatus
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object lyPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Principal:'
      Control = cxTextPrincipal
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  object pnlBotonera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 277
    Width = 393
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 267
    ExplicitWidth = 383
    object btnGuardar: TcxButton
      AlignWithMargins = True
      Left = 234
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Guardar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = UDMConection.cxImage16
      TabOrder = 0
      OnClick = btnGuardarClick
      ExplicitLeft = 224
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 315
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Cancelar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = UDMConection.cxImage16
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 305
    end
  end
  object dsDatos: TDataSource
    DataSet = zDatos
    Left = 64
    Top = 256
  end
  object zDatos: TZQuery
    Params = <>
    Left = 16
    Top = 256
  end
  object zMaterial: TZQuery
    Params = <>
    Left = 176
    Top = 256
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 136
    Top = 256
  end
end
