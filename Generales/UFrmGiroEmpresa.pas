unit UFrmGiroEmpresa;

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
  dxLayoutcxEditAdapters, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxLayoutContainer, cxTextEdit, cxDBEdit, dxBar, dxRibbon,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutControl, cxPC,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxMemo;

type
  TFrmGiroEmpresa = class(TFrmMiniCatalogo)
    cxtextGiro: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxColumnGiro: TcxGridDBColumn;
    cxColumnDescripcion: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
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
  FrmGiroEmpresa: TFrmGiroEmpresa;

implementation

{$R *.dfm}

procedure TFrmGiroEmpresa.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
if cxtextGiro.CanFocus then
    cxtextGiro.SetFocus;
end;

procedure TFrmGiroEmpresa.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
if cxtextGiro.CanFocus then
    cxtextGiro.SetFocus;
end;

procedure TFrmGiroEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_giro';
  PKField := 'IdGiro';
  CampoMostrar :='Giro';
  //Validar Registros duplicados
  pCondiciones := '~(IdGiro)&(Giro)';
  pCampos := 'IdGiro,Giro';
end;

end.
