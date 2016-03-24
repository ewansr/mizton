object FrmAsignaAuto: TFrmAsignaAuto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Elige autom'#243'vil que deseas asignar'
  ClientHeight = 570
  ClientWidth = 387
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
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 381
    Height = 527
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 385
    ExplicitHeight = 166
    object cxDBImage1: TcxDBImage
      Left = 10
      Top = 37
      Align = alClient
      DataBinding.DataField = 'Imagen'
      DataBinding.DataSource = dsAutomovil
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 204
      Width = 399
    end
    object cbbAutomoviles: TcxDBLookupComboBox
      Left = 66
      Top = 10
      DataBinding.DataField = 'idAuto'
      DataBinding.DataSource = dsUpt
      Properties.KeyFieldNames = 'IdAuto'
      Properties.ListColumns = <
        item
          FieldName = 'placas'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAutomovil
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 303
    end
    object cxMemoComentarios: TcxDBMemo
      Left = 10
      Top = 265
      DataBinding.DataField = 'Comentarios'
      DataBinding.DataSource = dsUpt
      Properties.MaxLength = 255
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 248
      Width = 361
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      Control = cxDBImage1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lyAutomoviles: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Autom'#243'vil:'
      Control = cbbAutomoviles
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyComentarios: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Observaciones / Comentarios'
      CaptionOptions.Layout = clTop
      Control = cxMemoComentarios
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 533
    Width = 387
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 268
    ExplicitWidth = 391
    object btnAsignar: TcxButton
      AlignWithMargins = True
      Left = 121
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = '&Asignar'
      TabOrder = 0
      OnClick = btnAsignarClick
      ExplicitLeft = 125
      ExplicitTop = 6
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 202
      Top = 3
      Width = 75
      Height = 31
      Margins.Right = 110
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 206
    end
  end
  object zAutomovil: TZQuery
    Params = <>
    Left = 96
    Top = 136
  end
  object zupt: TZQuery
    Params = <>
    Left = 264
    Top = 136
  end
  object dsAutomovil: TDataSource
    DataSet = zAutomovil
    Left = 88
    Top = 184
  end
  object dsUpt: TDataSource
    DataSet = zupt
    Left = 272
    Top = 176
  end
end
