unit UFrmCatalogoAutomoviles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCatalogo, cxPC, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSkinsdxDockControlPainter, dxScreenTip, dxCustomHint, cxHint, cxClasses,
  dxDockControl, dxBar, dxRibbon, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxLayoutContainer, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxDockPanel,
  cxContainer, dxLayoutcxEditAdapters, cxImage, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBLookupComboBox, cxLabel,
  cxDBLabel;

type
  TFrmCatalogoAutomoviles = class(TFrmCatalogo)
    imgAuto: TcxDBImage;
    lyAuto: TdxLayoutItem;
    cxMaskPlaca: TcxDBMaskEdit;
    lyPlaca: TdxLayoutItem;
    cxTextColor: TcxDBTextEdit;
    lyColor: TdxLayoutItem;
    cxTextMarca: TcxDBTextEdit;
    lyMarca: TdxLayoutItem;
    cxTextNombreModelo: TcxDBTextEdit;
    lyNombreModelo: TdxLayoutItem;
    cxDateCompra: TcxDBDateEdit;
    lyCompra: TdxLayoutItem;
    cxColCompra: TcxGridDBColumn;
    cxColMatricula: TcxGridDBColumn;
    cxColColor: TcxGridDBColumn;
    cxColNombre: TcxGridDBColumn;
    cxColModelo: TcxGridDBColumn;
    cxColMarca: TcxGridDBColumn;
    cxSpinModelo: TcxDBSpinEdit;
    lyModelo: TdxLayoutItem;
    cxColestatus: TcxGridDBColumn;
    btnAsignar: TdxBarLargeButton;
    DbLblEstatus: TcxDBLabel;
    lyLYCDatosItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoAutomoviles: TFrmCatalogoAutomoviles;

implementation

{$R *.dfm}

procedure TFrmCatalogoAutomoviles.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'mt_automovil';
  PKField := 'IdAuto';
  CampoMostrar := 'Placas';
  //Validar Registros duplicados
  pCondiciones := '~(IdAuto)&(Placas)';
  pCampos := 'IdAuto,Placas';
end;

end.
