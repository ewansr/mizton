unit UFrmAEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCatalogo, cxPC, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSkinsdxDockControlPainter, cxClasses, dxDockControl, dxBar, dxRibbon,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutContainer,
  dxLayoutControl, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxDockPanel, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, cxTextEdit, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxHyperLinkEdit, cxSpinEdit, cxPropertiesStore, cxImage, cxButtonEdit,
  cxMaskEdit, cxColorComboBox, cxDBColorComboBox, cxCheckBox,UConection,
  cxShellBrowserDialog, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, cxDBTL, UMsgBox, cxLabel, dxLayoutControlAdapters, Menus, StdCtrls,
  cxButtons, UFrmCiudad, UFrmEstado, UFrmPais, cxListBox, dxScreenTip,
  dxCustomHint, cxHint;

type

 TImpuestos = Class  //Clase para conocer los datos un impuesto seleccionado en el catalogo
   IdImpuesto: Integer;
   Impuesto: string;
   Tipo: String;
   Valor: extended;
 End;

 TImpuestosSeleccionados = Class  //Clase para conocer los datos un impuesto seleccionados por empresa
   IdImpuestoEmpServ : Integer;
   IdImpuesto: Integer;
   Impuesto: string;
   Tipo: String;
   Valor: extended;
 End;


  TFrmAEmpresas = class(TFrmCatalogo)
    cxDomicilio: TcxTabSheet;
    cxDireccion: TcxTabSheet;
    cxConfiguracionImpuesto: TcxTabSheet;
    cxConfiguracionCDFI: TcxTabSheet;
    cxOtrasConfiguraciones: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxtextRegPat: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxtextRegFiscal: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxtextRepLeg: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    EdithBtnArchivos: TcxDBButtonEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    imgEmp: TcxDBImage;
    dxLayoutControl1Item6: TdxLayoutItem;
    imgCedula: TcxDBImage;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxtextCalle: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxtextColonia: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxtextNoInt: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxPropertiesStore1: TcxPropertiesStore;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxMaskTel: TcxDBMaskEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxtextMail: TcxDBTextEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBHyperLinkEdit1: TcxDBHyperLinkEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    cbbPais: TcxDBLookupComboBox;
    dxLayoutControl2Item9: TdxLayoutItem;
    cbbEstado: TcxDBLookupComboBox;
    dxLayoutControl2Item10: TdxLayoutItem;
    cbbCiudad: TcxDBLookupComboBox;
    dxLayoutControl2Item11: TdxLayoutItem;
    cxtextLocalidad: TcxDBTextEdit;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    EdithBtnCertificado: TcxDBButtonEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    EdithBtnKey: TcxDBButtonEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxtextClave: TcxDBTextEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxSpinDeci: TcxDBSpinEdit;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxMaskProveedores: TcxDBMaskEdit;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxMaskClientes: TcxDBMaskEdit;
    dxLayoutControl5Item3: TdxLayoutItem;
    cbbFoco: TcxDBColorComboBox;
    dxLayoutControl5Item4: TdxLayoutItem;
    cxSpinCP: TcxDBSpinEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnEmpresa: TcxGridDBColumn;
    cxtextEmpre: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxtextCodi: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxtextRazonSo: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    dsCiudad: TDataSource;
    zCiudad: TZQuery;
    zEstado: TZQuery;
    zPais: TZQuery;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    OpenDialog1: TOpenDialog;
    dxbrlrgbNuevaSubEm: TdxBarLargeButton;
    dxBarGroup1: TdxBarGroup;
    lstEmpresas: TcxDBTreeList;
    cxColumnRazonSocial: TcxDBTreeListColumn;
    cxColumnRfc: TcxDBTreeListColumn;
    cxColumnRegPät: TcxDBTreeListColumn;
    cxColumnImgIndex: TcxDBTreeListColumn;
    cxColumnCodigoc: TcxDBTreeListColumn;
    cxColumnRSocial: TcxDBTreeListColumn;
    cxMaskRFC: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    btnMasP: TcxButton;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    btnMasE: TcxButton;
    dxLayoutControl2Item14: TdxLayoutItem;
    btnMasC: TcxButton;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup;
    cxGridDatosColumn1: TcxGridDBColumn;
    cxGridDatosColumn2: TcxGridDBColumn;
    cxGridDatosColumn3: TcxGridDBColumn;
    dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3: TdxLayoutControl;
    btnsImpGroup_Root: TdxLayoutGroup;
    cxButton1: TcxButton;
    btnsImpItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    btnsImpItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    btnsImpItem3: TdxLayoutItem;
    cxButton4: TcxButton;
    btnsImpItem4: TdxLayoutItem;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    btnsImp: TdxLayoutControl;
    zCatalogoImpuestos: TZQuery;
    dsCatalogoImpuestos: TDataSource;
    zImpuestosSeleccionados: TZQuery;
    dsImpuestosSeleccionados: TDataSource;
    cxImpuestosCatalogo: TcxListBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxImpuestosSeleccionados: TcxListBox;
    dxLayoutControl7Item1: TdxLayoutItem;
    zImpuestosSeleccionadosUpt: TZQuery;
    zImpConsulta: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure cbbEstadoPropertiesChange(Sender: TObject);
    procedure cbbPaisPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdithBtnArchivosPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdithBtnCertificadoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdithBtnKeyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure imgEmpDblClick(Sender: TObject);
    procedure imgCedulaDblClick(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxButtonOpcionalClick(Sender: TObject);
    procedure dxBButtonEliminarClick(Sender: TObject);
    procedure btnMasPClick(Sender: TObject);
    procedure btnMasEClick(Sender: TObject);
    procedure btnMasCClick(Sender: TObject);
    procedure dxBButtonBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CargarCatalogoImpuestos;
    procedure CargarImpuestosSeleccionados;
    procedure cxImpuestosCatalogoDblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);

  private
    Procedure SearchAndDelete;
    { Private declarations }
  public
    { Public declarations }
    esSubEmpresa: Boolean;
  end;

