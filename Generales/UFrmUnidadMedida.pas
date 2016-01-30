unit UFrmUnidadMedida;

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
  TFrmUnidadMedida = class(TFrmMiniCatalogo)
    cxColumnUnidad: TcxGridDBColumn;
    cxColumnAbreviatura: TcxGridDBColumn;
    cxtextUnidad: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextAbreviatura: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUnidadMedida: TFrmUnidadMedida;

implementation

{$R *.dfm}

procedure TFrmUnidadMedida.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxtextUnidad.CanFocus then
    cxtextUnidad.SetFocus;
end;

procedure TFrmUnidadMedida.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if cxtextUnidad.CanFocus then
    cxtextUnidad.SetFocus;
end;

procedure TFrmUnidadMedida.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_unidadmedida';
  PKField := 'IdUnidadMedida';
  CampoMostrar :='Unidad';
  //Validar Registros duplicados
  pCondiciones := '~(IdUnidadMedida)&(Unidad)';
  pCampos := 'IdUnidadMedida,Unidad';
end;

end.
