unit UFrmImportarNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Menus, StdCtrls, cxButtons, DBClient;

type
  TFrmImportarNomina = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cxGrd1DBTableView1: TcxGridDBTableView;
    levelGrid1Level1: TcxGridLevel;
    cxGrd1: TcxGrid;
    btnTimbrar: TcxButton;
    btnImportar: TcxButton;
    cdPercepciones: TClientDataSet;
    cdPersonal: TClientDataSet;
    intgrfldPercepcionesIdPersonal: TIntegerField;
    strngfldPercepcionesClaveConcepto: TStringField;
    strngfldPercepcionesConcepto: TStringField;
    extndfldPercepcionesImporte: TExtendedField;
    cdDeducciones: TClientDataSet;
    intgrfld1: TIntegerField;
    strngfld1: TStringField;
    strngfld2: TStringField;
    extndfld1: TExtendedField;
    strngfldPersonalCodigoPersonal: TStringField;
    strngfldPersonalNombreCompleto: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportarNomina: TFrmImportarNomina;

implementation

{$R *.dfm}

end.
