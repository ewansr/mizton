object FrmMovimientos: TFrmMovimientos
  Left = 0
  Top = 0
  Caption = 'FrmMovimientos'
  ClientHeight = 455
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 664
    Height = 455
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabMovimientos
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 429
    ClientRectBottom = 453
    ClientRectLeft = 2
    ClientRectRight = 662
    ClientRectTop = 28
    object cxTabMovimientos: TcxTabSheet
      Caption = 'Movimientos de Inventario'
      ImageIndex = 0
      ExplicitLeft = 4
      ExplicitTop = 30
      object brSite1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 660
        Height = 46
        Align = dalTop
        BarManager = dxBarManger1
      end
    end
    object cxTabBajoStock: TcxTabSheet
      Caption = 'Bajo Inventario'
      ImageIndex = 1
    end
  end
  object dxBarManger1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 328
    Top = 232
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrManger1Bar: TdxBar
      Caption = 'Movimientos'
      CaptionButtons = <>
      DockControl = brSite1
      DockedDockControl = brSite1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 428
      FloatTop = 261
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNuevo'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnEliminar'
        end
        item
          Visible = True
          ItemName = 'btnActualizar'
        end
        item
          Visible = True
          ItemName = 'btn5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
    end
    object btnEditar: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
    end
    object btnEliminar: TdxBarLargeButton
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
    end
    object btnActualizar: TdxBarLargeButton
      Caption = 'Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
    end
    object btn5: TdxBarLargeButton
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
    end
  end
end
