unit UFrmEmpresas;

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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, dxBar, cxClasses, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, ExtCtrls, dxLayoutContainer, dxLayoutControl, UConection,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxImage,
  cxMaskEdit, cxHyperLinkEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxCheckBox, cxButtonEdit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxGalleryControl,
  dxColorGallery, dxDBColorGallery, Menus, StdCtrls, cxButtons, cxColorComboBox,
  cxDBColorComboBox, cxShellBrowserDialog;

type
  TFrmEmpresas = class(TForm)
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxBButtonEditar: TdxBarButton;
    dxBButtonBuscar: TdxBarButton;
    dxBButtonEliminar: TdxBarButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonActualizar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    dxButton2: TdxBarLargeButton;
    dxButtonExportar: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    pnlEmpresa: TPanel;
    cxPageEmpresas: TcxPageControl;
    cxTabDatosGenerales: TcxTabSheet;
    cxTabDireccion: TcxTabSheet;
    cxTabImpuestos: TcxTabSheet;
    cxTabCFDI: TcxTabSheet;
    cxTabOtros: TcxTabSheet;
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    dxLYC1: TdxLayoutControl;
    dxLYC2: TdxLayoutControl;
    dxLy1: TdxLayoutGroup;
    dxLYC3: TdxLayoutControl;
    dxLy2: TdxLayoutGroup;
    dxLYC4: TdxLayoutControl;
    dxLy3: TdxLayoutGroup;
    dxLYC5: TdxLayoutControl;
    dxLy4: TdxLayoutGroup;
    dxLYC6: TdxLayoutControl;
    dxLy5: TdxLayoutGroup;
    cxDBTextEmpresa: TcxDBTextEdit;
    dxlytmLYC6Item1: TdxLayoutItem;
    cxDBTextRazonSocial: TcxDBTextEdit;
    dxlytmLYC6Item11: TdxLayoutItem;
    cxDbMaskRFC: TcxDBMaskEdit;
    dxlytmLYC1Item1: TdxLayoutItem;
    cxDBTextRepLegal: TcxDBTextEdit;
    dxlytmRepresentanteLegal: TdxLayoutItem;
    imgLogo: TcxDBImage;
    dxlytmLYC1Item11: TdxLayoutItem;
    imgCedula: TcxDBImage;
    dxlytmLYC1Item12: TdxLayoutItem;
    cxDBTextCalle: TcxDBTextEdit;
    dxlytmLYC2Item1: TdxLayoutItem;
    cxDBTextColonia: TcxDBTextEdit;
    dxlytmColonia: TdxLayoutItem;
    cxDBTextNoInt: TcxDBTextEdit;
    dxlytmNoINt: TdxLayoutItem;
    cxDBTextNoExt: TcxDBTextEdit;
    dxlytmNoExt: TdxLayoutItem;
    cxSpinCP: TcxDBSpinEdit;
    dxlytmLYC2Item11: TdxLayoutItem;
    cbbPais: TcxDBLookupComboBox;
    dxlytmLYC2Item12: TdxLayoutItem;
    cbbEstado: TcxDBLookupComboBox;
    dxlytmLYC2Item13: TdxLayoutItem;
    cbbCiudad: TcxDBLookupComboBox;
    dxlytmLYC2Item14: TdxLayoutItem;
    cxDBTextLocalidad: TcxDBTextEdit;
    dxlytmLocalidad: TdxLayoutItem;
    cxDbMaskTelefono: TcxDBMaskEdit;
    dxlytmLYC2Item15: TdxLayoutItem;
    cxHyperLinkWeb: TcxDBHyperLinkEdit;
    dxlytmLYC2Item16: TdxLayoutItem;
    cxDBTextMail: TcxDBTextEdit;
    dxlytmMail: TdxLayoutItem;
    dxLYC2Group1: TdxLayoutAutoCreatedGroup;
    dxLYC2Group2: TdxLayoutAutoCreatedGroup;
    dxLYC2Group3: TdxLayoutAutoCreatedGroup;
    cxDBTextIESPS: TcxDBTextEdit;
    dxlytmLYC3Item11: TdxLayoutItem;
    cxDBTextImpuesto3: TcxDBTextEdit;
    dxlytmImpuesto3: TdxLayoutItem;
    cxDBTextISR: TcxDBTextEdit;
    dxlytmLYC3Item12: TdxLayoutItem;
    cxDBTextRetIVA: TcxDBTextEdit;
    dxlytmLYC3Item13: TdxLayoutItem;
    cxCheckIESPS: TcxDBCheckBox;
    dxlytmLYC3Item14: TdxLayoutItem;
    dxLYC3Group1: TdxLayoutAutoCreatedGroup;
    cxEditBtnCer: TcxDBButtonEdit;
    dxlytmLYC4Item1: TdxLayoutItem;
    cxEditBtnkey: TcxDBButtonEdit;
    dxlytmLYC4Item11: TdxLayoutItem;
    cxDBTextClave: TcxDBTextEdit;
    dxlytmClave: TdxLayoutItem;
    cxSpinDecimales: TcxDBSpinEdit;
    dxlytmLYC5Item1: TdxLayoutItem;
    cxDBTextMaskClientes: TcxDBTextEdit;
    dxlytmLYC5Item11: TdxLayoutItem;
    cxDBTextMaskProveedores: TcxDBTextEdit;
    dxlytmMaskProveedores: TdxLayoutItem;
    cxDBTextIVA: TcxDBTextEdit;
    dxlytmIva: TdxLayoutItem;
    dxLYC1Group1: TdxLayoutAutoCreatedGroup;
    zDatosUpt: TZQuery;
    dsDatosUpt: TDataSource;
    cxDBTextCodigo: TcxDBTextEdit;
    dxlytmLYC6Item12: TdxLayoutItem;
    dxLYC6Group1: TdxLayoutAutoCreatedGroup;
    btnABORT: TcxButton;
    cbbColorFocus: TcxDBColorComboBox;
    dxlytmLYC5Item12: TdxLayoutItem;
    zPais: TZQuery;
    zEstado: TZQuery;
    zCiudad: TZQuery;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    dsCiudad: TDataSource;
    cxEditBtnArchivos: TcxDBButtonEdit;
    dxlytmLYC1Item13: TdxLayoutItem;
    dlgOpen1: TOpenDialog;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cxTextRegFiscal: TcxDBTextEdit;
    dxLayitemLYC1Item1: TdxLayoutItem;
    cxTextRegPat: TcxDBTextEdit;
    dxLayitemLYC1Item11: TdxLayoutItem;
    dxLYC1Group2: TdxLayoutAutoCreatedGroup;
    procedure dxButtonSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure cbbPaisPropertiesChange(Sender: TObject);
    procedure cbbEstadoPropertiesChange(Sender: TObject);
    procedure cxEditBtnArchivosPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEditBtnCerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEditBtnkeyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure imgLogoDblClick(Sender: TObject);
    procedure imgCedulaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresas: TFrmEmpresas;

