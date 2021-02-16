program Project1;

uses
  Forms,
  mainFrom in 'mainFrom.pas' {Form1},
  pkg_header in 'tcp_client\pkg_header.pas',
  pkg_sender in 'tcp_client\pkg_sender.pas',
  pkg_recv in 'tcp_client\pkg_recv.pas',
  tcp_client in 'tcp_client\tcp_client.pas',
  pkg_callback in 'tcp_client\pkg_callback.pas',
  tcp_callback in 'tcp_client\tcp_callback.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
