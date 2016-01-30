unit UFrmNuevaFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  cxClasses, dxRibbon, ExtCtrls, dxSkinscxPCPainter, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmNuevaFactura = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxBButtonEditar: TdxBarButton;
    dxBButtonBuscar: TdxBarButton;
    dxBButtonEliminar: TdxBarButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonActualizar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    dxButton2: TdxBarLargeButton;
    dxButtonExportar: TdxBarLargeButton;
    dxButtonEne: TdxBarLargeButton;
    dxButtonFeb: TdxBarLargeButton;
    dxButtonMar: TdxBarLargeButton;
    dxButtonAbr: TdxBarLargeButton;
    dxButtonMay: TdxBarLargeButton;
    dxButtonJun: TdxBarLargeButton;
    dxButtonJul: TdxBarLargeButton;
    dxButtonAgo: TdxBarLargeButton;
    dxButtonSep: TdxBarLargeButton;
    dxButtonOct: TdxBarLargeButton;
    dxButtonNov: TdxBarLargeButton;
    dxButtonDic: TdxBarLargeButton;
    dxButtonTimbrar: TdxBarLargeButton;
    dxButtonCancelarTimbre: TdxBarLargeButton;
    dxBButtonMCancelado: TdxBarButton;
    dxBButtonMTimbrada: TdxBarButton;
    dxBButtonMCreada: TdxBarButton;
    dxButtonMPagda: TdxBarLargeButton;
    dxButtonMPendiente: TdxBarLargeButton;
    dxButtonExportarXML: TdxBarLargeButton;
    dxButtonExportarPDF: TdxBarLargeButton;
    dxButtonPrevisualizar: TdxBarLargeButton;
    pnlDetalleFactura: TPanel;
    pnlImpuestoFactura: TPanel;
    pnlEncabezadoFactura: TPanel;
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    dxLYC1: TdxLayoutControl;
    cbbCliente: TcxDBLookupComboBox;
    dxlytmLYC1Item1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNuevaFactura: TFrmNuevaFactura;

implementation

{$R *.dfm}

end.
