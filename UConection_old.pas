unit UConection;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Variants, Windows, Messages, DateUtils, ImgList,
  Controls, cxGraphics, dxLayoutLookAndFeels, cxClasses, Forms, dxRibbon,
  cxStyles, cxDBEdit, StrUtils, Graphics, cxImage, dxGDIPlusClasses;

type
  //Clase para asignar el set focus automatico
  THackWinControl = class(TWinControl);
  THackForm = class(TForm);

  TVarGlobal = Class
      sNombre: String;
      sTipo: String;
    Private
      vValor: Variant;
    Public
      function AsString: String;
      function AsInteger: Integer;
      function AsFloat: Extended;
      function AsDate: TDate;
      function AsDateTime: TDateTime;
      function AsVariant: Variant;
  End;

  TGlobales = Class
    private
      ListaGlobal: TStringList;
    public
      Constructor Create;
      Destructor Destroy;

    function Elemento(Nombre: String): TVarGlobal;
    procedure SetValue(Nombre: String; Valor: Variant);
  End;

  eWarning = class(Exception);
  eException = class(Exception);

  TUDMConection = class(TDataModule)
    conBD: TZConnection;
    zConsultasSQL: TZQuery;
    cxImage342: TcxImageList;
    cxImage16: TcxImageList;
    dxLAFLayout: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    cxStyleGrid: TcxStyleRepository;
    cxstylHeader: TcxStyle;
    cxstylContent: TcxStyle;
    cxImageIconos: TcxImageList;
    zValidacion: TZQuery;
    zAdministraID: TZQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxstylFocus: TcxStyle;
    cxstylError: TcxStyle;
    cxImageOtros: TcxImageList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel;
    dxlytstndrdlkndfl1: TdxLayoutStandardLookAndFeel;
    cxImageList1: TcxImageList;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    LastId: LongInt;
    procedure gBeforePost(gDataset: TDataSet);
    procedure SetAutoFocus(Sender: TObject; var Key: Word;
          Shift: TShiftState);
    procedure SetEnterAutoColorFocus(Sender: TObject);
    procedure setExitAutoColorFocus(Sender: TObject);
  public
    function imgToStream(Img: String;var Dataset: TZQuery): TdxSmartImage;
    function ReloadQuerys: Boolean;
    Function setSQL(var Dataset: TZQuery; QueryName: String; Option: string): Boolean;
    function setParams(var Dataset: TZQuery; params: string; Values: array of Variant): Boolean;
    function DateToSqlFormat(vDate: TDate): string;
    Function getLastId: Integer;
    //Function



    { Public declarations }
  protected

  end;

var
  UDMConection: TUDMConection;
  varGlobal: TGlobales;
const

  pReadOnly: string = 'READONLY';
  pUpdate: string = 'UPDATE';
  pMensajeError: String = 'Ha ocurrido un error, informe a su administrador de sistema de lo siguiente: ';
  pErrorConsulta: string = 'No se ha encontrado la consulta SQL en la base de datos ';
  pErrorFiltrar: string = 'Error al filtrar en la consulta SQL ';

  procedure AplicarTema(var Ventana: TForm);
  Function GetUltimoId: Integer;
  function AsignarSQL(var Dataset: TZQuery; QueryName: String; Option: string): Boolean;
  function FiltrarDataset(var Dataset: TZQuery; params: string; Values: array of Variant): Boolean;
  function RecargarConsultasSQL: Boolean;
  function fechaSQL(Fecha: TDate): string;
  function UltimaPK: Integer;
  function imagenAStream(Img: String; var Dataset: TZQuery): TdxSmartImage;
  procedure AutoFocus(var Form: TForm);
  procedure LlamarSubForm(clase: TComponentClass; formulario: TForm);
  function encriptar(aStr: String; aKey: Integer): String;
  function desencriptar(aStr: String; aKey: Integer): String;

implementation

{$R *.dfm}

Uses
  UFrmInicio;
{ TDataModule2 }


procedure TUDMConection.DataModuleCreate(Sender: TObject);
begin
  //ReloadQuerys;
end;

procedure TUDMConection.DataModuleDestroy(Sender: TObject);
begin
  if conBD.Connected then
    conBD.Disconnect;
end;

function TUDMConection.DateToSqlFormat(vDate: TDate): string;
begin
  Result := IntToStr(YearOf(vDate)) + '-' + IntToStr(MonthOf(vDate)) + '-' + IntToStr(DayOf(vDate));
