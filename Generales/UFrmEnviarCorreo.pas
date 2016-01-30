unit UFrmEnviarCorreo;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  UConection, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMemo,
  dxSkinsdxBarPainter, dxBar, cxClasses, idSmtp, IdMessage, IdAttachmentFile,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, wsFO,  IdAttachment,
  IdSSLOpenSSLHeaders, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, UMsgBox,
  ExtCtrls, cxButtons, StrUtils;

type
  TFrmEnviarCorreo = class(TForm)
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    ly1: TdxLayoutControl;
    cxTextDireccionCorreo: TcxTextEdit;
    dxlytmly1Item1: TdxLayoutItem;
    cxmMensaje: TcxMemo;
    dxlytmly1Item2: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    btnEnviar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    cxTextAsunto: TcxTextEdit;
    dxlytmly1Item3: TdxLayoutItem;
    zCorreo: TZQuery;
    btnAdjuntar: TdxBarLargeButton;
    dlgOpen1: TOpenDialog;
    pnlAdjuntos: TPanel;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAdjuntarClick(Sender: TObject);
  private
    acc: TCollection;
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    procedure ClickButton(Sender: TObject);
    Function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer): String;
    procedure drawAdjuntos(mensajeAdj: TIdMessage);
    procedure deleteAdjuntos(mensajeAdj: TIdMessage; Todos: Boolean = False);
    { Private declarations }
  public
    RutaArchivoAdjunto: string;
    { Public declarations }
  end;

var
  FrmEnviarCorreo: TFrmEnviarCorreo;

implementation

uses
  UFrmConfigCorreo;

{$R *.dfm}

procedure TFrmEnviarCorreo.btnAdjuntarClick(Sender: TObject);
var
  Archivo: string;
begin
  try
    if dlgOpen1.Execute then
    begin
      Archivo := dlgOpen1.FileName;
      if Archivo <>'' then
      begin
        if FileExists(Archivo) then
          Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, Archivo);
      end
      else
        Adjunto := nil;
    end;
  finally
    drawAdjuntos(Mensaje);
  end;
end;

procedure TFrmEnviarCorreo.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEnviarCorreo.btnEnviarClick(Sender: TObject);
var
  msg: string;
  Adjunto: string;
begin
  if Length(Trim(RutaArchivoAdjunto)) = 0 then
    Adjunto := ''
  else
    Adjunto := RutaArchivoAdjunto;

  Adjunto := RutaArchivoAdjunto;
  msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                desencriptar(zCorreo.FieldByName('Contrasena').AsString,10),
                zCorreo.FieldByName('SMTP').AsString,
                Adjunto,
                cxTextAsunto.Text,
                cxTextDireccionCorreo.Text,
                cxmMensaje.Text,
                zCorreo.FieldByName('Puerto').AsInteger);

  MsgBox.ShowModal('Aviso', msg, cmtInformation, [cMbOK]);
  Close;
end;

procedure TFrmEnviarCorreo.ClickButton(Sender: TObject);
var
  LocIndex: Integer;
begin
  try
    try
      if Assigned(TcxButton(FindComponent('cxButton_' + IntToStr(Mensaje.MessageParts.Items[tcxbutton(Sender).tag].Index)))) then
      begin
        LocIndex := Mensaje.MessageParts.Items[tcxbutton(Sender).tag].Index;
        Mensaje.MessageParts.Delete(LocIndex);
        try
          TcxButton(FindComponent('cxButton_' + IntToStr(LocIndex))).Destroy;
        except
          ;
        end;
      end;
    finally
      DrawAdjuntos(Mensaje);
    end;
  except
    ;
  end;
end;

procedure TFrmEnviarCorreo.deleteAdjuntos(mensajeAdj: TIdMessage;
  Todos: Boolean);
var
  i: Integer;
  LocIndex: Integer;
begin
  try
    i := 0;
    if Todos then
    begin
      While i < mensajeAdj.MessageParts.Count  do
      begin
        if Assigned(TcxButton(FindComponent('cxButton_' + IntToStr(mensajeAdj.MessageParts.Items[i].Index)))) then
        begin
          LocIndex := mensajeAdj.MessageParts.Items[i].Index;
          TcxButton(FindComponent('cxButton_' + IntToStr(LocIndex))).Destroy;
          //mensajeAdj.MessageParts.Delete(LocIndex);
        end;
        Inc(i);
      end;
    end
    else
      if Assigned(TcxButton(FindComponent('cxButton_' + IntToStr(mensajeAdj.MessageParts.Items[i].Index)))) then
      begin
        LocIndex := mensajeAdj.MessageParts.Items[i].Index;
        TcxButton(FindComponent('cxButton_' + IntToStr(LocIndex))).Destroy;
        mensajeAdj.MessageParts.Delete(LocIndex);
      end;
  except
    raise;
  end;
end;

procedure TFrmEnviarCorreo.drawAdjuntos(mensajeAdj: TIdMessage);
var
  i: Integer;
