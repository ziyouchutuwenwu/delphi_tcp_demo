unit mainFrom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSock, StdCtrls, tcp_client, tcp_callback;

type
  TForm1 = class(TForm, ITCPCallback)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    procedure onConnectButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure onDisConnectButtonClick(Sender: TObject);
  private
    { Private declarations }
    _tcpClient : TcpClient;

    // ITCPCallback = interface
    procedure onConnectStarted();
    procedure onConnected();
    procedure onDisConnected();
    procedure onFullData(data : TBytes);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.onConnectButtonClick(Sender: TObject);
begin
  _tcpClient.connect('192.168.88.234', 9999);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  dataBytes : TBytes;
begin
  dataBytes := bytesof('1234567');
  _tcpClient.send(dataBytes);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  self.Memo1.Clear;

  _tcpClient := TcpClient.Create(Form1);
  _tcpClient.setCallBack(self);
end;

procedure TForm1.onConnectStarted();
begin
  Self.Memo1.Lines.Add('正在连接服务器');
end;
procedure TForm1.onConnected();
begin
  Self.Memo1.Lines.Add('连接服务器成功');
end;

procedure TForm1.onDisConnectButtonClick(Sender: TObject);
begin
  _tcpClient.disConnect();
end;

procedure TForm1.onDisConnected();
begin
  Self.Memo1.Lines.Add('和服务器断开连接');
end;

procedure TForm1.onFullData(data : TBytes);
var
  info : string;
begin
  info := TEncoding.Default.GetString(data);
  Self.Memo1.Lines.Add(info);
end;
end.
