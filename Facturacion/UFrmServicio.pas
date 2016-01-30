unit UFrmServicio;

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
  dxLayoutcxEditAdapters, cxDBEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxMemo, cxTextEdit,UConection,
  Menus, StdCtrls, cxButtons, ExtCtrls, cxSpinEdit, cxImage, UMsgBox,
  dxLayoutControlAdapters, dxScreenTip, dxCustomHint, cxHint;

type
  TFrmServicio = class(TFrmCatalogo)
    cxtextServicio: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    cxdbmDescripciona: TcxDBMemo;
    dxLYCDatosItem3: TdxLayoutItem;
    cxdbdtdtFecha: TcxDBDateEdit;
    dxLYCDatosItem4: TdxLayoutItem;
    cbbUnidadMedida: TcxDBLookupComboBox;
    dxLYCDatosItem5: TdxLayoutItem;
    cbbTipo: TcxDBComboBox;
    dxLYCDatosItem6: TdxLayoutItem;
    zMedida: TZQuery;
    dsMedida: TDataSource;
    cxtextCodigos: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxPrecio: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbbAplicarIva: TcxDBComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxdbdtdtFechaReg: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    zDatosPrecio: TZQuery;
    zDatosUptPrecio: TZQuery;
    dsDatosUptPrecio: TDataSource;
    dsDatosPrecio: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxDatosPrecios: TcxGridDBTableView;
    cxDatosPreciosColumn1: TcxGridDBColumn;
    cxDatosPreciosColumn3: TcxGridDBColumn;
    cxDatosPreciosColumn4: TcxGridDBColumn;
    cxDatosPreciosColumn5: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    btnAgregar: TdxBarButton;
    btnEditar: TdxBarButton;
    btnEliminar: TdxBarButton;
    btnAnadir: TdxBarButton;
    btnCancelar: TdxBarButton;
    btnActualizar: TdxBarButton;
    zProducto: TZQuery;
    dsProducto: TDataSource;
    cxSpinPrecio: TcxDBSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxtextIdServicio: TcxDBTextEdit;
    cxDBImage1: TcxDBImage;
    dxLYCDatosItem7: TdxLayoutItem;
    cxSpinIVA: TcxDBSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxlytmLYCDatosItem8: TdxLayoutItem;
    btnMas: TcxButton;
    dxlytcrtdgrpLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure cxDatosPreciosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDatosPreciosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAnadirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure cxtextIdServicioPropertiesChange(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure cbbAplicarIvaPropertiesChange(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure cxDBImage1DblClick(Sender: TObject);
    procedure cbbTipoPropertiesChange(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxButtonCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMasClick(Sender: TObject);

  private

    Procedure ActionButtones;
    { Private declarations }
  public
    Ultima:String;
    QueryName1: String;
    PKField1: String;
    CampoMostrar1: string;
    { Public declarations }
  end;

var
  FrmServicio: TFrmServicio;

implementation

uses
  UFrmUnidadMedida;

{$R *.dfm}
procedure TFrmServicio.ActionButtones;
var Estado: Boolean;
begin
  Estado := (zDatosUptPrecio.Active) and (zDatosUptPrecio.State = dsBrowse);
  btnActualizar.Enabled := Estado;
  btnAgregar.Enabled := Estado;

  Estado := (zDatosUptPrecio.Active) and (zDatosPrecio.RecordCount > 0) and (zDatosUptPrecio.State = dsBrowse);
  btnEditar.Enabled := Estado;
  btnEliminar.Enabled := Estado;

  Estado := (zDatosUptPrecio.Active) and (zDatosUptPrecio.State in [dsEdit, dsInsert]);
  btnAnadir.Enabled := Estado;
  btnCancelar.Enabled := Estado;
  cxGrid1.Enabled := not Estado;
  dxLayoutControl1.Visible := Estado;
end;
procedure TFrmServicio.btnActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if (zDatosPrecio.Active) then
        zDatosPrecio.Refresh
      else
        zDatosPrecio.Open;
    finally
      ActionButtones;
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
     //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;

end;

procedure TFrmServicio.btnAgregarClick(Sender: TObject);
begin
  dxLayoutControl1.Visible:= true;
  cxGrid1.Enabled :=true;
  dxButtonGuardar.Enabled :=False;
  try
    try
      if not (zDatosUptPrecio.Active) then
      begin
        if not FiltrarDataset(zDatosUptPrecio, PKField1, ['-9']) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName1 + ']');

        if zDatosUptPrecio.Active then
          zDatosUptPrecio.Refresh
        else
          zDatosUptPrecio.Open;
      end;

      zDatosUptPrecio.Append;
      if  cxSpinPrecio.CanFocus then
        cxSpinPrecio.SetFocus;

      cxdbdtdtFechaReg.Date:=now;
      zDatosUptPrecio.FieldByName('FechaAplicacion').AsDateTime := now;
      zDatosUptPrecio.FieldByName('IVA').AsString := '16';
      zDatosUptPrecio.FieldByName('AplicarIVA').AsString := 'SI';
    finally
      ActionButtones;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmServicio.btnAnadirClick(Sender: TObject);
begin
  try
    try
      dxButtonGuardar.Enabled := True;
      zDatosUptPrecio.FieldByName('IdServicio').AsString := cxtextIdServicio.Text;
      if (zDatosUptPrecio.Active) and (zDatosUptPrecio.State in [dsEdit, dsInsert]) then
      begin
        if zDatosUptPrecio.state = dsInsert then
          zDatosUptPrecio.FieldByName(PKField1).AsInteger := 0;
        zDatosUptPrecio.Post;
        cxDatosPrecios.DataController.DataSource:= dsDatosUptPrecio;
        dxLayoutControl1.Visible := False;
        btnActualizarClick(nil);
      end;
    finally
      ActionButtones;
    end;
  except
    on e: eWarning do
    begin
      MessageDlg(e.Message, mtWarning, [mbOK],0);
      //MsgBox.ShowModal('Error.', pMensaje + e.Message, cmtError, [cmbOK]);
    end;

    on e: exception do
    begin
      MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      if zDatosUptPrecio.Active and (zDatosUptPrecio.State in [dsInsert, dsEdit]) then
        zDatosPrecio.Cancel;
      btnActualizarClick(nil);
    end;
  end;
end;

procedure TFrmServicio.btnCancelarClick(Sender: TObject);
begin
  try
    try
      dxButtonGuardar.Enabled := True;
      if (zDatosUptPrecio.Active) and (zDatosUptPrecio.State in [dsEdit, dsInsert]) then
      begin
        zDatosUptPrecio.Cancel;
        dxLayoutControl1.Visible := false;
        btnAnadir.Enabled:= false;
      end;
    finally
      ActionButtones;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmServicio.btnEditarClick(Sender: TObject);
begin
  try
    try
      dxButtonGuardar.Enabled := False;
      if (zDatosPrecio.Active) and (zDatosPrecio.RecordCount > 0) then
      begin
        if not FiltrarDataset(zDatosUptPrecio, PKField1, [zDatosPrecio.FieldByName(PKField1).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName1 + ']');

        if zDatosUptPrecio.Active then
          zDatosUptPrecio.Refresh
        else
          zDatosUptPrecio.Open;
        dxLayoutControl1.Visible:= true;
        btnActualizarClick(nil);
        zDatosUptPrecio.edit;
        //cxDatosPrecios.DataController.DataSource:= dsDatosUptPrecio;
      end;
    finally
      ActionButtones;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmServicio.btnEliminarClick(Sender: TObject);
var
  LocCampo: String;
begin
  try
    try
      if (zDatosPrecio.Active) and (zDatosPrecio.RecordCount > 0) then
      begin
        LocCampo := zDatosPrecio.FieldByName(CampoMostrar1).AsString;
        //if MessageDlg('¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
        if MsgBox.ShowModal('Confirmación.','¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', cmtConfirmation, [cmbYes, cmbNo], imagenAStream(campoImagen,zDatos))= mrYes then
        begin
          if not FiltrarDataset(zDatosUptPrecio, PKField1, [zDatosPrecio.FieldByName(PKField1).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName1 + ']');

          if zDatosUptPrecio.Active then
            zDatosUptPrecio.Refresh
          else
            zDatosUptPrecio.Open;
          zDatosUptPrecio.Delete;
          btnActualizarClick(nil);
        end;
      end;
    finally
    ActionButtones;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      msgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmServicio.btnMasClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmUnidadMedida,FrmUnidadMedida, zMedida, zDatosUpt, 'IdUnidadMedida');
  finally
    //dsMedida.DataSet.Refresh;
  end;
end;

procedure TFrmServicio.cbbAplicarIvaPropertiesChange(Sender: TObject);
begin
  if cbbAplicarIva.Text = 'SI' then
    begin
      cxSpinIVA.Text := '16';
      cxSpinIVA.Enabled := true;
    end
  else
  if cbbAplicarIva.Text = 'NO' then
  begin
    cxSpinIVA.Text := '0';
    cxSpinIVA.Enabled := false;
    if  cxdbdtdtFechaReg.CanFocus then
   cxdbdtdtFechaReg.SetFocus;
  end;
 end;

procedure TFrmServicio.cbbTipoPropertiesChange(Sender: TObject);
begin
  inherited;
  if cbbTipo.EditValue ='PRODUCTO' then
    begin
      dxLYCDatosItem2.CaptionOptions.Text :='Producto:';
      //cbbUnidadMedida.Enabled := true;
      if  cbbUnidadMedida.CanFocus then
      cbbUnidadMedida.SetFocus;
    end
  else
  begin
    dxLYCDatosItem2.CaptionOptions.Text :='Servicio:';
    //cbbUnidadMedida.Enabled := false;
    cbbUnidadMedida.Text :='NO APLICA';
    if  cxtextServicio.CanFocus then
    cxtextServicio.SetFocus;
  end;
end;

procedure TFrmServicio.cxDatosPreciosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditarClick(nil);
end;

procedure TFrmServicio.cxDatosPreciosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    btnEditarClick(nil);

  if key = VK_DELETE then
    btnEliminarClick(nil);
end;

procedure TFrmServicio.cxDBImage1DblClick(Sender: TObject);
begin
  inherited;
  TcxImage(cxDBImage1).LoadFromFile;
end;

procedure TFrmServicio.cxtextIdServicioPropertiesChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inherited;
      if not AsignarSQL(zDatosPrecio,'master_precio', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + QueryName + ']');

      if not FiltrarDataset(zDatosPrecio, PKField,[VarToStr(cxtextIdServicio.Text)]) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

      if zDatosPrecio.Active then
        zDatosPrecio.Refresh
      else
        zDatosPrecio.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
      msgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
  end;
end;

procedure TFrmServicio.dxBButtonEditarClick(Sender: TObject);
var
  Estado: Boolean;
begin
  inherited;
  btnAgregar.Enabled :=true;
  Estado := (zDatosPrecio.Active and (zDatosPrecio.RecordCount > 0));
  btnEliminar.Enabled := Estado;
  btnEditar.Enabled := Estado;
  btnActualizar.Enabled :=true;
  cxGrid1.Enabled :=true;
end;

procedure TFrmServicio.dxButtonCancelarClick(Sender: TObject);
begin
  try
    if zDatosUptPrecio.Active then
      zDatosUptPrecio.Close;

    btnCancelarClick(Nil);

    inherited;
    btnAgregar.Enabled :=false;
    btnEliminar.Enabled :=false;
    btnEditar.Enabled :=false;
    btnActualizar.Enabled :=false;
    cxGrid1.Enabled :=false;
  finally
    cxDatosPrecios.DataController.DataSource:= dsDatosPrecio;
  end;
end;

procedure TFrmServicio.dxButtonGuardarClick(Sender: TObject);
var
  UltId: Integer;
  i: Integer;
  Tabla: string;
  Lista: TStringList;
  Reactivado: Boolean;
begin
  try
    try
      btnAgregar.Enabled :=false;
      btnEliminar.Enabled :=false;
      btnEditar.Enabled :=false;
      btnActualizar.Enabled :=false;
      cxGrid1.Enabled :=false;
      Lista := TStringList.Create;
      SelectNext(ActiveControl, True, True);
      if (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]) then
      begin
        if zDatosUpt.state = dsInsert then
        begin
          zDatosUpt.FieldByName(PKField).AsInteger := 0;

          Tabla := String(TZQuery(zDatosUpt).Properties.Objects[0]);
          Lista.Delimiter := ',';
          Lista.DelimitedText := pCampos;

          i := 0;
          pValores := '';
          While i < Lista.Count do
          begin
            if i = (Lista.Count -1) then
              pValores := pValores + zDatosUpt.FieldByName(Lista[i]).AsString
            else
              pValores := pValores + zDatosUpt.FieldByName(Lista[i]).AsString + ',';
            Inc(i);
          end;

          VerificarExiste(tabla, pCondiciones, pValores, Reactivado);
          if Reactivado then
          begin
            dxButtonCancelarClick(nil);
          end;
          if zDatosUpt.State in [dsInsert] then
          zDatosUpt.Post;

          UltId := UltimaPK;

          if Not Reactivado and (zDatosUptPrecio.active) then
          begin
            zDatosUptPrecio.First;
            while not zDatosUptPrecio.Eof do
            begin
              zDatosUptPrecio.Edit;
              zDatosUptPrecio.FieldByName(PKField).AsInteger := UltId;
              zDatosUptPrecio.Post;
              zDatosUptPrecio.Next;
            end;
          end;
        end;
        if zDatosUpt.State in [dsEdit] then
            zDatosUpt.Post;

        if zDatosUpt.Connection.InTransaction then
          zDatosUpt.Connection.Commit;

        zDatosUptPrecio.Close;
        dxButtonActualizarClick(nil);
        OcultarPanel;

        if esLlamado then
          Tag := 1112;
      end;
    finally
      cxDatosPrecios.DataController.DataSource:= dsDatosPrecio;
      zDatosUptPrecio.Cancel;
      ActionButtons;
    end;
  except
    on e: eWarning do
    begin
      //MessageDlg(e.Message, mtWarning, [mbOK],0);
      MsgBox.ShowModal('Validación.', e.Message, cmtWarning, [cmbOK]);
    end;

    on e: exception do
    begin
      msgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Active and (zDatosUpt.State in [dsInsert, dsEdit]) then
        zDatos.Cancel;

      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmServicio.dxButtonNuevoClick(Sender: TObject);
var
  Estado: Boolean;
begin
  cxPageDatos.ActivePage := cxTsDatos;
  inherited;
  cxdbdtdtFecha.Date:= now;
  zDatosUpt.FieldByName('FechaRegistro').AsDateTime :=now;
  btnAgregar.Enabled :=true;
  Estado := (zDatosPrecio.Active and (zDatosPrecio.RecordCount > 0));
  btnEliminar.Enabled := Estado;
  btnEditar.Enabled := Estado;
  btnActualizar.Enabled :=true;
  if cxdbdtdtFecha.CanFocus then
    cxdbdtdtFecha.SetFocus;

end;

procedure TFrmServicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if zDatosUptPrecio.Active and (zDatosUptPrecio.State in [dsInsert, dsEdit]) then
    zDatosPrecio.Cancel;
end;

Procedure TFrmServicio.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'factura_servicios';
  PKField := 'IdServicio';
  CampoMostrar :='Servicio';
  pCondiciones := '~(IdServicio)&(Codigo)';
  pCampos := 'IdServicio,Codigo';
  QueryName1 := 'master_precio';
  PKField1 := 'IdListaprecio';
  CampoMostrar1 :='Precio';


end;

procedure TFrmServicio.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  inherited;
  try
    Cursor := Screen.Cursor;
    try
      esLlamado := Tag = 1111;
      Screen.Cursor := crAppStart;

      if not AsignarSQL(zDatosUptPrecio, QueryName1, pUpdate) then
        raise Exception.Create(pErrorConsulta + '[' + QueryName1 + ']');

      if not FiltrarDataset(zDatosUptPrecio, PKField1, ['-9']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName1 + ']');

      if zDatosUptPrecio.Active then
        zDatosUptPrecio.Refresh
      else
        zDatosUptPrecio.Open;

      if not AsignarSQL(zMedida, 'master_unidadmedida', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_unidadmedida' + ']');

      if not FiltrarDataset(zMedida, 'IdUnidadMedida', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_unidadmedida' + ']');

      if zMedida.Active then
        zMedida.Refresh
      else
        zMedida.Open;

      cxPageDatos.Activepage := cxTsDatos;
    finally
      AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
      AplicarTema(TForm(Self));
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      msgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;
end.
