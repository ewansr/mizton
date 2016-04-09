inherited FrmCatalogoAutomoviles: TFrmCatalogoAutomoviles
  Caption = 'Cat'#225'logo General de Autom'#243'viles'
  ClientHeight = 721
  OnCreate = FormCreate
  ExplicitHeight = 760
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 594
    ExplicitHeight = 594
    DockingType = 5
    OriginalWidth = 1133
    OriginalHeight = 594
    inherited dxLayoutDockSite1: TdxLayoutDockSite
      Height = 594
      ExplicitHeight = 594
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxlytdckst1: TdxLayoutDockSite
        Height = 594
        ExplicitWidth = 743
        ExplicitHeight = 594
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited dxDockGrid: TdxDockPanel
        Height = 594
        Caption = 'Cat'#225'logo general de autom'#243'viles de la empresa'
        ExplicitHeight = 594
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Height = 558
          ExplicitWidth = 729
          ExplicitHeight = 558
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            OptionsView.ColumnAutoWidth = False
            object cxColCompra: TcxGridDBColumn
              Caption = 'Fecha Compra'
              DataBinding.FieldName = 'fechaCompra'
              Width = 104
            end
            object cxColMatricula: TcxGridDBColumn
              Caption = 'Matr'#237'cula'
              DataBinding.FieldName = 'Placas'
              Width = 129
            end
            object cxColNombre: TcxGridDBColumn
              Caption = 'Autom'#243'vil'
              DataBinding.FieldName = 'NombreModelo'
              Width = 131
            end
            object cxColColor: TcxGridDBColumn
              DataBinding.FieldName = 'Color'
              Width = 101
            end
            object cxColModelo: TcxGridDBColumn
              DataBinding.FieldName = 'Modelo'
              Width = 100
            end
            object cxColMarca: TcxGridDBColumn
              Caption = 'Marca'
              DataBinding.FieldName = 'marca'
              Width = 140
            end
            object cxColestatus: TcxGridDBColumn
              Caption = 'Estatus'
              DataBinding.FieldName = 'estatus'
              Width = 101
            end
          end
        end
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Height = 594
      ExplicitHeight = 594
      DockingType = 3
      OriginalWidth = 390
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Height = 564
        ExplicitHeight = 564
        ClientRectBottom = 558
        inherited cxTsDatos: TcxTabSheet
          Caption = 'Informaci'#243'n detallada'
          ExplicitHeight = 531
          inherited dxLYCDatos: TdxLayoutControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 368
            Height = 525
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 368
            ExplicitHeight = 525
            object imgAuto: TcxDBImage [0]
              Left = 11
              Top = 38
              DataBinding.DataField = 'Imagen'
              DataBinding.DataSource = dsDatosUpt
              Properties.Caption = '<Doble click para seleccionar y subir una foto>'
              Properties.GraphicClassName = 'TdxSmartImage'
              Style.HotTrack = False
              TabOrder = 1
              Height = 236
              Width = 350
            end
            object cxMaskPlaca: TcxDBMaskEdit [1]
              Left = 102
              Top = 307
              DataBinding.DataField = 'Placas'
              DataBinding.DataSource = dsDatosUpt
              Properties.EditMask = '!AAA\-00-00;1;_'
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxTextColor: TcxDBTextEdit [2]
              Left = 102
              Top = 334
              DataBinding.DataField = 'Color'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxTextMarca: TcxDBTextEdit [3]
              Left = 102
              Top = 388
              DataBinding.DataField = 'Marca'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxTextNombreModelo: TcxDBTextEdit [4]
              Left = 102
              Top = 361
              DataBinding.DataField = 'NombreModelo'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDateCompra: TcxDBDateEdit [5]
              Left = 102
              Top = 280
              DataBinding.DataField = 'fechaCompra'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxSpinModelo: TcxDBSpinEdit [6]
              Left = 102
              Top = 415
              DataBinding.DataField = 'Modelo'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object DbLblEstatus: TcxDBLabel [7]
              Left = 102
              Top = 11
              DataBinding.DataField = 'estatus'
              DataBinding.DataSource = dsDatos
              Style.HotTrack = False
              Style.TextStyle = [fsBold, fsItalic]
              Transparent = True
              Height = 21
              Width = 121
            end
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
            object lyAuto: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'cxDBImage1'
              CaptionOptions.Visible = False
              Control = imgAuto
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lyPlaca: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Matricula:'
              Control = cxMaskPlaca
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object lyColor: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Color:'
              Control = cxTextColor
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lyMarca: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Marca:'
              Control = cxTextMarca
              ControlOptions.ShowBorder = False
              Index = 6
            end
            object lyNombreModelo: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Autom'#243'vil:'
              Control = cxTextNombreModelo
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object lyCompra: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Fecha Compra:'
              Control = cxDateCompra
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lyModelo: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Modelo:'
              Control = cxSpinModelo
              ControlOptions.ShowBorder = False
              Index = 7
            end
            object lyLYCDatosItem1: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Estatus:'
              Control = DbLblEstatus
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
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
      FloatClientWidth = 153
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
    object btnAsignar: TdxBarLargeButton
      Caption = '&Asignar Autom'#243'vil'
      Category = 0
      Hint = 'Asignar Autom'#243'vil'
      Visible = ivAlways
    end
  end
  inherited dxDockingManager1: TdxDockingManager
    PixelsPerInch = 96
  end
end
