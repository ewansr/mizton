unit UFrmPuestos;

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
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxBar, dxRibbon,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxSplitter, dxLayoutContainer,
  dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit;

type
  TFrmPuestos = class(TFrmMiniCatalogo)
    cxColCodigo: TcxGridDBColumn;
    cxColPuesto: TcxGridDBColumn;
    cxTextCodigo: TcxDBTextEdit;
    lyCodigo: TdxLayoutItem;
    cxTextPuesto: TcxDBTextEdit;
    lyPuesto: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPuestos: TFrmPuestos;

implementation

{$R *.dfm}

procedure TFrmPuestos.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'mt_puestos';
  PKField := 'idPuesto';
  CampoMostrar := 'Titulo';

  pCondiciones := '~(IdPuesto)&(Codigo)';
  pCampos := 'IdPuesto,Codigo';

end;

end.
