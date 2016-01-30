inherited FrmUsuarios: TFrmUsuarios
  Caption = 'Cat'#225'logo de Usuarios'
  ClientHeight = 497
  ClientWidth = 578
  OnCreate = FormCreate
  ExplicitWidth = 584
  ExplicitHeight = 525
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 578
    ExplicitWidth = 578
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Usuarios'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 572
    Height = 168
    ExplicitWidth = 572
    ExplicitHeight = 168
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColumnUsuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Width = 158
      end
      object cxColumnComentarios: TcxGridDBColumn
        DataBinding.FieldName = 'Comentarios'
        PropertiesClassName = 'TcxMemoProperties'
        Width = 146
      end
      object cxColumnActivo: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        Width = 106
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 296
    Width = 578
    Caption = ''
    ExplicitTop = 296
    ExplicitWidth = 578
    inherited cxPageDatos: TcxPageControl
      Width = 574
      ExplicitWidth = 574
      ClientRectRight = 572
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 570
        inherited dxLYCDatos: TdxLayoutControl
          Width = 570
          ExplicitWidth = 570
          object cxDBTextUsuario: TcxDBTextEdit [0]
            Left = 111
            Top = 10
            DataBinding.DataField = 'Usuario'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 402
          end
          object cxDBMemoCOmentarios: TcxDBMemo [1]
            Left = 111
            Top = 64
            DataBinding.DataField = 'Comentarios'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 2
            Height = 89
            Width = 185
          end
          object cxDBTextContrasena: TcxDBTextEdit [2]
            Left = 111
            Top = 37
            DataBinding.DataField = 'Contrasena'
            DataBinding.DataSource = dsDatosUpt
            Properties.EchoMode = eemPassword
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object dxlytmUsuario: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Nombre Usuario:'
            Control = cxDBTextUsuario
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlytmComentarios: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Comentarios:'
            Control = cxDBMemoCOmentarios
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxlytmContrasena: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Contrase'#241'a:'
            Control = cxDBTextContrasena
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
