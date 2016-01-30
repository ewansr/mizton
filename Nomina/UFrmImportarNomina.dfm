object FrmImportarNomina: TFrmImportarNomina
  Left = 0
  Top = 0
  Caption = 'Importar y timbrar empleados desde plantilla'
  ClientHeight = 443
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 81
    Align = alTop
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 0
    Top = 402
    Width = 846
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 248
    ExplicitWidth = 185
    object btnTimbrar: TcxButton
      AlignWithMargins = True
      Left = 135
      Top = 4
      Width = 125
      Height = 33
      Align = alLeft
      Caption = '&Timbrar datos'
      TabOrder = 0
      ExplicitTop = 6
    end
    object btnImportar: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 125
      Height = 33
      Align = alLeft
      Caption = 'Importar datos'
      TabOrder = 1
    end
  end
  object cxGrd1: TcxGrid
    Left = 0
    Top = 81
    Width = 846
    Height = 321
    Align = alClient
    TabOrder = 2
    ExplicitTop = 79
    object cxGrd1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
    end
    object levelGrid1Level1: TcxGridLevel
      GridView = cxGrd1DBTableView1
    end
  end
  object cdPercepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 184
    object intgrfldPercepcionesIdPersonal: TIntegerField
      FieldName = 'IdPersonal'
    end
    object strngfldPercepcionesClaveConcepto: TStringField
      FieldName = 'ClaveConcepto'
      Size = 100
    end
    object strngfldPercepcionesConcepto: TStringField
      FieldName = 'Concepto'
      Size = 255
    end
    object extndfldPercepcionesImporte: TExtendedField
      FieldName = 'Importe'
      Precision = 19
    end
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 112
    object strngfldPersonalCodigoPersonal: TStringField
      FieldName = 'CodigoPersonal'
      Size = 100
    end
    object strngfldPersonalNombreCompleto: TStringField
      FieldName = 'NombreCompleto'
      Size = 255
    end
  end
  object cdDeducciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 232
    object intgrfld1: TIntegerField
      FieldName = 'IdPersonal'
    end
    object strngfld1: TStringField
      FieldName = 'ClaveConcepto'
      Size = 100
    end
    object strngfld2: TStringField
      FieldName = 'Concepto'
      Size = 255
    end
    object extndfld1: TExtendedField
      FieldName = 'Importe'
      Precision = 19
    end
  end
end
