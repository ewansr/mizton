unit UFrmPerfiles;

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
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxSplitter,
  dxLayoutContainer, dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, dxLayoutcxEditAdapters, cxCheckBox, cxDBEdit, cxTextEdit,
  cxGroupBox, cxMaskEdit, cxDropDownEdit;

type
  TFrmPerfiles = class(TFrmMiniCatalogo)
    cxColPerfil: TcxGridDBColumn;
    cxColEscritorio: TcxGridDBColumn;
    cxColApp: TcxGridDBColumn;
    cxColModoApp: TcxGridDBColumn;
    cxTextPerfil: TcxDBTextEdit;
    lyPerfil: TdxLayoutItem;
    cxCheckMD: TcxDBCheckBox;
    lyMD: TdxLayoutItem;
    cxCheckMA: TcxDBCheckBox;
    lyMA: TdxLayoutItem;
    cxGboxModo: TcxGroupBox;
    lyModo: TdxLayoutItem;
    cbbModoAcceso: TcxDBComboBox;
    dxButtonPermisos: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure cxCheckMAPropertiesChange(Sender: TObject);
    procedure dxButtonPermisosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerfiles: TFrmPerfiles;

implementation

uses
  UfrmPermisousuarioModulo;

{$R *.dfm}

procedure TFrmPerfiles.cxCheckMAPropertiesChange(Sender: TObject);
begin
  if cxCheckMA.Checked then
  begin
    cxGboxModo.Visible := True;
  end
  else
  begin
    cxGboxModo.Visible := false;
    zDatosUpt.FieldByName('ModoLecturaApp').Clear;
  end;
end;

procedure TFrmPerfiles.dxButtonPermisosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPermisoUsuarioModulo, frmPermisoUsuarioModulo);
  FrmPermisousuarioModulo.IdPerfil := zDatos.FieldByName('IdPerfil').AsString;
  FrmPermisousuarioModulo.NombrePerfil := zDatos.FieldByName('Perfil').AsString;
  FrmPermisousuarioModulo.ShowModal;

end;

procedure TFrmPerfiles.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_perfiles';
  PKField := 'IdPerfil';
  CampoMostrar := 'Perfil';

  pCondiciones := '~(IdPerfil)&(Perfil)';
  pCampos := 'IdPerfil,Perfil';
end;

end.