end;

function TUDMConection.ReloadQuerys: Boolean;
begin
  try
    Result := False;
    zConsultasSQL.Active := False;
    zConsultasSQL.SQL.Text := 'Select * from master_consultassql';
    zConsultasSQL.Open;

    zValidacion.Active := False;
    zValidacion.ParamByName('pBd').AsString := conBD.Database;
    zValidacion.Open;

    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('No se pudo recargar el conjunto de consultas SQL debido al siguiente error:  ' + e.Message);
    end;
  end;
end;

procedure TUDMConection.SetEnterAutoColorFocus(Sender: TObject);
begin
  THackWinControl(sender).Color := UDMConection.cxstylFocus.Color;
end;

procedure TUDMConection.setExitAutoColorFocus(Sender: TObject);
begin
  THackWinControl(sender).Color := clWindow;
end;

function TUDMConection.setParams(var Dataset: TZQuery; params: string;
  Values: array of Variant): Boolean;
var
  i,j: Integer;
  ParamList: TStringList;
begin
  try
    Result := False;

    ParamList := TStringList.Create;
    ParamList.Delimiter := ',';
    ParamList.DelimitedText := params;

    if (Length(Trim(Dataset.SQL.Text)) <> 0) and (Dataset.Params.Count > 0) then
    begin
      for i := 0 to Dataset.Params.Count - 1 do
      begin
        for j := 0 to ParamList.Count-1 do
        begin
          if Dataset.Params.Items[i].Name = ParamList[j]  then
            Dataset.ParamByName(Dataset.Params.Items[i].Name).AsString := Values[j]
          else
            Dataset.ParamByName(Dataset.Params.Items[i].Name).AsString := '-1';
        end;
      end;
    end;
    Result := True;
  except
    raise;
  end;
end;

procedure TUDMConection.gBeforePost(gDataset: TDataSet);
var
  zMaxId: TZQuery;
  QueryName, FieldName: string;
  I: Integer;
begin
  try
    //Aqui tiene que validar a huevos sea inserción o edición
    if zValidacion.Active and (zValidacion.RecordCount > 0) then
    begin
      i := 0;
      QueryName := String(TZQuery(gDataset).Properties.Objects[0]);
      while i < gDataset.FieldCount do
      begin
        FieldName := gDataset.Fields.Fields[i].FieldName;
        if zValidacion.Locate('TABLE_NAME;COLUMN_NAME', VarArrayOf([QueryName, FieldName]), []) and  (gDataset.FieldByName(FieldName).IsNull) then
        begin
          if Length(Trim(zValidacion.FieldByName('COLUMN_COMMENT').AsString)) = 0 then
            raise eWarning.Create('Mensaje de autovalidación no establecido para el campo [' + zValidacion.FieldByName('TABLE_NAME').AsString + '.' + zValidacion.FieldByName('COLUMN_NAME').AsString + ']')
          else
            raise eWarning.Create(zValidacion.FieldByName('COLUMN_COMMENT').AsString);
        end;
        inc(i);
      end;
    end;

    if TZQuery(gDataset).State = dsInsert then
    try
      LastId := -1;
      QueryName := String(TZQuery(gDataset).Properties.Objects[0]);
      zMaxId := TZQuery.Create(Self);

      if (Length(Trim(zConsultasSQL.FieldByName('CampoIncrementable').AsString)) > 0) and zConsultasSQL.Locate('NombreConsulta;Tipo', varArrayOf([QueryName, pUpdate]), []) then
      begin
        zMaxId.Connection := conBD;
        zMaxId.SQL.Text := 'Select MAX(' + zConsultasSQL.FieldByName('CampoIncrementable').AsString + ') as Incrementable From ' + QueryName + ';';
        zMaxId.Open;
        gDataset.FieldByName(zConsultasSQL.FieldByName('CampoIncrementable').AsString).AsInteger := zMaxId.FieldByName('Incrementable').AsInteger + 1;
        LastId := gDataset.FieldByName(zConsultasSQL.FieldByName('CampoIncrementable').AsString).AsInteger;
      end;
    finally
      zMaxId.Destroy;
    end;
  except
    raise;
  end;
end;

function TUDMConection.getLastId: Integer;
begin
  try
    zAdministraID.Close;
    zAdministraID.Open;
    Result := zAdministraID.FieldByName('inc').AsInteger;
  Except
    raise;
  end;
end;

