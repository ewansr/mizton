unit UFrmInicio;

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
  ZDataset, UConection, UnitRegistroWindows, dxRibbonGallery,
  dxSkinChooserGallery, cxPC, dxSkinscxPCPainter, dxBarBuiltInMenu, dxTabbedMDI,
  dxAlertWindow, dxScreenTip, dxCustomHint, cxHint, dxGDIPlusClasses, cxImage,
  Menus, StdCtrls, cxButtons, UMsgBox, dxRibbonRadialMenu,
  dxSkinsdxNavBarPainter, dxNavBar, dxNavBarBase, dxNavBarCollns,
  dxNavBarGroupItems, ActnList, cxSplitter, JvBackgrounds, ExtCtrls,
  AdvSmoothSlider, dxDockControl, dxDockPanel, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  Grids, DBGrids, cxDBLabel;

type
  ClaseHila = Class(TThread)
  private
    { Private delcarations}
    CancelarHilo: Boolean;
  protected
    Procedure Execute; Override;
    Function LeerFolios:Integer; Virtual; Abstract;
  Public
    Constructor Create;
  End;

  THilo = Class(ClaseHila)
  Protected
    Function LeerFolios:Integer;  Override;
  End;

  THackForm = class(TForm);
  TFrmInicio = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxStatusBarInicio: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxButtonUsuarios: TdxBarLargeButton;
    cxlkndflcntrlr1: TcxLookAndFeelController;
    dxbrManager1Bar: TdxBar;
    dxSkingallery1: TdxSkinChooserGalleryItem;
    dxTabManager1: TdxTabbedMDIManager;
    dxButtonAbirEmpresa: TdxBarLargeButton;
    dxbrGeneral: TdxBar;
    dxButtonEmpresa: TdxBarLargeButton;
    dxButtonCiudad: TdxBarLargeButton;
    dxButtonPaises: TdxBarLargeButton;
    dxButtonEstados: TdxBarLargeButton;
    dxbrManager1Bar1: TdxBar;
    dxbrManager1Bar2: TdxBar;
    dxButtonCondicionPago: TdxBarLargeButton;
    dxButtonFormaPago: TdxBarLargeButton;
    dxButtonGiroProveedor: TdxBarLargeButton;
    dxButtonProveedores: TdxBarLargeButton;
    dxButtonClientes: TdxBarLargeButton;
    dxButtonMonedas: TdxBarLargeButton;
    dxButtonCuentasBancarias: TdxBarLargeButton;
    dxButtonBancos: TdxBarLargeButton;
    dxButtonFacturas: TdxBarLargeButton;
    dxAlertSRV: TdxAlertWindowManager;
    cxHintStyleController1: TcxHintStyleController;
    dxButtonUMedida: TdxBarLargeButton;
    dxButtonProductos: TdxBarLargeButton;
    dxRadial1: TdxRibbonRadialMenu;
    dxButtonImpuesto: TdxBarLargeButton;
    zImpuestos: TZQuery;
    zEmpresa: TZQuery;
    btnConfigCorreo: TdxBarLargeButton;
    btnEnviarCorreo: TdxBarLargeButton;
    dxbrManager1Bar3: TdxBar;
    btn1: TdxBarLargeButton;
    dxbrProductos: TdxBar;
    btnInventario: TdxBarLargeButton;
    cxImage1: TcxImage;
    acListMenu: TActionList;
    actPersonal: TAction;
    dxrbndrpdwnglry1: TdxRibbonDropDownGallery;
    dxPopup1: TdxBarPopupMenu;
    cxspltrMenu: TcxSplitter;
    actFolios: TAction;
    actVales: TAction;
    actPais: TAction;
    actEstado: TAction;
    actCiudad: TAction;
    actUnidadMedida: TAction;
    actUsuarios: TAction;
    tmr1: TTimer;
    dxStatusBarInicioContainer9: TdxStatusBarContainerControl;
    navMenu: TdxNavBar;
    ItemRh: TdxNavBarGroup;
    ItemConfiguracion: TdxNavBarGroup;
    LinkPersonal: TdxNavBarItem;
    LinkCargos: TdxNavBarItem;
    LinkSalarios: TdxNavBarItem;
    LinkFolios: TdxNavBarItem;
    LinkCiudad: TdxNavBarItem;
    LinkPais: TdxNavBarItem;
    LinkEstado: TdxNavBarItem;
    LinkUMedida: TdxNavBarItem;
    sepConfig: TdxNavBarSeparator;
    LinkVales: TdxNavBarItem;
    LinkUsuarios: TdxNavBarItem;
    cxLabel2: TcxLabel;
    advAviso1: TAdvSmoothSlider;
    actAutomoviles: TAction;
    LinkAutos: TdxNavBarItem;
    actPuestos: TAction;
    zHiloFolio: TZQuery;
    dsHiloFolio: TDataSource;
    dxDockPanel1: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    cxspltr1: TcxSplitter;
    cxGboxDatos: TcxGroupBox;
    dbGridDatos: TDBGrid;
    cxspltr2: TcxSplitter;
    Panel1: TPanel;
    cxGboxTotal: TcxGroupBox;
    cxImage3: TcxImage;
    cxLabel1: TcxLabel;
    cxGboxLiquidadas: TcxGroupBox;
    cxImage2: TcxImage;
    cxLabel3: TcxLabel;
    cxGboxQuejas: TcxGroupBox;
    cxGboxObjetadas: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxImage4: TcxImage;
    img1: TcxImage;
    cxLabel4: TcxLabel;
    actMateriales: TAction;
    LinkMateriales: TdxNavBarItem;
    actTipoOrden: TAction;
    LinkTipoOrden: TdxNavBarItem;
    actAdminCostos: TAction;
    LinkCostos: TdxNavBarItem;
    actConsultarOrd: TAction;
    LinkConsultaOrdenes: TdxNavBarItem;
    DbLblLiquidadas: TcxDBLabel;
    DbLblObjetadas: TcxDBLabel;
    DbLblQuejas: TcxDBLabel;
    DbLblTotal: TcxDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxButtonUsuariosClick(Sender: TObject);
    procedure dxSkingallery1SkinChanged(Sender: TObject;
      const ASkinName: string);
    procedure dxButtonPaisesClick(Sender: TObject);
    procedure dxButtonClientesClick(Sender: TObject);
    procedure dxButtonEstadosClick(Sender: TObject);
    procedure dxButtonCiudadClick(Sender: TObject);
    procedure dxButtonMonedasClick(Sender: TObject);
    procedure dxButtonBancosClick(Sender: TObject);
    procedure dxButtonCondicionPagoClick(Sender: TObject);
    procedure dxButtonFormaPagoClick(Sender: TObject);
    procedure dxButtonGiroProveedorClick(Sender: TObject);
    procedure dxButtonProveedoresClick(Sender: TObject);
    procedure dxButtonUMedidaClick(Sender: TObject);
    procedure dxButtonAbirEmpresaClick(Sender: TObject);
    procedure dxTabManager1PageAdded(Sender: TdxTabbedMDIManager;
      APage: TdxTabbedMDIPage);
    procedure dxButtonProductosClick(Sender: TObject);
    procedure dxButtonFacturasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dxButtonEmpresaClick(Sender: TObject);
    procedure FormDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dxButtonImpuestoClick(Sender: TObject);
    procedure btnConfigCorreoClick(Sender: TObject);
    procedure btnEnviarCorreoClick(Sender: TObject);
    procedure dxButtonCuentasBancariasClick(Sender: TObject);
    procedure actPersonalExecute(Sender: TObject);
    procedure actFoliosExecute(Sender: TObject);
    procedure actValesExecute(Sender: TObject);
    procedure actPaisExecute(Sender: TObject);
    procedure actEstadoExecute(Sender: TObject);
    procedure actCiudadExecute(Sender: TObject);
    procedure actUnidadMedidaExecute(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAvisosClick(Sender: TObject);
    procedure advAviso1Click(Sender: TObject);
    procedure actAutomovilesExecute(Sender: TObject);
    procedure actPuestosExecute(Sender: TObject);
    procedure zHiloFolioBeforeOpen(DataSet: TDataSet);
    procedure zHiloFolioBeforeRefresh(DataSet: TDataSet);
    procedure actMaterialesExecute(Sender: TObject);
    procedure actTipoOrdenExecute(Sender: TObject);
    procedure actAdminCostosExecute(Sender: TObject);
    procedure actConsultarOrdExecute(Sender: TObject);
    procedure zHiloFolioAfterOpen(DataSet: TDataSet);
    procedure zHiloFolioAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure ArrancarSistema;
    procedure CargarImpuestosEmpresa(EmpresaSel: Integer);
    Procedure actualizarFolios;
    { Public declarations }
  end;

var
  FrmInicio: TFrmInicio;

  //zHiloFolios: TzQuery;
  OldCountFolio, NuevoCountFolio: Integer;

implementation

{$R *.dfm}

Uses
  ULogin, UConsultasSQL, UConfigMYSQL,
  UfrmCiudad, UFrmEstado, UFrmMonedas,
  UFrmPais, UfrmEmpresas,
  UFrmUnidadMedida, UFrmAbrirEmpresa, UFrmSplash,
  UFrmUsuario, UFrmAEmpresas, ufrmPersonal,
  UFrmConfigCorreo, uFrmEnviarCorreo, uselExpediente,
  Ufrmvales, uFrmCatalogoAutomoviles, Ufrmpuestos,
  UfrmCatalogoMateriales, UFrmtipoOrden, ufrmCostosInstalacion, UfrmConsultas;

{ TForm1 }

procedure TFrmInicio.actAdminCostosExecute(Sender: TObject);
begin
  application.CreateForm(TFrmCostosInstalacion, FrmCostosInstalacion);
  FrmCostosInstalacion.Show;
end;

procedure TFrmInicio.actAutomovilesExecute(Sender: TObject);
begin
  application.CreateForm(TFrmcatalogoAutomoviles, FrmCatalogoAutomoviles);
  FrmCatalogoAutomoviles.Show;
end;

procedure TFrmInicio.actCiudadExecute(Sender: TObject);
begin
  application.CreateForm(TFrmCiudad, FrmCiudad);
  FrmCiudad.ShowModal;
end;

procedure TFrmInicio.actConsultarOrdExecute(Sender: TObject);
begin
  application.CreateForm(TFrmConsultas, FrmConsultas);
  FrmConsultas.Show;
end;

procedure TFrmInicio.actEstadoExecute(Sender: TObject);
begin
  application.CreateForm(TFrmEstado, FrmEstado);
  FrmEstado.ShowModal;
end;

procedure TFrmInicio.actFoliosExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelExpediente, FrmSelExpediente);
  FrmSelExpediente.ShowModal;
