object FrmPermisousuarioModulo: TFrmPermisousuarioModulo
  Left = 0
  Top = 0
  Caption = 'Asignaci'#243'n de permisos por m'#243'dulo'
  ClientHeight = 572
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOpciones: TPanel
    Left = 257
    Top = 81
    Width = 104
    Height = 491
    Align = alLeft
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 492
    object btnAgregar: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 96
      Height = 25
      Align = alTop
      Caption = '&Agregar'
      TabOrder = 0
      OnClick = btnAgregarClick
    end
    object btnQuitar: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 96
      Height = 25
      Align = alTop
      Caption = '&Quitar'
      TabOrder = 1
      OnClick = btnQuitarClick
    end
  end
  object CxGrdPermisos: TcxGrid
    Left = 361
    Top = 81
    Width = 592
    Height = 491
    Align = alClient
    TabOrder = 1
    ExplicitTop = 0
    ExplicitWidth = 593
    ExplicitHeight = 492
    object cxGridPermisos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPermisos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Content = UDMConection.cxstylContent
      Styles.Header = UDMConection.cxstylHeader
      object cxColCaption: TcxGridDBColumn
        Caption = 'M'#243'dulo'
        DataBinding.FieldName = 'Caption'
        PropertiesClassName = 'TcxLabelProperties'
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000008000000100000
          00170000001900000018000000120000000A0000000200000000000000000000
          00000000000000000000000000000000000403020117341B1476683528CE773D
          2DE8884332FF75392AE9622E22D13016107D0301011B00000005000000020000
          00090000000E0000000F00000012100807397F4738E3AE7F71FFBB9F94FF7458
          4DFF4E3023FF74584CFFB99D92FFA67467FF723729E40E060533000000088363
          57C0B58978FFB38776FFCCB4AAFF9F695AFFD9C2BBFFEAE0D9FF8D7162FF9C7F
          6FFF706159FF917667FF7C6154FFE1D4CDFFC8ACA2FF5F2D20CB0000000CB98F
          7EFFFBF5F1FFFAF2ECFFF1EDE9FFB58574FFF5EEEBFFF3E9E5FF755342FF907C
          71FF000000FF6B5D54FF72503EFFECE2DDFFDFD0CAFF7D3C2BF60000000CBE93
          81FFFBF6F3FFFAF3EEFFF5F1EEFFC09C8FFFE6D6D0FFF9F5F2FF9C8173FFEFE8
          CBFF938075FF9C7F6FFF917566FFF3ECE8FFD1BBB3FF622F23C80000000BC197
          86FFFBF7F4FFFAF4EFFFF9F4F1FFEAE1DEFFBC9384FFCDAC9FFFDCCAC3FFA287
          7AFF836352FFA2877AFFDAC7C0FFC19B8FFF763D2EE30E07052E0000000AC59C
          8BFFFCF8F6FFFBF5F1FFFBF4F0FFFAF7F3FFF2EFEDFFD5C2BBFFBD988AFFB68A
          7CFFB07C6AFFB18375FFB38A7CFFB6968BFF020101210000000400000009C9A0
          8FFFFCF9F6FFFBF5F2FFFBF5F2FFFBF6F2FFFBF5F2FFF8F5F3FFF5F1EFFFF1EE
          EDFFEFECEBFFF0EDEBFFF2EEECFFCDB1A7FF000000100000000000000008CCA4
          93FFFDF9F8FFFBF6F4FFFBF7F4FFFBF6F4FFFBF6F3FFFCF6F3FFFBF6F3FFFBF6
          F3FFFBF6F3FFFBF6F3FFFBF6F3FFBC907FFF0000000E0000000000000007C38A
          5BFFE4C299FFD3A26CFFD3A06AFFD39F68FFD29D65FFD19A64FFD19860FFD096
          5FFFCF945CFFCF935BFFCE915AFFB37240FF0000000D0000000000000007C58E
          5EFFEBCDA5FFDEB078FFDDAE76FFDDAD74FFDBAB72FFDBA971FFDAA76FFFD8A6
          6EFFD8A46BFFD6A26AFFD6A168FFB67744FF0000000C0000000000000006C690
          61FFECD0A7FFEBCDA5FFEACCA2FFEAC99EFFE8C79CFFE6C49AFFE6C296FFE5C0
          92FFE3BD8EFFE2B98BFFE0B788FFB97B49FF0000000B0000000000000003946C
          4AC0C79063FFC69062FFC58F61FFC58D5EFFC48C5DFFC38A5BFFC18859FFC087
          57FFBF8555FFBE8354FFBD8151FF8B5F3BC30000000700000000000000010000
          0003000000050000000500000006000000060000000700000007000000070000
          0008000000080000000800000008000000060000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Width = 196
      end
      object cxColInsertar: TcxGridDBColumn
        DataBinding.FieldName = 'Insertar'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Si'
          'No')
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000C000000120000001400000014000000140000001400000014000000150000
          0015000000140000000D000000030000000000000000000000000000000B7A5B
          50C3AB7F6FFFAA7E6FFFAB7D6FFFAA7D6EFFAA7D6EFFA97C6DFFA97C6DFFAA7C
          6DFFA87B6CFF79584DC50000000D00000000000000000000000000000010AD82
          72FFFBF7F4FFFAF6F4FFFBF6F4FFFBF6F3FFFBF5F3FFFAF5F2FFFAF5F2FFFAF4
          F1FFFAF4F1FFAA7C6EFF0000001300000000000000000000000000000011AF84
          75FFFCF8F7FFF6EEE8FFF7EDE8FFF6EDE8FFF6EDE7FFF6EDE7FFF6ECE7FFF6EC
          E7FFFBF5F3FFAB7E6FFF0000001300000000000000000000000000000010B187
          78FFFDFAF8FFF8EFEAFFC39C8CFFC29B8AFFC29B89FFC29A89FFC19989FFC199
          88FFECE2DEFFDDD3D0FF000000260000000E00000003000000000000000FB389
          7BFFFDFBFAFFF8F1EDFFF8F0EDFFF8F0ECFFF7F0ECFFF7F0ECFFF7EFEBFFF7EF
          EBFFF2F1F1FF528771FF267255FF1A503BC50000000D000000000000000EB68D
          7EFFFEFCFCFFF9F2EFFFC6A191FFC5A090FFC5A090FFC59F8FFFEEE5E0FFE7DE
          D9FFD6CDC9FF2A7C5EFF27D596FF287758FF0000001F0000000C0000000DB890
          81FFFEFDFDFFFAF5F2FFF9F4F1FFF9F4F1FFF9F3F1FFF9F3F0FFF5F4F3FF60A0
          89FF2E8767FF2D8364FF33DBA0FF2B7D5FFF297B5DFF1D5641C20000000DBA93
          85FFFEFEFEFFFAF6F4FF00A361FF00A060FF009C5BFF009758FFB8DBCCFF3291
          70FF98F1D6FF41E2ADFF40E3AAFF3DE1AAFF3CE0A9FF2B7F61FF0000000CBC97
          88FFFFFEFEFFFBF8F6FFFBF7F6FFFAF7F6FFFBF7F5FFFAF7F4FFF9F8F7FF64AD
          94FF349674FF329372FF4AE8B6FF308D6CFF2F8A6AFF22634CC40000000BC099
          8BFFFFFFFFFFFCF8F8FFCDAD9DFFCCAC9DFFCCAB9CFFCBAB9BFFF1E9E5FFEEE5
          E1FFE9E0DCFF369A78FFB9F8E7FF339473FF0000000D000000050000000AC19D
          8EFFFFFFFFFFFCFAF9FFFCFAF9FFFCFAF8FFFCF9F8FFFBFAF8FFFCF9F8FFFBF9
          F8FFFCFCFCFF65B095FF379E7CFF28735AC0000000040000000000000009C4A0
          91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEE4E1FF0000000D000000020000000100000000000000069379
          6EC3C5A294FFC5A294FFC4A193FFC4A092FFC3A092FFC39F91FFC29F90FFC29E
          90FFC29D8FFF8F7469C400000007000000000000000000000000000000010000
          00050000000800000009000000090000000900000009000000090000000A0000
          000A000000090000000700000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Width = 77
      end
      object cxColEditar: TcxGridDBColumn
        DataBinding.FieldName = 'Editar'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Si'
          'No')
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000040000000F000000110000000B0000
          0004000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E431B10FF31130BE1190A05980304
          07420000000C0000000200000000000000000000000000000000000000000000
          0001000000050000000A0000000D0000001B673B2ADEB8C7D2FF7789A3FF2240
          84FF040F34980000001000000002000000000000000000000000000000020000
          000B1122386522416DB3284F86D593AAC9FD837175FF869AB3FFC7E3F6FF1B65
          B9FF286BABFF0412379A0000001000000002000000000000000000000008274A
          76B86295C5FF9CC0DFFFC7DCEEFFCEEEF9FF9BC4D2FF458BC6FFDDFEFDFF4DB4
          E6FF1B67BAFF2E73B1FF051439980000000D00000002000000000000000B3C72
          B1FFB9EAF9FFD3F0FBFFEBF9FFFFB9EBFAFFB1E3F0FF68A7CFFF439FD5FFDDFE
          FDFF55C0ECFF1D6ABCFF337BB6FF06163B920000000C000000020000000B3F75
          B3FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF91DEF3FFA7D6EAFF649DCBFF48A5
          D8FFDDFEFDFF5DCBF2FF206EBFFF3883BCFF07193E900000000A0000000A437A
          B6FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF82CCECFF9CBFE2FF649D
          CCFF4BABDAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FF071B418E00000009467E
          B9FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF71A7DCFF9BBD
          E1FF6AA7D3FF4EAFDDFFDDFEFDFF6BDEFBFF287AC5FF15438DFF000000094883
          BCFFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF6EA1
          DAFFA8D1EDFF659AC8FF51B2DFFFDDFEFDFF4CA7D7FF0F2B4F88000000084C86
          C0FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84
          CFFF80C0EBFF9BB5D4FF1B456389327FBFFF163A5A8600000005000000074F8B
          C2FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84
          CFFF58ACE6FF6F98C6FF0000000A00000004000000030000000100000006518E
          C4FFC8EFFBFFE9FAFFFFE5F9FFFFDDF7FFFFD6F4FEFFCBF0FCFFABD9F4FF8FC7
          EDFF76C0EDFF437BB7FF00000007000000000000000000000000000000055493
          C7FFE8FAFFFFE5F9FFFFDFF7FFFFD8F4FEFFCFF2FEFFC6EEFEFFBDEBFDFFB3E8
          FCFFABE5FBFF4780BAFF0000000600000000000000000000000000000003406E
          93BD82B3DAFFA2CAE6FFB0D6EDFFBAE1F3FFC8EFFEFFABDAF2FF95CBEAFF82BC
          E1FF67A2D1FF38638EC300000004000000000000000000000000000000010000
          00031B2F3E5330536F913C688CB44579A5D45491C6FF4377A2D4386388B52C4D
          6B92182A3B540000000400000001000000000000000000000000}
        Width = 71
      end
      object cxColEliminar: TcxGridDBColumn
        Caption = 'Eliminar'
        DataBinding.FieldName = 'eliminar'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Si'
          'No')
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000020E110C50A21911
          74E00504173E0000000A0503173F181071E1110B4EA400000210000000000000
          00000000000000000000000000000000000000000006120E55A6414FC0FF4762
          D6FF26248FF009072C6824238FF1415CD4FF3949BCFF110C52A8000000000000
          00010000000300000007000000090000000A000000111B137BE08596E1FF5B7C
          E6FF4F6DDEFF2F34A7FE4C6ADDFF5574E4FF7486DDFF191276E0000000010000
          00081222385F21426CAE284F85D23060A1FA87A3C9FF798BBBFD3F3FA4FD8EA1
          E8FF5E7FE7FF5B7BE5FF5B7BE6FF8397E6FF323093F00504173800000006274B
          76B56295C5FF9CC0DFFFC7DCEEFFA1E3F8FF7CD8F1FFA1D5EBFF6E81BEFF4349
          B4FF83A0F1FF84A1F2FF829FF0FF4145B0FE0A082F6200000007000000083C72
          B1FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFFACE5F5FF8BB0D7FF393DA0FF87A1
          EDFF97B2F6FFC1D0F8FF96B1F6FF859EECFF2D2E8EEF04031738000000083F75
          B3FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFFAAE3F3FF3538ACFFA8B7EFFFA4BC
          F8FFCAD3F5FF6261BCFFC7D1F4FFA2BBF8FFA6B5EEFF1F1A88E300000007437A
          B6FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFFACE5F5FF5767C0FF9C9CDAFFD6D9
          F3FF5252B9FF6F7EBDFF4543A8EFD1D5F1FF9597D6FF171364A400000006467E
          B9FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF9BE2F5FFA9D9EFFF5967C3FF3738
          B2FF91B3E1FF91ACD0FF07061E39222093E01614609800000208000000064883
          BCFFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6FD5F1FF8ACFEEFF94BCE5FF92B9
          E2FFA0CFF0FF4C7BB5FF00000008000000020000000200000001000000054C86
          C0FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84
          CFFF58ACE6FF3D72B1FF00000006000000000000000000000000000000054F8B
          C2FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84
          CFFF58ACE6FF4077B4FF0000000600000000000000000000000000000004518E
          C4FFC8EFFBFFE9FAFFFFE5F9FFFFDDF7FFFFD6F4FEFFCBF0FCFFABD9F4FF8FC7
          EDFF76C0EDFF437BB7FF00000005000000000000000000000000000000035493
          C7FFE8FAFFFFE5F9FFFFDFF7FFFFD8F4FEFFCFF2FEFFC6EEFEFFBDEBFDFFB3E8
          FCFFABE5FBFF4780BAFF00000004000000000000000000000000000000023F6D
          93BC82B3DAFFA2CAE6FFB0D6EDFFBAE1F3FFC8EFFEFFABDAF2FF95CBEAFF82BC
          E1FF67A2D1FF38638EC200000002000000000000000000000000000000000000
          00021B2F3E51305370903C678CB34579A5D45491C6FF4377A2D4386388B42B4D
          6B90182A3B510000000300000001000000000000000000000000}
        Width = 87
      end
      object cxColForm: TcxGridDBColumn
        Caption = 'Form. Desarrollador'
        DataBinding.FieldName = 'NombreForm'
        PropertiesClassName = 'TcxLabelProperties'
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000333333FF333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
          00001A1A1A801A1A1A8000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A1A1A801A1A1A8000000000333333FF333333FF00000000000000000000
          000000000000000000001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A8000000000333333FF333333FF00000000000000000000
          000000000000000000001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
          1A801A1A1A801A1A1A8000000000333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF00000000000000000000
          00000000000000000000000000000000000000000000333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000000000
          00000000000000000000000000000000000000000000333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000}
        Width = 157
      end
    end
    object cxLvl1: TcxGridLevel
      GridView = cxGridPermisos
    end
  end
  object lstModulos: TcxListView
    Left = 0
    Top = 81
    Width = 257
    Height = 491
    Align = alLeft
    Columns = <
      item
        Caption = 'Modulos'
        ImageIndex = 4
        Width = 250
      end>
    IconOptions.AutoArrange = True
    RowSelect = True
    SmallImages = UDMConection.cxImage16
    SortType = stText
    TabOrder = 2
    ViewStyle = vsReport
    ExplicitLeft = -2
    ExplicitTop = 54
    ExplicitHeight = 438
  end
  object pnl1: TPanel
    Left = 0
    Top = 54
    Width = 953
    Height = 27
    Align = alTop
    TabOrder = 7
    object LblLeyenda: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Permisos para'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitHeight = 24
    end
  end
  object zPermisos: TZQuery
    Params = <>
    Left = 512
    Top = 160
  end
  object dsPermisos: TDataSource
    DataSet = zPermisos
    Left = 512
    Top = 216
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
    ImageOptions.LargeImages = UDMConection.cxMizton32
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 312
    Top = 256
    DockControlHeights = (
      0
      0
      54
      0)
    object dxbrManager1Bar: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 433
      FloatTop = 261
      FloatClientWidth = 62
      FloatClientHeight = 108
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGuardar'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object btnGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 9
      OnClick = btnGuardarClick
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 14
      OnClick = btnCancelarClick
      AutoGrayScale = False
    end
  end
end
