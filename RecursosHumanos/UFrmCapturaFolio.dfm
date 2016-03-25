object FrmCapturaFolio: TFrmCapturaFolio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Captura Folio'
  ClientHeight = 235
  ClientWidth = 403
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
    Width = 403
    Height = 195
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = UDMConection.dxStyleForms
    ExplicitHeight = 345
    object cxTextFolio: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 38
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxMaskTelefono: TcxDBMaskEdit
      Tag = -1
      Left = 83
      Top = 65
      DataBinding.DataField = 'Telefono'
      DataBinding.DataSource = dsDatos
      Properties.EditMask = '!\(999\)000-0000;1;_'
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDateFecha: TcxDBDateEdit
      Tag = -1
      Left = 83
      Top = 11
      DataBinding.DataField = 'FechaCreacion'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 0
      Width = 302
    end
    object cbbEstatus: TcxDBComboBox
      Tag = -1
      Left = 83
      Top = 146
      DataBinding.DataField = 'Estatus'
      DataBinding.DataSource = dsDatos
      Properties.Items.Strings = (
        'Liquidada'
        'Objetada'
        'Queja')
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxTextPrincipal: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 92
      DataBinding.DataField = 'Principal'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxTextSecundario: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 119
      DataBinding.DataField = 'Secundario'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 4
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
    object lyFolio: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio:'
      Control = cxTextFolio
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lyTelefono: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Tel'#233'fono:'
      Control = cxMaskTelefono
      ControlOptions.ShowBorder = False
      Index = 2
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
      Index = 5
    end
    object lyPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Principal:'
      Control = cxTextPrincipal
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lySecundario: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Secundario:'
      Control = cxTextSecundario
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object pnlBotonera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 198
    Width = 397
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 348
    object btnGuardar: TcxButton
      AlignWithMargins = True
      Left = 238
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Guardar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = UDMConection.cxImage16
      TabOrder = 0
      OnClick = btnGuardarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 319
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = UDMConection.cxImage16
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object dsDatos: TDataSource
    DataSet = zDatos
    Left = 48
    Top = 144
  end
  object zDatos: TZQuery
    Params = <>
    Left = 88
    Top = 152
  end
  object zMaterial: TZQuery
    Params = <>
    Left = 256
    Top = 144
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 120
    Top = 152
  end
  object zVales: TZQuery
    Params = <>
    Left = 208
    Top = 144
  end
  object dsVales: TDataSource
    DataSet = zVales
    Left = 160
    Top = 144
  end
end