implementation

{$R *.dfm}

procedure TFrmEmpresas.cbbEstadoPropertiesChange(Sender: TObject);
begin
  Try
    if Not AsignarSQL(zCiudad, 'master_ciudad', pReadOnly) then
      raise Exception.Create(pErrorConsulta + '[Master_Ciudad]');

    if not FiltrarDataset(zCiudad, 'IdEstado', [varToStr(cbbEstado.EditValue)]) then
      raise Exception.Create(pErrorFiltrar + '[Master_Ciudad]');

    if zCiudad.Active then
      zCiudad.Refresh
    else
      zCiudad.Open;
  except
    raise;
  End;
end;

procedure TFrmEmpresas.cbbPaisPropertiesChange(Sender: TObject);
begin
  Try
    if Not AsignarSQL(zEstado, 'master_estado', pReadOnly) then
      raise Exception.Create(pErrorConsulta + '[Master_estado]');

    if not FiltrarDataset(zEstado, 'IdPais', [varToStr(cbbPais.EditValue)]) then
      raise Exception.Create(pErrorFiltrar + '[Master_Estado]');

    if zEstado.Active then
      zEstado.Refresh
    else
      zEstado.Open;
  except
    raise;
  End;
end;

procedure TFrmEmpresas.cxEditBtnArchivosPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if cxShellBrowserDialog1.Execute then
  begin
    zDatosUpt.FieldByName('ArchivosEmpresa').AsString := cxShellBrowserDialog1.Path;
    cxEditBtnArchivos.Text := cxShellBrowserDialog1.Path;
  end;
end;

procedure TFrmEmpresas.cxEditBtnCerPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    if dlgOpen1.Execute then
    begin
      cxEditBtnCer.Text := dlgOpen1.FileName;
      zDatosUpt.FieldByName('Certificado').AsString := dlgOpen1.FileName;
    end;
  except
    raise;
  end;
end;

procedure TFrmEmpresas.cxEditBtnkeyPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
    if dlgOpen1.Execute then
    begin
      cxEditBtnkey.Text := dlgOpen1.FileName;
      zDatosUpt.FieldByName('Llave').AsString := dlgOpen1.FileName;
    end;
  except
    raise;
  end;
end;

procedure TFrmEmpresas.dxButtonGuardarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if zDatosUpt.Active and (zDatosUpt.State in [dsEdit, dsInsert]) then
      begin
        zDatosUpt.FieldByName('IdPadre').AsInteger := -5;
        zDatosUpt.FieldByName('IdEmpresa').AsInteger := 0;
        zDatosUpt.Post;
        If cbbColorFocus.EditValue <> NULL then
          UDMConection.cxstylFocus.Color := TColor(cbbColorFocus.EditValue);
        Self.Close;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: eWarning do
    begin
      MessageDlg(e.Message, mtWarning, [mbOK],0);
    end;

    on e: exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmEmpresas.dxButtonSalirClick(Sender: TObject);
begin
  btnABORT.Click;
end;

procedure TFrmEmpresas.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      AutoFocus(TForm(Self));

      if Not AsignarSQL(zDatosUpt, 'master_empresa', pUpdate) then
        raise Exception.Create(pErrorConsulta + '[Master_Empresa]');

      if not FiltrarDataset(zDatosUpt, 'IdEmpresa', ['-9']) then
        raise Exception.Create(pErrorFiltrar + '[Master_Empresa]');

      if zDatosUpt.Active then
        zDatosUpt.Refresh
      else
        zDatosUpt.Open;

      if Not AsignarSQL(zPais, 'master_pais', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[master_pais]');

      if not FiltrarDataset(zPais, 'IdPais', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[Master_Empresa]');

      if zPais.Active then
        zPais.Refresh
      else
        zPais.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmEmpresas.imgCedulaDblClick(Sender: TObject);
begin
  tcxImage(ImgCedula).LoadFromFile;
end;

procedure TFrmEmpresas.imgLogoDblClick(Sender: TObject);
begin
  tcxImage(ImgLogo).LoadFromFile;
end;

end.
