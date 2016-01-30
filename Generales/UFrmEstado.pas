unit UFrmEstado;

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
  cxContainer, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,UConection,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons,UmsgBox;

type
  TFrmEstado = class(TFrmMiniCatalogo)
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnEstado: TcxGridDBColumn;
    cxColumnPais: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    cxtextCodigo: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextEstado: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    cbbPais: TcxDBLookupComboBox;
    dxLYCDatosItem3: TdxLayoutItem;
    zqryPais: TZQuery;
    dsPais: TDataSource;
    btnMas: TcxButton;
    dxlytmLYCDatosItem4: TdxLayoutItem;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstado: TFrmEstado;

implementation

uses
  UFrmPais;
{$R *.dfm}

procedure TFrmEstado.btnMasClick(Sender: TObject);
begin
  //inherited;
  try
    LlamarSubForm(TFrmPais,FrmPais, zqryPais, zDatosUpt, 'IdPais');
  finally

  end;
end;

procedure TFrmEstado.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
 if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmEstado.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
 if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmEstado.FormCreate(Sender: TObject);
begin
  inherited;
   QueryName := 'master_estado';
   PKField := 'IdEstado';
   CampoMostrar :='Estado';
   //Validar Registros duplicados
   pCondiciones := '~(IdEstado)&(Codigo)';
   pCampos := 'IdEstado,Codigo';
end;

procedure TFrmEstado.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inherited;
      if not AsignarSQL(zqryPais, 'master_pais', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_pais' + ']');

      if not FiltrarDataset(zqryPais, 'IdPais', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_pais' + ']');
      if zqryPais.Active then
        begin
          zqryPais.Refresh
        end
      else
        zqryPais.Open;
        //zqryPais.RecNo := cbbPais.ItemIndex + 1;
        //Aqui se manda a seleccionar el primer campo
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

end.