end;

procedure TFrmInicio.actMaterialesExecute(Sender: TObject);
begin
  application.CreateForm(TfrmCatalogoMateriales, FrmCatalogoMateriales);
  FrmCatalogoMateriales.ShowModal;
end;

procedure TFrmInicio.actPaisExecute(Sender: TObject);
begin
  application.CreateForm(TFrmPais, FrmPais);
  FrmPais.ShowModal;
end;

procedure TFrmInicio.actPersonalExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmPersonal, FrmPersonal);
  FrmPersonal.Show;
end;

procedure TFrmInicio.actPuestosExecute(Sender: TObject);
begin
  application.CreateForm(TfrmPuestos, FrmPuestos);
  frmPuestos.ShowModal;
end;

procedure TFrmInicio.actTipoOrdenExecute(Sender: TObject);
begin
  application.CreateForm(TFrmTipoOrden, FrmtipoOrden);
  FrmtipoOrden.ShowModal;
end;

procedure TFrmInicio.actualizarFolios;
begin
  try
    if zHiloFolio.Active then
      zHiloFolio.Refresh
    else
      zHiloFolio.Open;
  except
    on e: exception do
      ;
  end;
end;

procedure TFrmInicio.actUnidadMedidaExecute(Sender: TObject);
begin
  application.CreateForm(TFrmUnidadMedida, FrmUnidadMedida);
  FrmUnidadMedida.ShowModal;
