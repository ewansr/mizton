unit UFrmCapturaFolio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, ExtCtrls, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit,
  cxDBEdit, cxTextEdit, cxDropDownEdit, cxCalendar, Menus, StdCtrls, cxButtons,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, UConection, UMsgBox;

type
  TFrmCapturaFolio = class(TForm)
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    pnlBotonera: TPanel;
    cxTextFolioPrincipal: TcxDBTextEdit;
    lyFolioPrincipal: TdxLayoutItem;
    cxTextFolio: TcxDBTextEdit;
    lyFolio: TdxLayoutItem;
    cxMaskTelefono: TcxDBMaskEdit;
    lyTelefono: TdxLayoutItem;
    cxTextPrincipal: TcxDBTextEdit;
    lyPrincipal: TdxLayoutItem;
    cxTextSecundario: TcxDBTextEdit;
    lySecundario: TdxLayoutItem;
    cxTextArea: TcxDBTextEdit;
    lyArea: TdxLayoutItem;
    cxTextNoVale: TcxDBTextEdit;
    lyNoVale: TdxLayoutItem;
    cxDateFecha: TcxDBDateEdit;
    lyFecha: TdxLayoutItem;
    cbbEstatus: TcxDBComboBox;
    lyEstatus: TdxLayoutItem;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    dsDatos: TDataSource;
    zDatos: TZQuery;
    zMaterial: TZQuery;
    dsMaterial: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    IdFolio: Integer;
    IdPersonal: Integer;
  end;

var
  FrmCapturaFolio: TFrmCapturaFolio;

implementation

{$R *.dfm}

procedure TFrmCapturaFolio.btnCancelarClick(Sender: TObject);
begin
  zDatos.Cancel;
  Close;
end;

procedure TFrmCapturaFolio.btnGuardarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      screen.Cursor := crAppStart;
      zDatos.Post;
      Close;
    finally
      SCreen.Cursor := Cursor;
    end;
  Except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validación.',e.Message, cmtWarning, [cmbOK]);
    end;

    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      postMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCapturaFolio.FormCreate(Sender: TObject);
begin
  IdFolio := -9;
  if not AsignarSQL(zDatos, 'mt_foliosxtecnicos', pUpdate) then
    raise Exception.Create(pErrorConsulta + '[mt_foliosxtecnicos]');

//  if not AsignarSQL(zMaterial, 'factura_servicios', pReadOnly) then
//    raise Exception.Create(pErrorConsulta + '[Materiales]');

end;

procedure TFrmCapturaFolio.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      screen.Cursor := crAppStart;
      if not FiltrarDataset(zDatos, 'IdFolio', [IntToStr(IdFolio)]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

      if zDatos.Active then
        zDatos.Refresh
      else
        zDatos.Open;


      if IdFolio = -9 then
      begin
        zDatos.Append;
        zDatos.FieldByName('IdFolio').AsInteger := 0;
        zDatos.FieldByName('IdPersonal').AsInteger := IdPersonal;
        zDatos.FieldByName('Estatus').AsString := 'Liquidada';
      end
      else
        zDatos.Edit;

//      if not FiltrarDataset(zMaterial, 'IdFolio', [IdFolio]) then
//        raise Exception.Create(pErrorFiltrar + '[Materiales]');
//
//      if zMaterial.Active then
//        zMaterial.Refresh
//      else
//        zMaterial.Open;

    finally
      SCreen.Cursor := Cursor;
    end;
  Except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      postMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
