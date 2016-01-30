unit UFrmMovimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, dxSkinsdxBarPainter,
  dxBar, cxClasses;

type
  TFrmMovimientos = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabMovimientos: TcxTabSheet;
    cxTabBajoStock: TcxTabSheet;
    dxBarManger1: TdxBarManager;
    dxbrManger1Bar: TdxBar;
    brSite1: TdxBarDockControl;
    btnNuevo: TdxBarLargeButton;
    btnEditar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnActualizar: TdxBarLargeButton;
    btn5: TdxBarLargeButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovimientos: TFrmMovimientos;

implementation

{$R *.dfm}

end.
