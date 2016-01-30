unit UFrmAbrirEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxInplaceContainer, cxDBTL, cxTLData, UConection, cxImage,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxContainer, cxEdit, cxDBEdit, cxLabel,
  Menus, StdCtrls, cxButtons, UnitRegistroWindows;

type
  TFrmAbrirEmpresa = class(TForm)
    lstEmpresas: TcxDBTreeList;
    cxColumnRazonSocial: TcxDBTreeListColumn;
    cxColumnRfc: TcxDBTreeListColumn;
    cxColumnRegPät: TcxDBTreeListColumn;
    zEmpresa: TZQuery;
    dsEmpresa: TDataSource;
    cxColumnImgIndex: TcxDBTreeListColumn;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonAbiri: TdxBarLargeButton;
    dxButtonCerrar: TdxBarLargeButton;
    btnAbort: TcxButton;
    btn1: TcxButton;
    btn2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure dxButtonCerrarClick(Sender: TObject);
    procedure dxButtonAbiriClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbrirEmpresa: TFrmAbrirEmpresa;

implementation

{$R *.dfm}

procedure TFrmAbrirEmpresa.btn1Click(Sender: TObject);
begin
  varGlobal.SetValue('IDEmpresa', zEmpresa.FieldByName('IdEmpresa').AsString);
  varGlobal.SetValue('NombreEmpresa', zEmpresa.FieldByName('RazonSocial').AsString);
  varGlobal.SetValue('RFCEmpresa', zEmpresa.FieldByName('RFC').AsString);
  varGlobal.SetValue('Decimales', zEmpresa.FieldByName('decimales').AsInteger);
end;

procedure TFrmAbrirEmpresa.dxButtonAbiriClick(Sender: TObject);
begin
  btn1.Click;
end;

procedure TFrmAbrirEmpresa.dxButtonCerrarClick(Sender: TObject);
begin
  btn2.Click;
end;

procedure TFrmAbrirEmpresa.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  QueryName: string;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      QueryName := 'master_empresa';

      if not AsignarSQL(zEmpresa, QueryName, pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + QueryName + ']');

      if not FiltrarDataset(zEmpresa, 'IdEmpresa', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

      if zEmpresa.Active then
        zEmpresa.Refresh
      else
        zEmpresa.Open;

      if zEmpresa.RecordCount > 0 then
        zEmpresa.First;

    finally
      Screen.Cursor := Cursor;
      AplicarTema(TForm(Self));
    end;
  except
    on e: exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
