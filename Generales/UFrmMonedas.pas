unit UFrmMonedas;

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
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutContainer,
  dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit;

type
  TFrmMonedas = class(TFrmMiniCatalogo)
    cxtextCodigo: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextMoneda: TcxDBTextEdit;
    dxlytmLYCDatosItem2: TdxLayoutItem;
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnMoneda: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMonedas: TFrmMonedas;

implementation

{$R *.dfm}

procedure TFrmMonedas.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    CxtextCodigo.SetFocus;
end;

procedure TFrmMonedas.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmMonedas.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_moneda';
  PKField := 'IdMoneda';
  CampoMostrar :='Moneda';
  //Validar Registros duplicados
  pCondiciones := '~(IdMoneda)&(Codigo)';
  pCampos := 'IdMoneda,Codigo';
end;
end.