end;

procedure TFrmInicio.actUsuariosExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmUsuario, FrmUsuario);
  FrmUsuario.ShowModal;
end;

procedure TFrmInicio.actValesExecute(Sender: TObject);
begin
  application.CreateForm(TFrmVales, FrmVales);
  Frmvales.ShowModal;
end;

procedure TFrmInicio.advAviso1Click(Sender: TObject);
begin
  if Not (advAviso1.State = ssOn) then
  begin
    tmr1.Enabled := True;
    cxLabel2.Caption := 'Desactivar Avisos';
  end
  else
  begin
    tmr1.Enabled := False;
    cxLabel2.Caption := 'Activar Avisos';
  end;
end;

procedure TFrmInicio.ArrancarSistema;
var
  ASkinName: string;
Const
  miReg: string = 'Mi_Equipo';
begin
  try
    try
      Screen.Cursors[crAppStart] := LoadCursorFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Busy.ani'));

      varGlobal := TGlobales.Create;
      try
        ASkinName :=  VarRegistry('\Settings','\' + varGlobal.Elemento('ConnectionName').AsString, 'SkinName');
        if ASkinName = '' then
          ASkinName := 'Office2013White'
      except
        ASkinName := 'Office2013White';
      end;

      Application.CreateForm(TFrmSplash, FrmSplash);
      FrmSplash.ShowModal;

      //dxRibbon1.ColorSchemeName := ASkinName;   //ribbon
      dxSkinController1.SkinName := ASkinName;   //SkinController
      dxTabManager1.LookAndFeel.SkinName := ASkinName;   //TabManager

      //Verificar la configuración del Mysql
      if (VarRegistry('\Settings','\Mi_Equipo', 'MysqlUser') = '') or
         (VarRegistry('\Settings','\Mi_Equipo', 'MysqlPort') = '')
      then
      begin

        SetRegistry('\Settings','\' + Mireg + '', 'ConnectionName', 'Mi_Equipo');
        SetRegistry('\Settings','\' + Mireg + '', 'MysqlUser', 'root');
        SetRegistry('\Settings','\' + Mireg + '', 'MysqlPass', 'cleopatra');
        SetRegistry('\Settings','\' + Mireg + '', 'MysqlPort', '3306');
        SetRegistry('\Settings','\' + Mireg + '', 'MysqlProtocol', 'mysql-5');
        SetRegistry('\Settings','\' + Mireg + '', 'Host', 'localhost');
        SetRegistry('\Settings','\' + Mireg + '', 'Database', 'MIZTON');
        SetRegistry('\Settings','\' + Mireg + '', 'Description', 'Conexión creada automáticamente por el sistema');
        SetRegistry('\Settings','\' + Mireg + '', 'Default', 'True');

      end;

      UDMConection.conBD.User := VarRegistry('\Settings','\Mi_Equipo', 'MysqlUser');
      UDMConection.conBD.Password := VarRegistry('\Settings','\Mi_Equipo', 'MysqlPass');
      UDMConection.conBD.Port := StrToInt(VarRegistry('\Settings','\Mi_Equipo', 'MysqlPort'));
      UDMConection.conBD.Protocol := VarRegistry('\Settings','\Mi_Equipo', 'MysqlProtocol');

      //Arrancar Login
      Application.CreateForm(TFrmLogin, FrmLogin);
      If FrmLogin.ShowModal = mrAbort then
      begin
        Self.Close;
        raise eException.Create('***');
      end;

      try
        ASkinName :=  VarRegistry('\Settings','\' + varGlobal.Elemento('ConnectionName').AsString, 'SkinName');
      except
        ASkinName := 'Office2013White';
      end;

      //dxRibbon1.ColorSchemeName := ASkinName;   //ribbon
      dxSkinController1.SkinName := ASkinName;   //SkinController
      dxTabManager1.LookAndFeel.SkinName := ASkinName;   //TabManager

      //Arrancar el form de la empresa en caso de que no tenga definidas el sistema

      if Not AsignarSQL(zEmpresa, 'master_empresa', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[Master_Empresa]');

      if not FiltrarDataset(zEmpresa, 'IdEmpresa', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[Master_Empresa]');

      if zEmpresa.Active then
        zEmpresa.Refresh
      else
        zEmpresa.Open;

      if zEmpresa.Active and (zEmpresa.RecordCount = 0) then
      begin
        MessageDlg('MIZTON ® no detectó empresas definidas, para poder continuar es necesario crear una.', mtInformation, [mbOK], 0);
        Application.CreateForm(TFrmEmpresas, FrmEmpresas);
        If FrmEmpresas.ShowModal = mrAbort then
        begin
          Self.Close;
          raise eException.Create('***');
        end;
      end
      else
      begin
        Application.CreateForm(TFrmAbrirEmpresa, FrmAbrirEmpresa);
        if FrmAbrirEmpresa.ShowModal <> mrOK then
          raise eException.Create('***');

      end;

      CargarImpuestosEmpresa(varGlobal.Elemento('IdEmpresa').AsInteger);
      zEmpresa.Locate('IdEmpresa', varGlobal.Elemento('IdEmpresa').AsInteger, []);

      dxAlertSRV.Show('Información del sistema.','Bienvenido ' + varGlobal.Elemento('Usuario').AsString + ' a tu sistema MIZTON ® la base de datos con la que estarás trabajando es [' + UPPERCASE(varGlobal.Elemento('BaseDatos').AsString) + ']' , 8);
      dxStatusBarInicio.Panels.Items[1].Text := varGlobal.Elemento('Usuario').AsString;
      dxStatusBarInicio.Panels.Items[3].Text := varGlobal.Elemento('HostName').AsString;
      dxStatusBarInicio.Panels.Items[5].Text := varGlobal.Elemento('BaseDatos').AsString;
      dxStatusBarInicio.Panels.Items[8].Text := varGlobal.Elemento('NombreEmpresa').AsString;

      OldCountFolio := 0;
      NuevoCountFolio := 0;
      tmr1.Enabled := True;
    finally
      ;
    end;
  Except
    on e: eException do
    begin
      if e.Message = '***' then
      begin
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e: Exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmInicio.btn1Click(Sender: TObject);
begin
  //MsgBox.ShowModal('Confirmación', 'No se pudo conectar a la base de datoskgdfgjdgjdfjgkgjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', cmtError, [cmbOK, cmbYes, cMbDelete], 0);
end;

procedure TFrmInicio.btnAvisosClick(Sender: TObject);
begin
  tmr1.Enabled := Not tmr1.Enabled;
end;

procedure TFrmInicio.btnConfigCorreoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
  FrmConfigCorreo.ShowModal;
end;

procedure TFrmInicio.btnEnviarCorreoClick(Sender: TObject);
begin
  application.createform(TFrmEnviarCorreo, FrmEnviarCorreo);
  FrmEnviarCorreo.ShowModal;
end;

procedure TFrmInicio.CargarImpuestosEmpresa(EmpresaSel: Integer);
begin
   if Not AsignarSQL(zImpuestos, 'master_impuesto_empserv', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

  if not FiltrarDataset(zImpuestos, 'IdEmpresa', [IntToStr(EmpresaSel)]) then
    raise Exception.Create(pErrorFiltrar + '[master_impuesto_empserv]');

  if zImpuestos.Active then
    zImpuestos.Refresh
  else
    zImpuestos.Open;
end;

procedure TFrmInicio.dxButtonAbirEmpresaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmAbrirEmpresa, FrmAbrirEmpresa);
  FrmAbrirEmpresa.ShowModal;
end;

procedure TFrmInicio.dxButtonBancosClick(Sender: TObject);
begin
//  Application.CreateForm(TFrmBancos, FrmBancos);
//  FrmBancos.Show;
end;

procedure TFrmInicio.dxButtonCiudadClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCiudad, FrmCiudad);
  FrmCiudad.Show;
end;

procedure TFrmInicio.dxButtonClientesClick(Sender: TObject);
begin
//  Application.CreateForm(TfrmCatalogoClientes, frmCatalogoClientes);
//  frmCatalogoClientes.FormStyle := fsMDIChild;
//  frmCatalogoClientes.Visible := False;
//  frmCatalogoClientes.Show;
end;

procedure TFrmInicio.dxButtonCondicionPagoClick(Sender: TObject);
begin
//  Application.CreateForm(TfrmCondicionPago, FrmCondicionPago);
//  FrmCondicionPago.Show;
end;

procedure TFrmInicio.dxButtonCuentasBancariasClick(Sender: TObject);
begin
//  Application.CreateForm(TFrmCuentaBancaria, FrmCuentaBancaria);
//  FrmCuentaBancaria.Show;
end;

procedure TFrmInicio.dxButtonEmpresaClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Application.CreateForm(TFrmAEmpresas, FrmAEmpresas);
  FrmAEmpresas.Show;
end;

procedure TFrmInicio.dxButtonEstadosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmEstado, FrmEstado);
  FrmEstado.Show;
end;

procedure TFrmInicio.dxButtonFacturasClick(Sender: TObject);
begin
//  Application.CreateForm(TfrmFacturas, FrmFacturas);
//  FrmFacturas.Show;
end;

procedure TFrmInicio.dxButtonFormaPagoClick(Sender: TObject);
begin
//  Application.CreateForm(TfrmFormaPago, FrmFormaPago);
//  FrmFormaPago.Show;
end;

procedure TFrmInicio.dxButtonGiroProveedorClick(Sender: TObject);
begin
//  Application.CreateForm(TFrmGiroEmpresa, FrmGiroEmpresa);
//  FrmGiroEmpresa.Show;
end;

procedure TFrmInicio.dxButtonImpuestoClick(Sender: TObject);
begin
//  Application.CreateForm(TFrmCatalogoImpuestos, FrmCatalogoImpuestos);
//  FrmCatalogoImpuestos.Show;
end;

procedure TFrmInicio.dxButtonMonedasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmMonedas, FrmMonedas);
  FrmMonedas.Show;
end;

procedure TFrmInicio.dxButtonPaisesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPais, FrmPais);

  FrmPais.Show;
end;

procedure TFrmInicio.dxButtonProductosClick(Sender: TObject);
begin
//  Application.CreateForm(TFrmServicio, FrmServicio);
//  FrmServicio.FormStyle := fsMDIChild;
//  FrmServicio.Visible := True;
//  FrmServicio.Show;
end;

procedure TFrmInicio.dxButtonProveedoresClick(Sender: TObject);
begin
//  Application.CreateForm(TFrmCatalogoProveedores, FrmCatalogoProveedores);
//  FrmCatalogoProveedores.Show;
end;

procedure TFrmInicio.dxButtonUMedidaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmUnidadMedida, FrmUnidadMedida);
  FrmUnidadMedida.Show;
end;

procedure TFrmInicio.dxButtonUsuariosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmUsuario, FrmUsuario);
  FrmUsuario.Show;
end;

procedure TFrmInicio.dxSkingallery1SkinChanged(Sender: TObject;
  const ASkinName: string);
begin
  //dxRibbon1.ColorSchemeName := ASkinName;   //ribbon
  dxSkinController1.SkinName := ASkinName;   //SkinController
  dxTabManager1.LookAndFeel.SkinName := ASkinName;   //TabManager
  SetRegistry('\Settings' ,'\' + varGlobal.Elemento('ConnectionName').AsString, 'SkinName', ASkinName);
end;

procedure TFrmInicio.dxTabManager1PageAdded(Sender: TdxTabbedMDIManager;
  APage: TdxTabbedMDIPage);
begin
  //dxRibbon1.ShowTabGroups := False;
end;

procedure TFrmInicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmr1.Enabled := false;
  UDMConection.conBD.Disconnect;
  UDMConection.conANSI.Disconnect;
end;

procedure TFrmInicio.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TFrmInicio.FormDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if Source is TcxButton then
  begin
    TcxButton(Source).Left := x;
    TcxButton(Source).Top := y;
  end;
end;

procedure TFrmInicio.FormDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TcxButton;
end;

procedure TFrmInicio.FormKeyDown(Sender: TObject; var Key: Word;
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

  if Key = VK_F5 then
  begin
    if RecargarConsultasSQL then
      dxAlertSRV.Show('Información del sistema.','Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',7);
  end;
end;

procedure TFrmInicio.FormShow(Sender: TObject);
begin
  Try
    ArrancarSistema;
    Self.Brush.Bitmap := cxImage1.Picture.Bitmap;

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

    UDMConection.inicializaConAnsi;
  except
    on e: Exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;



procedure TFrmInicio.tmr1Timer(Sender: TObject);
var
  hiloEjecucion: THilo;

begin

  hiloEjecucion := THilo.Create;
  if OldCountFolio <> NuevoCountFolio then
  begin
    dxAlertSRV.Show('Nuevo Folio asignado','Se ha creado un nuevo folio desde una aplicación externa',2);
  end;
end;

procedure TFrmInicio.zHiloFolioAfterOpen(DataSet: TDataSet);
begin
    if Not UDMConection.conBd.Ping then
    UDMConection.conBd.Reconnect;
end;

procedure TFrmInicio.zHiloFolioAfterRefresh(DataSet: TDataSet);
begin
    if Not UDMConection.conBd.Ping then
    UDMConection.conBd.Reconnect;
end;

procedure TFrmInicio.zHiloFolioBeforeOpen(DataSet: TDataSet);
begin
  if Not UDMConection.conBd.Ping then
    UDMConection.conBd.Reconnect;
end;

procedure TFrmInicio.zHiloFolioBeforeRefresh(DataSet: TDataSet);
begin
  if Not UDMConection.conBd.Ping then
    UDMConection.conBd.Reconnect;
end;

{ ClaseHila }

constructor ClaseHila.Create;
begin
  CancelarHilo := False;
  FreeOnTerminate := true;
  inherited Create(False);
end;

procedure ClaseHila.Execute;
begin
  LeerFolios;
end;

{ THilo }

Function THilo.LeerFolios: Integer;

begin
  try
    Frminicio.actualizarFolios;
  Except
    ON E: exception do
      ;
  end;
end;

end.
