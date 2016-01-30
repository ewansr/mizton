inherited FrmGiroEmpresa: TFrmGiroEmpresa
  Caption = 'Cat'#225'logo de Giros de Empresa'
  ClientHeight = 522
  ClientWidth = 594
  OnCreate = FormCreate
  ExplicitWidth = 600
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 594
    ExplicitWidth = 594
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Giro Empresa'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 588
    Height = 218
    ExplicitWidth = 588
    ExplicitHeight = 218
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnGiro: TcxGridDBColumn
        Tag = 1
        Caption = 'Giro de Empresa'
        DataBinding.FieldName = 'Giro'
        Width = 229
      end
      object cxColumnDescripcion: TcxGridDBColumn
        Tag = 1
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'Descripcion'
        Width = 291
      end
      object cxColumnActivo: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Activo'
        Visible = False
        Width = 107
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 346
    Width = 594
    Height = 176
    ExplicitTop = 346
    ExplicitWidth = 594
    ExplicitHeight = 176
    inherited cxPageDatos: TcxPageControl
      Width = 590
      Height = 172
      ExplicitWidth = 590
      ExplicitHeight = 172
      ClientRectBottom = 170
      ClientRectRight = 588
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 586
        ExplicitHeight = 142
        inherited dxLYCDatos: TdxLayoutControl
          Width = 586
          Height = 142
          ExplicitWidth = 586
          ExplicitHeight = 142
          object cxtextGiro: TcxDBTextEdit [0]
            Tag = -1
            Left = 124
            Top = 11
            DataBinding.DataField = 'Giro'
            DataBinding.DataSource = dsDatosUpt
            Properties.MaxLength = 100
            Style.HotTrack = False
            TabOrder = 0
            Width = 286
          end
          object cxDBMemo1: TcxDBMemo [1]
            Tag = -1
            Left = 124
            Top = 38
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatosUpt
            Properties.AutoSelect = True
            Properties.MaxLength = 100
            Style.HotTrack = False
            TabOrder = 1
            Height = 84
            Width = 358
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxLYCDatosItem1: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Giro de la Empresa'
            Control = cxtextGiro
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosItem2: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Descripci'#243'n'
            Control = cxDBMemo1
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientWidth = 97
      FloatClientHeight = 366
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
  end
end
