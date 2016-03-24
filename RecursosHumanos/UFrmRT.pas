unit UFrmRT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DBClient,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ulkjson,
  cxContainer, cxTextEdit, cxMemo ;

type
  TFrmRT = class(TForm)
    cdDatos: TClientDataSet;
    cxGridDatos: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdDatos: TcxGrid;
    cxColExpediente: TcxGridDBColumn;
    cxColNoFolio: TcxGridDBColumn;
    cxColEstatus: TcxGridDBColumn;
    cxColtipo: TcxGridDBColumn;
    dsDatos: TDataSource;
    FHttp: TIdHTTP;
    cxMemo1: TcxMemo;
    strngfldDatosid: TStringField;
    strngfldDatosFolio: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FResp: TStringStream;
    procedure cargardatos;
    procedure ParseResponse(AObjResp: TlkJSONobject);

  public
    { Public declarations }
  end;

var
  FrmRT: TFrmRT;

implementation

{$R *.dfm}

{ TFrmRT }

procedure TFrmRT.cargardatos;
var
  TS:TStrings;
  FResponse: string;

  obj:TlkJSONbase;
  vLevel, i:Integer;
  Str, sURL:String;
  k:Word;
begin
 try

     Self.Fhttp.HandleRedirects := True;
    Self.Fhttp.ReadTimeout := 5000;
    Fhttp.Request.ContentType := 'application/json';
    Fhttp.Request.CharSet := 'utf-8';
   sURL := 'http://localhost/miztonws/wdeskfolios.php';
   TS := TStringList.Create;
    Fhttp.Get(sURL, FResp);
    // recoger la respuesta (string)
    FResponse := FResp.DataString;
    // La hacemos visible
    cxMemo1.Lines.Text := FResponse;

    // Conseguir la cadena formateada (componente LkJSON).
    obj := TlkJSONbase.Create();
    // proteccion
    try
      vLevel := 0;
      obj := TlkJSON.ParseText(FResponse);
      // obtener respuesta formateada
      cxmemo1.Lines.Text := GenerateReadableText(obj, vLevel);
      // Parsear la respuesta para almacenar los datos en un TClientDataset
      ParseResponse(TlkJSONobject(obj));
    finally
      FreeAndNil(obj);
    end;
 finally

 end;

end;

procedure TFrmRT.FormCreate(Sender: TObject);
begin
  FResp := TStringStream.Create('');
  cdDatos.CreateDataSet;
end;


procedure TFrmRT.FormShow(Sender: TObject);
begin
 cargardatos;
end;

procedure TFrmRT.ParseResponse(AObjResp: TlkJSONobject);
var
  objUserList:TlkJSONlist;
  objUser, objtmp:TlkJSONobject;
  i:integer;
  Str:String;
begin
  // Limpiar el contenido
  cdDatos.EmptyDataSet;
  // Objeto usuarios?
 if (AObjResp.IndexOfName('folios') = -1) then
 begin
    // Lo almaceamos en un tipo "lista"
    TlkJSONBase(objUserList) := AObjResp.Field['folios'];
    // Recorrer la lista de usuarios.
    for i := 0 to (objUserList.Count - 1) do
    begin
      // Objeto usuario
      TlkJSONBase(objUser) := objUserList.Child[i];
      TlkJSONBase(objtmp) := objUser.FieldByIndex[0];
      // Añadimos un registro al CDS
      cdDatos.Append;
      try
        // Recoger los campos del objeto
        cdDatos.FieldByName('id').AsString := VarToStr(objtmp.Field['id'].Value);
        cdDatos.FieldByName('Folio').AsString := VarToStr(objtmp.Field['Folio'].Value);
//        cdDatos.FieldByName('apellidos').AsString := VarToStr(objtmp.Field['apellidos'].Value);
//        cdDatos.FieldByName('telefono').AsString := VarToStr(objtmp.Field['telefono'].Value);
//        cdDatos.FieldByName('extension').AsString := VarToStr(objtmp.Field['extension'].Value);
//        cdDatos.FieldByName('departamento').AsString := VarToStr(objtmp.Field['departamento'].Value);
//        cdDatos.FieldByName('interno').AsString := VarToStr(objtmp.Field['interno'].Value);
//        cdDatos.FieldByName('email').AsString := VarToStr(objtmp.Field['email'].Value);
        // Grabar
        cdDatos.Post;
      finally
        cdDatos.Cancel;
      end;
    end;
 end;
end;

end.