var
  FrmAEmpresas: TFrmAEmpresas;

implementation

uses UFrmInicio;

{$R *.dfm}

procedure TFrmAEmpresas.btnMasPClick(Sender: TObject);
begin
  //inherited;
  try
    LlamarSubForm(TFrmPais,FrmPais, zPais, zDatosUpt, 'IdPais');
  finally

  end;

end;

procedure TFrmAEmpresas.cbbEstadoPropertiesChange(Sender: TObject);
begin
  Try
    zCiudad.Active :=False;
    if Not AsignarSQL(zCiudad, 'master_ciudad', pReadOnly) then
      raise Exception.Create(pErrorConsulta + '[master_ciudad]');

    if not FiltrarDataset(zCiudad, 'IdEstado', [varToStr(cbbEstado.EditValue)]) then
      raise Exception.Create(pErrorFiltrar + '[master_ciudad]');

    if zCiudad.Active then
      zCiudad.Refresh
    else
      zCiudad.Open;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmAEmpresas.btnMasEClick(Sender: TObject);
begin
  //inherited;
  try
    LlamarSubForm(TFrmEstado,FrmEstado, zEstado, zDatosUpt, 'IdEstado');
  finally

  end;

end;

procedure TFrmAEmpresas.cbbPaisPropertiesChange(Sender: TObject);
begin
  Try
    zEstado.Active :=False;
    zCiudad.Active :=False;

    if Not AsignarSQL(zEstado, 'master_estado', pReadOnly) then
      raise Exception.Create(pErrorConsulta + '[master_estado]');

    if not FiltrarDataset(zEstado, 'IdPais', [varToStr(cbbPais.EditValue)]) then
      raise Exception.Create(pErrorFiltrar + '[master_estado]');

    if zEstado.Active then
      zEstado.Refresh
    else
      zEstado.Open;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  End;
end;

// Botón de Seleccion de un elemento del Catalogo
procedure TFrmAEmpresas.cxButton1Click(Sender: TObject);
var
  Cursor  : TCursor;
