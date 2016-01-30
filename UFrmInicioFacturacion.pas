unit UFrmInicioFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxContainer, cxEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, UConection, UnitRegistroWindows ;

type
  TFrmInicioFacturacion = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl;
    cxLabel1: TcxLabel;
    dxRibbonBackstageViewGalleryControl1Group1: TdxRibbonBackstageViewGalleryGroup;
    dxSkinController1: TdxSkinController;
    dxRibbonBackstageViewGalleryControl1Group1Item1: TdxRibbonBackstageViewGalleryItem;
    zDatos: TZQuery;
    dxbrConfiguracion: TdxBar;
    dxButtonUsuarios: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxButtonUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ArrancarSistema;
    { Public declarations }
  end;

var
  FrmInicioFacturacion: TFrmInicioFacturacion;

implementation

{$R *.dfm}

Uses
  ULogin, UConsultasSQL, UConfigMYSQL, UFrmusuarios;

{ TForm1 }

procedure TFrmInicioFacturacion.ArrancarSistema;
begin
  try
    varGlobal := TGlobales.Create;

    //Verificar la configuración del Mysql
    if (VarRegistry('\Settings','\Connection', 'MysqlUser') = '') or
       (VarRegistry('\Settings','\Connection', 'MysqlPort') = '') 
    then
    begin
      if MessageDlg('Al parecer no has definido los parámetros de configuración de tu MYSQL. ¿Deseas hacerlo en este momento?, Sin ello no podrás continuar con el sistema.', mtConfirmation, [mbYes, mbNo], 0) =  mrYes then
      begin
        Application.CreateForm(TFrmConfigMySQL, FrmConfigMySQL);
        If FrmConfigMySQL.ShowModal = mrAbort then
          Self.Close;
      end
      else
        raise eException.Create('***');
    end;

    UDMConection.conBD.User := VarRegistry('\Settings','\Connection', 'MysqlUser');
    UDMConection.conBD.Password := VarRegistry('\Settings','\Connection', 'MysqlPass');
    UDMConection.conBD.Port := StrToInt(VarRegistry('\Settings','\Connection', 'MysqlPort'));
    UDMConection.conBD.Protocol := VarRegistry('\Settings','\Connection', 'MysqlProtocol');

//    try
//      if Not UDMConection.conBD.Connected then
//        UDMConection.conBD.Connect;
//    except
//      raise eException.Create('***');
//    end;

    Application.CreateForm(TFrmLogin, FrmLogin);
    If FrmLogin.ShowModal = mrAbort then
      Self.Close;

    //ShowMessage(varGlobal.Elemento('Hostname').AsString);
  Except
    on e: eException do
    begin
      if e.Message = '***' then
      begin
        Self.Close;
      end;
    end;

    on e: Exception do
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmInicioFacturacion.dxButtonUsuariosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmUsuarios, FrmUsuarios);
  FrmUsuarios.Show;
end;

procedure TFrmInicioFacturacion.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TFrmInicioFacturacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F7 then
  begin
    try
      Application.CreateForm(TFrmConsultasSQL, FrmConsultasSQL);
      FrmConsultasSQL.dsSQL.DataSet := UDMConection.zConsultasSQL;
      FrmConsultasSQL.ShowModal;
    finally
      FrmConsultasSQL.dsSQL.DataSet := nil;
    end;
  end;
end;

procedure TFrmInicioFacturacion.FormShow(Sender: TObject);
begin
  Try
    ArrancarSistema;

//    if Not AsignarSQL(zDatos,'master_contactos', pReadOnly) then
//      raise Exception.Create('La Consulta SQL [master_contacto] no se ha creado');
//
//    If Not FiltrarDataset(zDatos, 'Activo',['Si']) then
//      raise Exception.Create('Error al filtrar en la consulta SQL[master_contacto]');
//
//    if zDatos.Active then
//      zDatos.Refresh
//    else
//      zDatos.Open;
  except
    on e: Exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
