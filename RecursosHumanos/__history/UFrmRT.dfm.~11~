object FrmRT: TFrmRT
  Left = 0
  Top = 0
  Caption = 'Registros'
  ClientHeight = 605
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CxGrdDatos: TcxGrid
    Left = 0
    Top = 0
    Width = 533
    Height = 605
    Align = alClient
    TabOrder = 0
    object cxGridDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxColExpediente: TcxGridDBColumn
        Caption = 'Expediente'
        Width = 120
      end
      object cxColNoFolio: TcxGridDBColumn
        Caption = 'Folio'
        Width = 116
      end
      object cxColEstatus: TcxGridDBColumn
        Caption = 'Estatus'
        Visible = False
        GroupIndex = 0
        Width = 121
      end
      object cxColtipo: TcxGridDBColumn
        Caption = 'Tipo'
        Width = 106
      end
    end
    object cxLvl1: TcxGridLevel
      GridView = cxGridDatos
    end
  end
  object cxMemo1: TcxMemo
    Left = 120
    Top = 216
    Lines.Strings = (
      'cxMemo1')
    TabOrder = 1
    Height = 265
    Width = 329
  end
  object cdDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 448
    object strngfldDatosid: TStringField
      FieldName = 'id'
      Size = 10
    end
    object strngfldDatosFolio: TStringField
      FieldName = 'Folio'
    end
  end
  object dsDatos: TDataSource
    Left = 264
    Top = 312
  end
  object FHttp: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 328
    Top = 216
  end
end
