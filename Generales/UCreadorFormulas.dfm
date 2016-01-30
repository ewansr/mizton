object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 659
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object advmSQL: TAdvMemo
    Left = 49
    Top = 33
    Width = 650
    Height = 626
    Cursor = crIBeam
    Margins.Top = 35
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    Align = alClient
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -11
    AutoCompletion.Font.Name = 'Tahoma'
    AutoCompletion.Font.Style = []
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BorderStyle = bsSingle
    CodeFolding.Enabled = False
    CodeFolding.LineColor = clGray
    Ctl3D = False
    DelErase = True
    EnhancedHomeKey = False
    Gutter.DigitCount = 4
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -13
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'COURIER NEW'
    Font.Style = []
    HiddenCaret = False
    Lines.Strings = (
      '')
    MarkerList.UseDefaultMarkerImageIndex = False
    MarkerList.DefaultMarkerImageIndex = -1
    MarkerList.ImageTransparentColor = 33554432
    MemoSource = advSourceMemo
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clWhite
    SelBkColor = clNavy
    ShowRightMargin = True
    SmartTabs = False
    SyntaxStyles = AdvStyleMemo
    TabOrder = 0
    TabSize = 4
    TabStop = True
    TrimTrailingSpaces = False
    UndoLimit = 100
    UrlStyle.TextColor = clBlue
    UrlStyle.BkColor = clWhite
    UrlStyle.Style = [fsUnderline]
    UseStyler = True
    Version = '2.2.7.5'
    WordWrap = wwNone
    ExplicitLeft = 51
  end
  object pnlOperaciones: TPanel
    Left = 0
    Top = 33
    Width = 49
    Height = 626
    Align = alLeft
    TabOrder = 1
    ExplicitTop = 35
    object btnMas: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 97
      Width = 41
      Height = 25
      Align = alTop
      Caption = '+'
      TabOrder = 0
      ExplicitLeft = -16
      ExplicitTop = 304
      ExplicitWidth = 75
    end
    object btnMenos: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 41
      Height = 25
      Align = alTop
      Caption = '-'
      TabOrder = 1
      ExplicitLeft = -16
      ExplicitTop = 304
      ExplicitWidth = 75
    end
    object btnPor: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 41
      Height = 25
      Align = alTop
      Caption = '*'
      TabOrder = 2
      ExplicitLeft = -16
      ExplicitTop = 304
      ExplicitWidth = 75
    end
    object btnEntre: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 41
      Height = 25
      Align = alTop
      Caption = '/'
      TabOrder = 3
      ExplicitLeft = -16
      ExplicitTop = 304
      ExplicitWidth = 75
    end
  end
  object pnlImpuestos: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitTop = -6
    object btnSubtotal: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 72
      Height = 25
      Align = alLeft
      Caption = 'Subtotal'
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 31
    end
  end
  object dsImpuestos: TDataSource
    Left = 376
    Top = 184
  end
  object AdvStyleMemo: TAdvSQLMemoStyler
    AutoCompletion.Strings = (
      'SELECT'
      'WHERE')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintCharWriteDelimiter = ','
    LineComment = #39
    MultiCommentLeft = '{'
    MultiCommentRight = '}'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'and'
          'begin'
          'begin'
          'break'
          'by'
          'close'
          'continue'
          'create'
          'deallocate'
          'declare'
          'delete'
          'delete'
          'do'
          'else'
          'end'
          'end'
          'exec'
          'fetch'
          'for'
          'from'
          'group'
          'having'
          'if'
          'inner'
          'insert'
          'join'
          'left'
          'like'
          'not'
          'on'
          'open'
          'or'
          'order'
          'outer'
          'proc'
          'procedure'
          'repeat'
          'return'
          'right'
          'rollback'
          'select'
          'set'
          'to'
          'trans'
          'transaction'
          'until'
          'update'
          'values'
          'where'
          'while'
          'while')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'SQL Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql'
    DefaultExtension = '.sql'
    StylerName = 'SQL'
    Extensions = 'sql'
    Left = 392
    Top = 264
  end
  object advSourceMemo: TAdvMemoSource
    SyntaxStyler = AdvStyleMemo
    Lines.Strings = (
      '')
    ReadOnly = False
    Left = 448
    Top = 136
  end
end