function TUDMConection.imgToStream(Img: String; var Dataset: TZQuery): TdxSmartImage;
var
  field: TBlobField;
  Stream: TStream;
  smartImg: TdxSmartImage;
begin
  try
    if (Length(Trim(img)) > 0) and Not Dataset.FieldByName(img).IsNull then
    begin
      try
        smartImg := TdxSmartImage.Create;
        Stream := Dataset.CreateBlobStream(Dataset.FieldByName(img), bmRead);
        smartImg.LoadFromStream(Stream);
        Result := smartImg;
      finally
        Stream.Destroy;
      end;
    end
    else
        Result := nil;

  except
    raise;
  end;
end;

function TUDMConection.setSQL(var Dataset: TZQuery; QueryName, Option: string): Boolean;
begin
  try
    Result := False;
    if Not Assigned(Dataset) then
      raise Exception.Create('El componente no se encuentra creado.');

    if (Not zConsultasSQL.Active) or (zConsultasSQL.Active and (zConsultasSQL.RecordCount = 0)) then
      raise Exception.Create('No se encuentra consultas SQL definidas dentro de la tabla master_ConsultasSql');

    if zConsultasSQL.Locate('NombreConsulta;Tipo', varArrayOf([QueryName,Option]), []) then
    begin
      if Dataset.Active then
        Dataset.Close;

      if Dataset.Properties.Count > 0 then
        Dataset.Properties.Delete(0);

      Dataset.Properties.AddObject(QueryName, TObject(QueryName));
      Dataset.SQL.Text := zConsultasSQL.FieldByName('SQL').AsString;
      Dataset.Connection := conBD;
      //En caso de ser tipo update le asignaré el procedimiento Befores post
      //Para manejar el autoincrementable
      if Option = pUpdate then
        Dataset.BeforePost := gBeforePost
      else If Option = pUpdate then
      begin
        Dataset.BeforePost := nil;
        Dataset.ReadOnly := True;
      end;

      Result := True;
    end;
  except
    raise; //Que el programador lo atrape y haga lo que se le antoje
  end;
end;

function AsignarSQL(var Dataset: TZQuery; QueryName: String; Option: string): Boolean;
begin
  Result := UDMConection.setSQL(Dataset,QueryName,Option);
end;

function FiltrarDataset(var Dataset: TZQuery; params: string; Values: array of Variant): Boolean;
begin
  Result := UDMConection.setParams(Dataset,params,Values);
end;

function RecargarConsultasSQL: Boolean;
begin
  try
    Result := UDMConection.ReloadQuerys;
  except
    raise;
  end;
end;


function TVarGlobal.AsString: String;
begin
  if vValor = Null then
    Result := ''
  else
    Result := vValor;
end;

function TVarGlobal.AsInteger: Integer;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsFloat: Extended;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsDate: TDate;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := Trunc(vValor);
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsDateTime: TDateTime;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsVariant: Variant;
begin
  Result := vValor;
end;

function ObtenerElemento(Numero: Integer; Cadena: String): String;
var
  Cuenta, Cta: Integer;
  Found: Boolean;
  Valor, Resultado: String;
begin
  Cuenta := 0;
  Valor := '';
  Cta := 0;
  Cadena := Cadena + '|';
  Resultado := '';
  Found := False;
  while (Cuenta < Length(Cadena)) and Not Found do
  begin
    Inc(Cuenta);
    if Cadena[Cuenta] = '|' then
    begin
      inc(Cta);
      if Cta = Numero then
      begin
        Found := True;
        Resultado := Valor;
      end
      else
        Valor := '';
    end
    else
      Valor := Valor + Cadena[Cuenta];
  end;
  Result := Resultado;
end;

constructor TGlobales.Create;
begin
  ListaGlobal := TStringList.Create;
  ListaGlobal.Clear;
end;

destructor TGlobales.Destroy;
begin
  ListaGlobal.Free;
end;

function TGlobales.Elemento(Nombre: string): TVarGlobal;
var
  Indice: Integer;
  Variable: String;
  Elem: TVarGlobal;
