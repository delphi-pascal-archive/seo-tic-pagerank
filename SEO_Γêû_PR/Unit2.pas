unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IniFiles;

type
  TForm2 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    Button2: TButton;
    procedure CheckBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Ini:TIniFile;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then
 begin
  Edit3.Enabled:=True;
  Edit4.Enabled:=true;
 end
else
 begin
  Edit3.Enabled:=false;
  Edit4.Enabled:=false;
 end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'Setting.ini');
if CheckBox1.Checked then
 begin
  Edit1.Enabled:=true;
  Edit2.Enabled:=true;
  if (Edit3.Enabled=true) and (Edit4.Enabled=true) then
   begin
    Form1.IdHTTP1.ProxyParams.ProxyPassword:=Edit4.Text;
    Form1.IdHTTP1.ProxyParams.ProxyServer:=Edit1.Text;
    Form1.IdHTTP1.ProxyParams.ProxyUsername:=Edit3.Text;
    form1.IdHTTP1.ProxyParams.ProxyPort:=StrToInt(Edit2.Text);
    form1.IdHTTP1.ProxyParams.BasicAuthentication:=true;
    Ini.WriteString('Param','Server',Edit1.Text);
    Ini.WriteInteger('Param','Port',StrToInt(Edit2.Text));
    Ini.WriteString('Param','UserName',Edit3.Text);
    Ini.WriteString('Param','Passeord',Edit4.Text);
    Ini.WriteString('Param','Checked','true');
   end
  else
   begin
    Form1.IdHTTP1.ProxyParams.ProxyPassword:='';
    Form1.IdHTTP1.ProxyParams.ProxyServer:=Edit1.Text;
    Form1.IdHTTP1.ProxyParams.ProxyUsername:='';
    form1.IdHTTP1.ProxyParams.ProxyPort:=StrToInt(Edit2.Text);
    form1.IdHTTP1.ProxyParams.BasicAuthentication:=true;
    Ini.WriteString('Param','Server',Edit1.Text);
    Ini.WriteInteger('Param','Port',StrToInt(Edit2.Text));
    Ini.WriteString('Param','UserName','');
    Ini.WriteString('Param','Password','');
    Ini.WriteString('Param','Checked','true');
   end;
   form2.Visible:=true;
 end
else
 begin
 Edit1.Enabled:=False;
 Edit2.Enabled:=False;
 Edit3.Enabled:=false;
 Edit4.Enabled:=false;
 form1.IdHTTP1.ProxyParams.BasicAuthentication:=false;
 Ini.WriteString('Param','Checked','false');
 end;
 close;
end;

procedure TForm2.Edit1Click(Sender: TObject);
begin
if Edit1.Enabled then
 Edit1.Clear;
end;

procedure TForm2.Edit2Click(Sender: TObject);
begin
if Edit2.Enabled then
 Edit2.Clear;
end;

procedure TForm2.Edit3Click(Sender: TObject);
begin
if Edit3.Enabled then
 Edit3.Clear;
end;

procedure TForm2.Edit4Click(Sender: TObject);
begin
if Edit4.Enabled then
 Edit4.Clear;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
 begin
  Edit1.Enabled:=true;
  Edit2.Enabled:=true;
  CheckBox2.Enabled:=true;
 end
else
 begin
  Edit1.Enabled:=false;
  Edit2.Enabled:=false;
  CheckBox2.Enabled:=false;
 end;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then
 begin
  key:=#0;
  MessageBeep(MB_OK);
 end;
if length(Edit2.Text)>5 then
 begin
  key:=#0;
  MessageBeep(MB_OK);
 end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

end.
