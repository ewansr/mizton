object FrmProgreso: TFrmProgreso
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 44
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxProBar1: TcxProgressBar
    Left = 0
    Top = 25
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = 48
    ExplicitWidth = 121
    Width = 389
  end
  object LblMensaje: TcxLabel
    Left = 0
    Top = 0
    Align = alClient
    Caption = '***'
    Transparent = True
    ExplicitLeft = 136
    ExplicitTop = 8
    ExplicitWidth = 23
    ExplicitHeight = 17
  end
end
