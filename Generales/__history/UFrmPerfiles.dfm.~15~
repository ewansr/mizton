inherited FrmPerfiles: TFrmPerfiles
  Caption = 'Perfiles'
  ClientHeight = 591
  ClientWidth = 528
  OnCreate = FormCreate
  ExplicitWidth = 534
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 528
    ExplicitWidth = 528
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Inicio'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 516
    Height = 256
    ExplicitLeft = 9
    ExplicitWidth = 516
    ExplicitHeight = 256
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColPerfil: TcxGridDBColumn
        Caption = 'Nombre Perfil'
        DataBinding.FieldName = 'perfil'
        Width = 165
      end
      object cxColEscritorio: TcxGridDBColumn
        Caption = 'Mizton Desk'
        DataBinding.FieldName = 'AccesoEscritorio'
        Width = 116
      end
      object cxColApp: TcxGridDBColumn
        Caption = 'Mizton App'
        DataBinding.FieldName = 'AccesoApp'
        Width = 101
      end
      object cxColModoApp: TcxGridDBColumn
        Caption = 'M.A. Mizton App'
        DataBinding.FieldName = 'ModoLecturaApp'
        Width = 120
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 384
    Width = 528
    Height = 207
    ExplicitTop = 384
    ExplicitWidth = 528
    ExplicitHeight = 207
    inherited cxPageDatos: TcxPageControl
      Width = 524
      Height = 203
      ExplicitWidth = 524
      ExplicitHeight = 203
      ClientRectBottom = 197
      ClientRectRight = 518
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 516
        ExplicitHeight = 170
        inherited dxLYCDatos: TdxLayoutControl
          Width = 516
          Height = 170
          ExplicitWidth = 516
          ExplicitHeight = 170
          object cxTextPerfil: TcxDBTextEdit [0]
            Left = 116
            Top = 11
            DataBinding.DataField = 'Perfil'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 382
          end
          object cxCheckMD: TcxDBCheckBox [1]
            Left = 11
            Top = 38
            Caption = 'Permitir acceso a Mizton Desk'
            DataBinding.DataField = 'AccesoEscritorio'
            DataBinding.DataSource = dsDatosUpt
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Style.HotTrack = False
            TabOrder = 1
            Transparent = True
            Width = 121
          end
          object cxCheckMA: TcxDBCheckBox [2]
            Left = 11
            Top = 63
            Caption = 'Permitir Acceso a Mizton App'
            DataBinding.DataField = 'AccesoApp'
            DataBinding.DataSource = dsDatosUpt
            Properties.ValueChecked = 'Si'
            Properties.ValueUnchecked = 'No'
            Properties.OnChange = cxCheckMAPropertiesChange
            Style.HotTrack = False
            TabOrder = 2
            Transparent = True
            Width = 121
          end
          object cxGboxModo: TcxGroupBox [3]
            Left = 11
            Top = 88
            Caption = 'Modo de Acceso a Mizton App'
            ParentBackground = False
            ParentColor = False
            Style.Color = clWhite
            TabOrder = 3
            Height = 55
            Width = 185
            object cbbModoAcceso: TcxDBComboBox
              AlignWithMargins = True
              Left = 6
              Top = 18
              Align = alClient
              DataBinding.DataField = 'modoLecturaApp'
              DataBinding.DataSource = dsDatosUpt
              Properties.Items.Strings = (
                'Propias OT'
                'Todas las OT')
              TabOrder = 0
              Width = 173
            end
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object lyPerfil: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Nombre del Perfil:'
            Control = cxTextPerfil
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lyMD: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'cxDBCheckBox1'
            CaptionOptions.Visible = False
            Control = cxCheckMD
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lyMA: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'cxDBCheckBox1'
            CaptionOptions.Visible = False
            Control = cxCheckMA
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lyModo: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'cxGroupBox1'
            CaptionOptions.Visible = False
            Control = cxGboxModo
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 3
          end
        end
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Height = 262
    ExplicitHeight = 262
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
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 9
    end
    object dxButtonPermisos: TdxBarLargeButton
      Caption = 'Ver / Asignar Permisos'
      Category = 0
      Hint = 'Ver / Asignar Permisos'
      Visible = ivAlways
      OnClick = dxButtonPermisosClick
      SyncImageIndex = False
      ImageIndex = 8
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
  end
  inherited dxPopupGrid: TdxRibbonPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxButtonNuevo'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEditar'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEliminar'
      end
      item
        Visible = True
        ItemName = 'dxButtonPermisos'
      end>
  end
end
