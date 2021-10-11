unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls,shellapi, IdAntiFreezeBase, IdAntiFreeze,RegExpr, IdAuthentication, IdHeaderList,
  Menus, ExtCtrls, Jpeg, IniFiles;

type
  TForm1 = class(TForm)
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    Image1: TImage;
    Button2: TButton;
    N4: TMenuItem;
    N5: TMenuItem;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Ini:TIniFile;

implementation

uses IdHTTPHeaderInfo, Unit2;

{$R *.dfm}

function Pars(T_, ForS, _T: string): string;
var
 a, b: integer;
begin
if (T_ <> '') and (ForS <> '') and (_T <> '') then begin
a := Pos(T_, ForS);
Result := Copy(ForS, a+Length(T_), Length(ForS));
b := Pos(_T, Result);
Result := Copy(Result, 1, b-1);
end
 else
Result := 'NOT STR';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
str:TStringList;
s,st:string;
st1:string[20];
i,j:integer;
Stream, Stream2:TStream;
jpg:TJPEGImage;
begin
try
  st1:='';
  str:=TStringList.Create;
  str.Clear;
  str.Add('url='+Edit1.Text);
  IdHTTP1.Post('http://pr-cy.ru/analysis/?',str);
  s:=IdHTTP1.Get('http://pr-cy.ru/analysis/?url='+Edit1.Text);
  Memo1.Text:=s;
  if pos('<td width="25%" align="right" bgcolor="#eef2f5">',Memo1.Text)<>0 then
   begin
    Memo1.HideSelection:=false;
    Memo1.SelStart:=pos('<td width="25%" align="right" bgcolor="#eef2f5">',Memo1.Text)-1;
    Memo1.SelLength:=length('<td width="25%" align="right" bgcolor="#eef2f5">');
   end;
  Memo1.CutToClipboard;
  st:=pars('<td width="25%" align="right" bgcolor="#eef2f5">',Memo1.Text,'<script type="text/javascript">');
  for i:=1 to length(st) do
   begin
    if st[i]='/' then
     j:=i;
   end;
   for i:=1 to j-1 do
    begin
     st1:=st1+st[i];
    end;
    jpg:=TJPEGImage.create;
    Stream:=TStringStream.Create(IdHTTP1.Get('http://pr-cy.ru/imagesite.php?domen='+Edit1.Text));
    jpg.LoadFromStream(Stream);
    Image1.Picture.Assign(jpg);
    Label1.Caption:='тИЦ: '+Pars('<td width="25%" align="right" bgcolor="#eef2f5">',s,'</td>');
    if Label1.Caption='' then
     Label1.Caption:='тИЦ: 0';
    Label3.Caption:='PR: '+st1;
except
 on e:Exception do
  Application.MessageBox('Нет соединение с Интернетом или прокси-сервером','Внимание',MB_OK);
end;
end;


procedure TForm1.FormCreate(Sender: TObject);
var
checked:string;
begin
   Ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'Setting.ini');
   checked:=ini.ReadString('Param','Checked','');
   if (checked='true') then
    begin
     IdHTTP1.ProxyParams.ProxyPassword:=Ini.ReadString('Param','Password','');
     IdHTTP1.ProxyParams.ProxyPort:=Ini.ReadInteger('Param','Port',0);
     IdHTTP1.ProxyParams.ProxyServer:=Ini.ReadString('Param','Server','');
     IdHTTP1.ProxyParams.ProxyUsername:=Ini.ReadString('Param','UserName','');;
     IdHTTP1.ProxyParams.BasicAuthentication:=true;
    end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
 form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
str:TStringList;
s,s1,s2:string;
begin
str:=TStringList.Create;
str.Clear;
str.Add('url='+Edit1.Text);
IdHTTP1.Post('http://tooby.ru/include/cr.php?',str);
s:=IdHTTP1.Get('http://tooby.ru/include/cr.php?url='+Edit1.Text);
s1:=Pars('<cy>',s,'</cy>');
Label1.Caption:='тИЦ: '+s1;
s2:=Pars('<pr>',s,'</pr>');
Label3.Caption:='PR: '+s2;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
ShowMessage('andrey53@uvaga.by');
end;

end.