begin
  if cxImpuestosCatalogo.ItemIndex >= 0 then
  begin

    Try
      Cursor  := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        zImpConsulta.Active := False;

        if Not AsignarSQL(zImpConsulta,'master_impuesto_empserv', pReadOnly) then
          raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

        if not FiltrarDataSet(zImpConsulta,'IdEmpresa,IdImpuesto', [IntToStr(varGlobal.Elemento('IdEmpresa').AsInteger), varToStr(TImpuestos(cxImpuestosCatalogo.Items.Objects[cxImpuestosCatalogo.ItemIndex]).IdImpuesto)]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zImpConsulta.Active then
          zImpConsulta.Refresh
        else
          zImpConsulta.Open;

        if ((zImpConsulta.Active) and (zImpConsulta.RecordCount > 0) ) then
          raise Exception.Create('Impuesto ya seleccionado.');


        zImpuestosSeleccionadosUpt.Active := False;

        if Not AsignarSQL(zImpuestosSeleccionadosUpt, 'master_impuesto_empserv', pUpdate) then
          raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

        if Not FiltrarDataSet(zImpuestosSeleccionadosUpt, 'IdEmpresa', [ '-9' ] ) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zImpuestosSeleccionadosUpt.Active then
          zImpuestosSeleccionadosUpt.Refresh
        else
          zImpuestosSeleccionadosUpt.Open;

        zImpuestosSeleccionadosUpt.Append;
        zImpuestosSeleccionadosUpt.FieldByName('IdImpuestoEmpServ').AsInteger := 0;
        zImpuestosSeleccionadosUpt.FieldByName('IdEmpresa').AsInteger := varGlobal.Elemento('IdEmpresa').AsInteger;
        zImpuestosSeleccionadosUpt.FieldByName('IdImpuesto').AsInteger := TImpuestos(cxImpuestosCatalogo.Items.Objects[cxImpuestosCatalogo.ItemIndex]).IdImpuesto;
        zImpuestosSeleccionadosUpt.FieldByName('Tipo').AsString := TImpuestos(cxImpuestosCatalogo.Items.Objects[cxImpuestosCatalogo.ItemIndex]).Tipo;
        zImpuestosSeleccionadosUpt.FieldByName('Valor').AsExtended := TImpuestos(cxImpuestosCatalogo.Items.Objects[cxImpuestosCatalogo.ItemIndex]).Valor;
        zImpuestosSeleccionadosUpt.FieldByName('FechaAplicacion').AsDateTime := now;
        zImpuestosSeleccionadosUpt.Post;

        CargarImpuestosSeleccionados;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e: exception do
      begin
        zImpuestosSeleccionados.Cancel;
        MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
       // MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      end;
    End;

  end;
end;

// Botón Quitar Seleccion de los Impuestos por empresa
procedure TFrmAEmpresas.cxButton2Click(Sender: TObject);
var
  Cursor  : TCursor;
begin
  if cxImpuestosSeleccionados.ItemIndex >= 0 then
  begin
    Try
      Cursor  := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        zImpuestosSeleccionadosUpt.Active := False;
        if Not AsignarSQL(zImpuestosSeleccionadosUpt, 'master_impuesto_empserv', pUpdate) then
          raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

        if Not FiltrarDataSet(zImpuestosSeleccionadosUpt, 'IdImpuestoEmpServ', [TImpuestosSeleccionados(cxImpuestosSeleccionados.Items.Objects[cxImpuestosSeleccionados.ItemIndex]).IdImpuestoEmpServ] ) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zImpuestosSeleccionadosUpt.Active then
          zImpuestosSeleccionadosUpt.Refresh
        else
          zImpuestosSeleccionadosUpt.Open;

        zImpuestosSeleccionadosUpt.Delete;

        CargarImpuestosSeleccionados;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e: exception do
      begin
        MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      //  MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      end;
    End;
  end;
//  ShowMessage(vartostr(TImpuestosSeleccionados(cxImpuestosSeleccionados.Items.Objects[cxImpuestosSeleccionados.ItemIndex]).IdImpuestoEmpServ));
end;
//Botón de Seleccionar Todos Los Impuestos
procedure TFrmAEmpresas.cxButton3Click(Sender: TObject);
var
  cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      zCatalogoImpuestos.Active :=False;
      if Not AsignarSQL(zCatalogoImpuestos,'facturas_impuestos', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[facturas_impuestos]');

      if Not FiltrarDataset(zCatalogoImpuestos, 'IdImpuesto', ['-1'] ) then
            raise Exception.Create(pErrorFiltrar + '[facturas_impuestos]');

      if zCatalogoImpuestos.Active then
        zCatalogoImpuestos.Refresh
      else
        zCatalogoImpuestos.Open;

      zCatalogoImpuestos.First;
      while not zCatalogoImpuestos.Eof do
      begin
        zImpuestosSeleccionados.Active := False;
        if Not AsignarSQL(zImpuestosSeleccionados, 'master_impuesto_empserv', pUpdate) then
          raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

        if Not FiltrarDataSet(zImpuestosSeleccionados, 'IdEmpresa,IdImpuesto', [ varToStr(varGlobal.Elemento('IdEmpresa').AsInteger),IntToStr(zCatalogoImpuestos.FieldByName('IdImpuesto').AsInteger) ] ) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zImpuestosSeleccionados.Active then
          zImpuestosSeleccionados.Refresh
        else
          zImpuestosSeleccionados.Open;

        if Not (zImpuestosSeleccionados.RecordCount > 0) then
        begin
          zImpuestosSeleccionadosUpt.Active := False;
          if Not AsignarSQL(zImpuestosSeleccionadosUpt, 'master_impuesto_empserv', pUpdate) then
            raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

          if Not FiltrarDataSet(zImpuestosSeleccionadosUpt, 'IdEmpresa', [ '-9' ] ) then
            raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

          if zImpuestosSeleccionadosUpt.Active then
            zImpuestosSeleccionadosUpt.Refresh
          else
            zImpuestosSeleccionadosUpt.Open;

            zImpuestosSeleccionadosUpt.Append;
            zImpuestosSeleccionadosUpt.FieldByName('IdImpuestoEmpServ').AsInteger := 0;
            zImpuestosSeleccionadosUpt.FieldByName('IdEmpresa').AsInteger := varGlobal.Elemento('IdEmpresa').AsInteger;
            zImpuestosSeleccionadosUpt.FieldByName('IdImpuesto').AsInteger := zCatalogoImpuestos.FieldByName('IdImpuesto').AsInteger;
            zImpuestosSeleccionadosUpt.FieldByName('Tipo').AsString := zCatalogoImpuestos.FieldByName('Tipo').AsString;
            zImpuestosSeleccionadosUpt.FieldByName('Valor').AsExtended := zCatalogoImpuestos.FieldByName('Valor').AsExtended;
            zImpuestosSeleccionadosUpt.FieldByName('FechaAplicacion').AsDateTime := now;
            zImpuestosSeleccionadosUpt.Post;
        end;

        zCatalogoImpuestos.Next;
      end;
      CargarImpuestosSeleccionados;
    finally
      Screen.Cursor := cursor;
    end;
  Except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  End;
end;

//Botón 4 regresar selecciones de impuestos
procedure TFrmAEmpresas.cxButton4Click(Sender: TObject);
var
  Cursor  : TCursor;
begin
    Try
      Cursor  := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        zImpuestosSeleccionadosUpt.Active := False;

        if Not AsignarSQL(zImpuestosSeleccionadosUpt, 'master_impuesto_empserv', pUpdate) then
          raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

        if Not FiltrarDataSet(zImpuestosSeleccionadosUpt, 'IdEmpresa', [IntToStr(varGlobal.Elemento('IdEmpresa').AsInteger)] ) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zImpuestosSeleccionadosUpt.Active then
          zImpuestosSeleccionadosUpt.Refresh
        else
          zImpuestosSeleccionadosUpt.Open;

        zImpuestosSeleccionadosUpt.First;
        while not zImpuestosSeleccionadosUpt.Eof do
        begin
          zImpuestosSeleccionadosUpt.Delete;
       //   zImpuestosSeleccionadosUpt.Next;
        end;
        CargarImpuestosSeleccionados;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e: exception do
      begin
        MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      //  MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      end;
    End;
end;

procedure TFrmAEmpresas.cxImpuestosCatalogoDblClick(Sender: TObject);
begin
  ShowMessage(vartostr(TImpuestos(cxImpuestosCatalogo.Items.Objects[cxImpuestosCatalogo.ItemIndex]).IdImpuesto));
end;

procedure TFrmAEmpresas.btnMasCClick(Sender: TObject);
begin
  //inherited;
  try
    LlamarSubForm(TFrmCiudad,FrmCiudad, zCiudad, zDatosUpt, 'IdCiudad');
  finally

  end;
end;

procedure TFrmAEmpresas.dxBButtonEliminarClick(Sender: TObject);
var
  LocCampo: String;
begin
  try
    try
      if (zDatos.Active) and (zDatos.RecordCount > 0) then
      begin
        LocCampo := zDatos.FieldByName(CampoMostrar).AsString;
        //if MessageDlg('¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
        if MsgBox.ShowModal('Confirmación.','¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', cmtConfirmation, [cmbYes, cmbNo], imagenAStream(campoImagen,zDatos))= mrYes then
        begin
          if not FiltrarDataset(zDatosUpt, 'bIdEmpresa', [zDatos.FieldByName(PKField).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

          if zDatosUpt.Active then
            zDatosUpt.Refresh
          else
            zDatosUpt.Open;

          if zDatosUpt.Connection.InTransaction then
            zDatosUpt.Connection.Rollback;

          // Verificar si este wey tienes hijos
          zDatosUpt.Connection.StartTransaction;
          SearchAndDelete;//buscar y borrar, aun me falta terminar la recursividad

          zDatosUpt.Connection.Commit;
          dxButtonActualizarClick(Nil);
        end;
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);

      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmAEmpresas.dxBButtonBuscarClick(Sender: TObject);
begin
  //inherited;
  //cxGridDatos.FilterRow.Visible := Not cxGridDatos.FilterRow.Visible;
   //:= Not cxGridDatos.FilterRow.Visible;
    lstEmpresas.Visible := Not LstEmpresas.Visible;
    cxGridGral.Visible := Not cxGridGral.Visible;
    cxGridDatos.FilterRow.Visible := Not cxGridDatos.FilterRow.Visible;
end;

procedure TFrmAEmpresas.dxButtonGuardarClick(Sender: TObject);
begin
  if esSubEmpresa then
    zDatosUpt.FieldByName('IdPadre').AsInteger := zDatos.FieldByName('IdEmpresa').AsInteger
  else
    zDatosUpt.FieldByName('IdPadre').AsInteger := -5;
  inherited;
end;

procedure TFrmAEmpresas.dxButtonNuevoClick(Sender: TObject);
begin
  cxPageDatos.ActivePage := cxDomicilio;
  esSubEmpresa := False;
  inherited;
 { zDatosUpt.FieldByName('IVA').AsString := '0';
  zDatosUpt.FieldByName('RetencionISR').AsString := '0';
  zDatosUpt.FieldByName('RetencionIVA').AsString :=  '0';
  zDatosUpt.FieldByName('IESPS').AsString :=  '0'; }
  if cxtextEmpre.CanFocus then
    cxtextEmpre.SetFocus;
end;

procedure TFrmAEmpresas.dxButtonOpcionalClick(Sender: TObject);
begin
  try
    try
      cxPageDatos.ActivePage := cxDomicilio;
      if cxtextEmpre.CanFocus then
        cxtextEmpre.SetFocus;
      esSubEmpresa := False;
      inherited;
      esSubEmpresa := True;
      if (zDatos.Active) and (zDatos.RecordCount > 0) then
      begin
        if not FiltrarDataset(zDatosUpt, PKField, ['-9']) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zDatosUpt.Active then
          zDatosUpt.Refresh
        else
          zDatosUpt.Open;

        if zDatosUpt.Connection.InTransaction then
          zDatosUpt.Connection.Rollback;

        zDatosUpt.Connection.StartTransaction;
        zDatosUpt.Append;
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmAEmpresas.EdithBtnArchivosPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if cxShellBrowserDialog1.Execute then
  begin
    zDatosUpt.FieldByName('ArchivosEmpresa').AsString := cxShellBrowserDialog1.Path;
    EdithBtnArchivos.Text := cxShellBrowserDialog1.Path;
  end;
end;

procedure TFrmAEmpresas.EdithBtnCertificadoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if openDialog1.Execute then
    begin
      EdithBtnCertificado.Text := openDialog1.FileName;
      zDatosUpt.FieldByName('Certificado').AsString := openDialog1.FileName;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmAEmpresas.EdithBtnKeyPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if openDialog1.Execute then
    begin
      EdithBtnkey.Text := openDialog1.FileName;
      zDatosUpt.FieldByName('Llave').AsString := openDialog1.FileName;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmAEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  cursor: TCursor;
begin
  inherited;
  cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    if assigned(FrmInicio) then
    begin
      if FrmInicio.zEmpresa.Active then
        FrmInicio.zEmpresa.Refresh
      else
        FrmInicio.zEmpresa.Open;
    end;
  finally
    screen.Cursor := cursor;
  end;
end;

procedure TFrmAEmpresas.FormCreate(Sender: TObject);
begin
  inherited;
  esSubEmpresa := False;
  QueryName := 'master_empresa';
  PKField := 'IdEmpresa';
  CampoMostrar := 'Titulo';
  //Validar Registros duplicados
  pCondiciones := '~(IdEmpresa)&(Titulo|Codigo|Rfc|RegPatronal)';
  pCampos := 'IdEmpresa,Titulo,Codigo,Rfc,RegPatronal';
end;

procedure TFrmAEmpresas.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inherited;
      zPais.Active :=False;
      if Not AsignarSQL(zPais, 'master_pais', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[master_pais]');

      if not FiltrarDataset(zPais, 'IdPais', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[master_pais]');

      if zPais.Active then
        zPais.Refresh
      else
        zPais.Open;

      CargarCatalogoImpuestos;
      CargarImpuestosSeleccionados;

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

// Impuestos existentes en el catalogo general asosiados al SAT
procedure TfrmAEmpresas.CargarCatalogoImpuestos;
var
  Imp: TImpuestos;
  cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      zCatalogoImpuestos.Active :=False;
      if Not AsignarSQL(zCatalogoImpuestos,'facturas_impuestos', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[facturas_impuestos]');

      if Not FiltrarDataset(zCatalogoImpuestos, 'IdImpuesto', ['-1'] ) then
            raise Exception.Create(pErrorFiltrar + '[facturas_impuestos]');

      if zCatalogoImpuestos.Active then
        zCatalogoImpuestos.Refresh
      else
        zCatalogoImpuestos.Open;

      if zCatalogoImpuestos.RecordCount = 0 then
        raise Exception.Create('No existen Impuestos');

      zCatalogoImpuestos.First;
      cxImpuestosCatalogo.Items.Clear;
      while not zCatalogoImpuestos.Eof do
      begin
        imp := TImpuestos.Create;
        imp.IdImpuesto:= zCatalogoImpuestos.FieldByName('IdImpuesto').AsInteger;
        imp.Impuesto  := zCatalogoImpuestos.FieldByName('Impuesto').AsString;
        imp.Tipo      := zCatalogoImpuestos.FieldByName('Tipo').AsString;
        imp.Valor     := zCatalogoImpuestos.FieldByName('Valor').AsExtended;

        cxImpuestosCatalogo.AddItem(imp.Impuesto, Imp);

        zCatalogoImpuestos.Next;
      end;
    finally
      Screen.Cursor := cursor;
    end;
  Except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  End;
end;

// Impuestos Seleccioando por el usuario para la empresa
procedure TfrmAEmpresas.CargarImpuestosSeleccionados;
Var
  Cursor : TCursor;
  impSelect : TImpuestosSeleccionados;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      zImpuestosSeleccionados.Active :=False;
      if Not AsignarSQL(zImpuestosSeleccionados,'master_impuesto_empserv', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[master_impuesto_empserv]');

      if Not FiltrarDataset(zImpuestosSeleccionados, 'IdEmpresa', [varGlobal.Elemento('IdEmpresa').AsInteger] ) then
            raise Exception.Create(pErrorFiltrar + '[master_impuesto_empserv]');

      if zImpuestosSeleccionados.Active then
        zImpuestosSeleccionados.Refresh
      else
        zImpuestosSeleccionados.Open;

      zImpuestosSeleccionados.First;
      cxImpuestosSeleccionados.Items.Clear;
      while not zImpuestosSeleccionados.Eof do
      begin
        impSelect := TImpuestosSeleccionados.Create;
        impSelect.IdImpuestoEmpServ := zImpuestosSeleccionados.FieldByName('IdImpuestoEmpServ').AsInteger;
        impSelect.IdImpuesto        := zImpuestosSeleccionados.FieldByName('IdImpuesto').AsInteger;
        impSelect.Impuesto          := zImpuestosSeleccionados.FieldByName('Impuesto').AsString;
        impSelect.Tipo              := zImpuestosSeleccionados.FieldByName('Tipo').AsString;
        impSelect.Valor             := zImpuestosSeleccionados.FieldByName('Valor').AsExtended;

        cxImpuestosSeleccionados.AddItem(impSelect.Impuesto, impSelect);
        zImpuestosSeleccionados.Next;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  End;
end;

procedure TFrmAEmpresas.imgCedulaDblClick(Sender: TObject);
begin
  tcxImage(ImgCedula).LoadFromFile;
end;

procedure TFrmAEmpresas.imgEmpDblClick(Sender: TObject);
begin
 tcxImage(ImgEmp).LoadFromFile;
end;

procedure TFrmAEmpresas.SearchAndDelete;
begin
  if zDatosUpt.RecordCount > 1 then
  begin
    if MsgBox.ShowModal('Confirmar acción.', '¿Estás seguro que deseas eliminar esta Empresa con todas sus sub-Empresas?', cmtConfirmation, [cMbYes,cMbNo]) = mrYes then
    begin
      zDatosUpt.First;
      while Not zDatosUpt.Eof do
      begin
        BorrarRegistro(zDatosUpt);
        zDatosUpt.Next;
      end;
    end;
  end
  else
    BorrarRegistro(zDatosUpt);
end;

end.