begin
  try
    i := 0;
    deleteAdjuntos(Mensaje, True);
    While i < mensajeAdj.MessageParts.Count  do
    begin
      Botones := TcxButton.Create(Self);
      Botones.Caption := Leftstr(Copy(mensajeAdj.MessageParts.Items[i].FileName, 0, LastDelimiter('.', mensajeAdj.MessageParts.Items[i].FileName) - 1),7) + '...';
      Botones.Name := 'cxButton_' + IntToStr(mensajeAdj.MessageParts.Items[i].Index);
      Botones.Tag := mensajeAdj.MessageParts.Items[i].Index;
      Botones.Hint := Copy(mensajeAdj.MessageParts.Items[i].FileName, 0, LastDelimiter('.', mensajeAdj.MessageParts.Items[i].FileName) - 1);
      Botones.Width := 75;
      Botones.Height := 25;
      Botones.Parent := pnlAdjuntos;
      Botones.Align := alLeft;
      Botones.AlignWithMargins := True;
      botones.OptionsImage.Images := UDMConection.cxImage16;
      Botones.OptionsImage.ImageIndex := 21;
      Botones.OnClick := ClickButton;
      Inc(i);
    end;
  except
    raise;
  end;
end;

function TFrmEnviarCorreo.EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto,
  sAsunto, sDestino, sMensaje: String; iPort: Integer): String;
var
  Cursor: TCursor;
  SMTP: TIdSMTP;
  IOHSOSSL :TIdSSLIOHandlerSocketOpenSSL;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

    IdSSLOpenSSLHeaders.Load;
    Result := 'Correo electrónico enviado.';
    IOHSOSSL := TIdSSLIOHandlerSocketOpenSSL.Create;
    IOHSOSSL.Destination := sServidor+':'+IntToStr(iPort);
    IOHSOSSL.Host := sServidor;
    IOHSOSSL.Port := iPort;
    IOHSOSSL.SSLOptions.Method := sslvTLSv1;
    IOHSOSSL.SSLOptions.VerifyMode := [];
    IOHSOSSL.SSLOptions.VerifyDepth := 0;

    SMTP := TIdSMTP.Create(nil);
    SMTP.IOHandler := IOHSOSSL;
    SMTP.Username := sUsuario;
    SMTP.Password := sClave;
    SMTP.Host := sServidor;
    SMTP.Port := iPort;
    SMTP.AuthType := satDefault;
    SMTP.UseTLS := utUseRequireTLS;

    Mensaje.From.Name := sDestino;
    Mensaje.From.Address := sDestino;
    Mensaje.Subject := sAsunto;
    Mensaje.Body.Text := sMensaje;
    Mensaje.Recipients.Add;
    Mensaje.Recipients.Items[0].Address := sDestino;

    try
      SMTP.Connect;
    except
      Result := 'Error al conectar con el servidor.';
    end;

    if SMTP.Connected then
    begin
      try
        SMTP.Send( Mensaje );
      except
        Result := 'Falló en el envio del correo electrónico.';
      end;

      try
        SMTP.Disconnect;
      except
        Result := 'Error al desconectar del servidor.';
      end;
    end;
  finally
    if Adjunto <> nil then
      FreeAndNil( Adjunto );

    FreeAndNil(Mensaje);
    FreeAndNil(SMTP);
    Screen.Cursor := Cursor;
    Self.Close;
  end;
end;

procedure TFrmEnviarCorreo.FormCreate(Sender: TObject);
begin
  if not AsignarSQL(zCorreo, 'master_configuracioncorreo', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [master_configuracioncorreo]');

  Mensaje := TIdMessage.Create(nil);
  Mensaje.Clear;
end;

procedure TFrmEnviarCorreo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  LocIdEmpresa: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      LocIdEmpresa := varGlobal.Elemento('IdEmpresa').AsString;
      if not FiltrarDataset(zCorreo, 'IdEmpresa', [LocIdEmpresa]) then
        raise Exception.Create(pErrorFiltrar + ' [master_configuracioncorreo]');

      if zCorreo.Active then
        zCorreo.Refresh
      else
        zCorreo.Open;

      if zCorreo.RecordCount = 0 then
      begin
        if MsgBox.ShowModal('Aviso', 'No hay configuración de correo definida para tu empresa. ¿Deseas configurar tu cuenta ahora?', cmtInformation, [cMbYes, cMbNo]) = mrYes then
        begin
          Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
          FrmConfigCorreo.ShowModal;
          FormShow(Sender);
        end
        else
          raise Exception.Create('***');
      end;

      if RutaArchivoAdjunto <>'' then
      begin
        if FileExists(RutaArchivoAdjunto) then
          Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
      end
      else
        Adjunto := nil;
      drawAdjuntos(Mensaje);
     // acc := TCollection.Create();
    finally
      AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      if e.Message <> '***' then
        MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);

      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