begin
  Indice := ListaGlobal.IndexOf(Nombre);
  if Indice >= 0 then
  begin
    if ((TVarGlobal(ListaGlobal.Objects[Indice]).sTipo = 'INTEGER') or
        (TVarGlobal(ListaGlobal.Objects[Indice]).sTipo = 'FLOAT')) and (String(TVarGlobal(ListaGlobal.Objects[Indice]).vValor) = '') then
      TVarGlobal(ListaGlobal.Objects[Indice]).vValor := 0;

    Result := TVarGlobal(ListaGlobal.Objects[Indice]);
  end
  else
  begin
      Elem := TVarGlobal.Create;
      if Variable <> '' then
      begin
        // Descomponer la variable en sus elementos basicos
        Elem.sNombre := ObtenerElemento(1, Variable);
        Elem.sTipo   := ObtenerElemento(2, Variable);
        Elem.vValor  := ObtenerElemento(2, Variable);
        varGlobal.ListaGlobal.AddObject(ObtenerElemento(1, Variable), Elem);
      end
      else
      begin
        // Descomponer la variable en sus elementos basicos
        Elem.sNombre := '';
        Elem.sTipo   := '';
        Elem.vValor  := '';
      end;
    Result := Elem;
  end;
end;

procedure TGlobales.SetValue(Nombre: String; Valor: Variant);
var
  Indice: Integer;
begin
  // Modificar el valor de la variable de memoria especificada
  Indice := ListaGlobal.IndexOf(Nombre);
  if Indice < 0 then
  begin
    ListaGlobal.AddObject(Nombre, TVarGlobal.Create);
    Indice := ListaGlobal.IndexOf(Nombre);
  end;
  TVarGlobal(ListaGlobal.Objects[Indice]).vValor := Valor;
end;

function fechaSQL(Fecha: TDate): string;
begin
  Result := UDMConection.DateToSqlFormat(Fecha);
end;

function UltimaPK: Integer;
begin
  Result := UDMConection.LastId;
end;

procedure AplicarTema(var Ventana: TForm);
var
  i: Integer;
begin
  try
    if Assigned(FrmInicio) then
    begin
      i := 0;
      while i < Ventana.ComponentCount do
      begin
        If Ventana.Components[i].ClassType = TdxRibbon then
        begin
          TdxRibbon(Ventana.Components[i]).ColorSchemeName := FrmInicio.dxSkinController1.SkinName;
          Break;
        end;
        Inc(i);
      end;
    end;
  Except
    raise;
  end;
end;

Function GetUltimoId: Integer;
begin
  Result := UDMConection.getLastId;
end;

procedure TUDMConection.SetAutoFocus(Sender: TObject; var Key: Word;
          Shift: TShiftState);
var
  ParentClass: TWinControl;
begin
  ParentClass := TControl(Sender).Parent;

  while not (ParentClass is TForm) do
    ParentClass := ParentClass.Parent;

  if (key = VK_RETURN) or (key = VK_DOWN) then
    THackForm(ParentClass).SelectNext(TForm(ParentClass).ActiveControl as TWinControl, True, True);

  if Key = VK_UP then
    THackForm(ParentClass).SelectNext(TForm(ParentClass).ActiveControl as TWinControl, False, True);
end;

procedure AutoFocus(var Form: TForm);
var
 i: Integer;
begin
  //Para que el autofocus funciones los componentes deben tener -1 en el tag
  i:=0;
  while i < Form.ComponentCount do
  begin
    //Focus
    if Form.Components[i].tag = -1 then
      THackWinControl(Form.Components[i]).onKeyDown := UDMConection.SetAutoFocus; //Esta madre la mandé al FrmInicio

    if Form.Components[i].Tag < 0  then
    begin
      THackWinControl(Form.Components[i]).OnEnter := UDMConection.SetEnterAutoColorFocus;
      THackWinControl(Form.Components[i]).OnExit := UDMConection.setExitAutoColorFocus;
    end;
    inc(i);
  end;
end;

function imagenAStream(Img: String; var Dataset: TZQuery): TdxSmartImage;
begin
  Result := UDMConection.imgToStream(img,Dataset);
end;

procedure LlamarSubForm(clase: TComponentClass; formulario: TForm);
begin
  try
    Application.CreateForm(clase, formulario);
    formulario.FormStyle := fsNormal;
    formulario.ShowModal;
  finally

  end;
end;


//encriptar datos
function encriptar(aStr: String; aKey: Integer): String;
begin
  Result:='';
  RandSeed:=aKey;
  for aKey:=1 to Length(aStr) do
     Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

//desencriptar datos
function desencriptar(aStr: String; aKey: Integer): String;
begin
  Result:='';
  RandSeed:=aKey;
  for aKey:=1 to Length(aStr) do
     Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

end.
