unit UFrmCatalogoImpuestos;

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
  cxHyperLinkEdit, cxContainer, dxLayoutcxEditAdapters, cxDBEdit, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, UMsgBox, UConection, cxMemo,
  cxButtonEdit, ShellAPI, cxLabel;

type
  TImpuestos = class
    Idimpuesto: Integer;
    CodigoImpuesto: string;
  end;

  TFrmCatalogoImpuestos = class(TFrmMiniCatalogo)
    cxColumnGridDatosColumn1: TcxGridDBColumn;
    cxColumnGridDatosColumn2: TcxGridDBColumn;
    cxColumnGridDatosColumn3: TcxGridDBColumn;
    cxColumnGridDatosColumn4: TcxGridDBColumn;
    cxColumnGridDatosColumn5: TcxGridDBColumn;
    cxColumnGridDatosColumn6: TcxGridDBColumn;
    cxColumnGridDatosColumn7: TcxGridDBColumn;
    cxColumnGridDatosColumn8: TcxGridDBColumn;
    cxTextCodigo: TcxDBTextEdit;
    dxlytmLYCDatosItem1: TdxLayoutItem;
    cxTextImpuesto: TcxDBTextEdit;
    dxlytmLYCDatosItem2: TdxLayoutItem;
    cxTextAlias: TcxDBTextEdit;
    dxlytmLYCDatosItem3: TdxLayoutItem;
    cbbTipo: TcxDBComboBox;
    dxlytmLYCDatosItem4: TdxLayoutItem;
    cxSpinValor: TcxDBSpinEdit;
    dxlytmLYCDatosItem5: TdxLayoutItem;
    dxlytcrtdgrpLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    cbbTipoImpuesto: TcxDBComboBox;
    dxlytmLYCDatosItem6: TdxLayoutItem;
    cbbAplicaSobre: TcxDBComboBox;
    dxlytmLYCDatosItem8: TdxLayoutItem;
    dxlytcrtdgrpLYCDatosGroup2: TdxLayoutAutoCreatedGroup;
    zImpuestos: TZQuery;
    Lbl1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditURLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxColumnGridDatosColumn8PropertiesStartClick(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure zDatosAfterScroll(DataSet: TDataSet);
    procedure dxButtonCancelarClick(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
    procedure dxBButtonEliminarClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
  private
    procedure llenarCombo;
    Procedure EstadoComponentes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoImpuestos: TFrmCatalogoImpuestos;

implementation

Uses
  UWebBrowser;

{$R *.dfm}

procedure TFrmCatalogoImpuestos.btnEditURLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  URL: Widestring;
begin
  URL := zDatos.FieldByName('URL').AsString;
  if Length(Trim(URL)) > 0 then
  begin
    ShellExecute(Handle,'open','iexplore.exe',PWideChar(URL),nil,SW_NORMAL);
//    FrmWebBrowser := TFrmWebBrowser.CreateByParam(nil, URL);
//    FrmWebBrowser.Show;
  end;
end;

procedure TFrmCatalogoImpuestos.cxColumnGridDatosColumn8PropertiesStartClick(
  Sender: TObject);
var
  URL: Widestring;
begin
  URL := zDatos.FieldByName('URL').AsString;
  if Length(Trim(URL)) > 0 then
  begin
    ShellExecute(Handle,'open','iexplore.exe',PWideChar(URL),nil,SW_NORMAL);
//    FrmWebBrowser := TFrmWebBrowser.CreateByParam(nil, URL);
//    FrmWebBrowser.Show;
  end;
end;

procedure TFrmCatalogoImpuestos.dxBButtonEditarClick(Sender: TObject);
begin
  try
    inherited;
  finally
    EstadoComponentes;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmCatalogoImpuestos.dxBButtonEliminarClick(Sender: TObject);
begin
  try
    inherited;
  finally
    EstadoComponentes;
  end;
end;

procedure TFrmCatalogoImpuestos.dxButtonActualizarClick(Sender: TObject);
begin
  try
    inherited;
  finally
    EstadoComponentes;
  end;
end;

procedure TFrmCatalogoImpuestos.dxButtonCancelarClick(Sender: TObject);
begin
  try
    inherited;
  finally
    EstadoComponentes;
  end;
end;

procedure TFrmCatalogoImpuestos.dxButtonGuardarClick(Sender: TObject);
begin
  try
    inherited;
    llenarCombo;
  finally
    EstadoComponentes;
  end;
end;

procedure TFrmCatalogoImpuestos.dxButtonNuevoClick(Sender: TObject);
begin
  try
    inherited;
    zDatosUpt.FieldByName('Editable').AsString := 'Si';
  finally
    EstadoComponentes;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TFrmCatalogoImpuestos.EstadoComponentes;
var
  Estado: Boolean;
begin
  Estado := zDatosUpt.Active and (zDatosUpt.FieldByName('Editable').AsString = 'Si') and (zDatosUpt.State in [dsInsert, dsEdit]);
  cxTextCodigo.Enabled := Estado;
  cbbTipo.Enabled := Estado;
  cbbTipoImpuesto.Enabled := Estado;
  cxTextImpuesto.Enabled := Estado;
  Lbl1.Visible := Not Estado;
end;

procedure TFrmCatalogoImpuestos.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'facturas_impuestos';
  PKField := 'IdImpuesto';
  CampoMostrar :='Impuesto';
  campoImagen := '';

  //Validar Registros duplicados
  pCondiciones := '~(IdImpuesto)&(Codigo|Impuesto)';
  pCampos := 'IdImpuesto,Codigo,Impuesto';
end;

procedure TFrmCatalogoImpuestos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  TipoImpuesto: TImpuestos;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;


      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoImpuestos.llenarCombo;
var
  Cursor: TCursor;
  TipoImpuesto: TImpuestos;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if not AsignarSQL(zImpuestos, 'facturas_impuestos', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[facturas_impuestos]');

      if not FiltrarDataset(zImpuestos, 'Activo', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[facturas_impuestos]');

      if zImpuestos.Active then
        zImpuestos.Refresh
      else
        zImpuestos.Open;

      //llenar el combo con los elementos restantes
      TipoImpuesto := TImpuestos.Create;
      TipoImpuesto.Idimpuesto := -1;
      TipoImpuesto.CodigoImpuesto := 'NETO';
      cbbAplicaSobre.Properties.Items.AddObject('NETO',  TipoImpuesto);

      TipoImpuesto := TImpuestos.Create;
      TipoImpuesto.Idimpuesto := -1;
      TipoImpuesto.CodigoImpuesto := 'PRODUCTO';
      cbbAplicaSobre.Properties.Items.AddObject('PRODUCTO',  TipoImpuesto);

      zImpuestos.First;
      while not zImpuestos.Eof do
      begin
        TipoImpuesto := TImpuestos.Create;
        TipoImpuesto.Idimpuesto := zImpuestos.FieldByName('IdImpuesto').AsInteger;
        TipoImpuesto.CodigoImpuesto := zImpuestos.FieldByName('Codigo').AsString;
        cbbAplicaSobre.Properties.Items.AddObject(TipoImpuesto.CodigoImpuesto,  TipoImpuesto);

        zImpuestos.Next;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoImpuestos.zDatosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  dxBButtonEliminar.Enabled := zDatos.FieldByName('Editable').AsString = 'Si';
end;

end.
