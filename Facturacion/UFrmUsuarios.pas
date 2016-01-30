unit UFrmUsuarios;

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
  cxNavigator, DB, cxDBData, dxSkinsdxBarPainter, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dxBar, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxRibbon, cxContainer, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxDBEdit, dxLayoutControl, cxMemo, dxBarBuiltInMenu, cxPC, UConection;

type
  TFrmUsuarios = class(TFrmMiniCatalogo)
    cxColumnUsuario: TcxGridDBColumn;
    cxColumnComentarios: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    cxDBTextUsuario: TcxDBTextEdit;
    dxlytmUsuario: TdxLayoutItem;
    cxDBMemoCOmentarios: TcxDBMemo;
    dxlytmComentarios: TdxLayoutItem;
    cxDBTextContrasena: TcxDBTextEdit;
    dxlytmContrasena: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

procedure TFrmUsuarios.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxDBTextUsuario.CanFocus then
    cxDBTextUsuario.SetFocus;
end;

procedure TFrmUsuarios.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if cxDBTextUsuario.CanFocus then
    cxDBTextUsuario.SetFocus;
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
   QueryName := 'master_usuarios';
   PKField := 'IdUsuario';
   CampoMostrar := 'Usuario';
   //Validar Registros duplicados
    pCondiciones := '~(Idusuario)&(Usuario)';
    pCampos := 'Idusuario,Usuario';
end;

end.
