unit UFrmCondicionPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMiniCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutControl,
  cxPC, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrmCondicionPago = class(TFrmMiniCatalogo)
    cxtextCondicion: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxColumnCondicion: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCondicionPago: TFrmCondicionPago;

implementation

{$R *.dfm}

procedure TFrmCondicionPago.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
    if cxtextCondicion.CanFocus then
        cxtextCondicion.SetFocus;
end;

procedure TFrmCondicionPago.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
 if cxtextCondicion.CanFocus then
        cxtextCondicion.SetFocus;
end;

procedure TFrmCondicionPago.FormCreate(Sender: TObject);
begin
  inherited;
    QueryName := 'factura_condicionpago';
   PKField := 'IdCondicionPago';
   CampoMostrar :='CondicionPago';
end;

end.
