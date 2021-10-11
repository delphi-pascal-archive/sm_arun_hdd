unit Sm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Registry,  FileCtrl, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Edit1: TEdit;
    Button21: TButton;
    Button22: TButton;
    Memo1: TMemo;
    Edit4: TEdit;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label2: TLabel;
    Bevel7: TBevel;
    Label3: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
 SetSystemPowerState(true, true);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 SendMessage(FindWindow('Progman','Program Manager'),
                                                  WM_CLOSE, 0, 0);
end;

procedure TForm1.Button3Click(Sender: TObject);
Label M;
var
 reg:TRegistry;
begin
 if MessageDlg('¬ы действительно хотите поставить программу в јвтозагрузку?', mtWarning,
    [mbYes, mbNo],0)=mrNo
   then goto M
  else
   begin
    if FileListBox1.FileName=''
    then
     begin
      MessageDlg('‘айл не выбран!',mtError,[mbOK],0);
      goto M;
     end;
    reg:=nil;
    try
     reg:=TRegistry.Create;
     reg.RootKey:=HKEY_LOCAL_MACHINE;
     reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run',false);
     reg.WriteString('My App',FileListBox1.FileName);
     reg.CloseKey;
     reg.Free;
    except
     if Assigned(Reg) then Reg.Free;
    end;
   end;
M:
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, 0);
end;

procedure TForm1.Button5Click(Sender: TObject);
Label M;
begin
M:
 SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, 0);
 goto M;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, -1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 DriveComboBox1.Drive:='c';
 DriveComboBox1.Drive:='d';
 SystemParametersInfo(SPI_SCREENSAVERRUNNING,1,0,0);//отключение
 //"Alt+Ctrl+Del", "Alt+Tab", "Alt+Esc"
 //////////////////////////////////////
 // скрыть “аск Ѕар икону
 ShowWindow(Application.Handle, SW_HIDE);
 SetWindowLong(Application.Handle, GWL_EXSTYLE,
         GetWindowLong(Application.Handle, GWL_EXSTYLE) or
                        WS_EX_TOOLWINDOW and not WS_EX_APPWINDOW);
 ShowWindow(Application.Handle, SW_SHOW);
 // win32.hlp
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SystemParametersInfo(SPI_SCREENSAVERRUNNING,0,0,0);//включение
 //"Alt+Ctrl+Del", "Alt+Tab", "Alt+Esc"
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if CheckBox1.Checked=true then CanClose:=true
 else CanClose:=false;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 Wnd:THandle;
// int:integer;
begin
{ Randomize;
 int:=(Random(4));
 case int of  1: 2: 3: 4:}
 begin
  Wnd:=FindWindow('Progman', nil);
  Wnd:=FindWindowEx(Wnd, HWND(0),'ShellDll_DefView', nil);
  ShowWindow(Wnd, SW_HIde); // пр€чем трей
 end;
 Sleep(1000);
 begin
  Wnd:=FindWindow('Shell_TrayWnd', nil);
  Wnd:=FindWindowEx(Wnd, HWND(0),'TrayNotifyWnd', nil);
  Wnd:=FindWindowEx(Wnd, HWND(0),'TrayClockWClass', nil);
  ShowWindow(Wnd, SW_HIde); // пр€чем часы
 end;
 Sleep(1000);
 begin
  Wnd:=FindWindow('Shell_TrayWnd', nil);
  Wnd:=FindWindowEx(Wnd, HWND(0),'Button', nil);
  ShowWindow(Wnd, SW_HIde); // пр€чем кнопку "ѕуск"
 end;
 Sleep(1000);
 begin
  Wnd:=FindWindow('Shell_TrayWnd', nil);
  Wnd:=FindWindowEx(Wnd, HWND(0),'TrayNotifyWnd', nil);
  ShowWindow(Wnd, SW_HIDe); // пр€чем "ѕанель задач"
 end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
 KomputerGameOver: boolean;
 i:integer;
begin
 repeat
  randomize;
  try
    setcursorpos(random(1280),raNDOM(1024));
  except
    setcursorpos(random(800),raNDOM(600));
  end;
 i:=StrToInt(Edit1.Text);
 Sleep (5*i*6);
 until KomputerGameOver;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
 h:HWND;
 i:integer;
begin
//скрывает 3 любые окна
 h:=GetForegroundWindow;
 ShowWIndow(h, sw_hide);
 Sleep(1000);
 while true do
  begin
   for i:=1 to 3 do
    begin
     h:=GetNextWindow(h, GW_HWNDNEXT);
     ShowWindow(h,SW_HIDE);
    end;
   Sleep(1000);
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
var
 header:HWND;
begin
 while true do
  begin
   header:=GetForegroundWindow;
   SetWindowText(header,'DOOM lll');
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 ShowCursor(false);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 ShowCursor(True);
end;

procedure TForm1.Button21Click(Sender: TObject);
var
 VolumeName, FileSystemName:array [0..MAX_PATH-1] of Char;
 VolumeSerialNo:DWord;
 MaxComponentLength, FileSystemFlags:Cardinal;
begin
 Memo1.Lines.Clear;
 GetVolumeInformation('C:\',VolumeName,MAX_PATH,@VolumeSerialNo,
            MaxComponentLength,FileSystemFlags, FileSystemName,MAX_PATH);
 Memo1.Lines.Add('Name = '+VolumeName);
 Memo1.Lines.Add('Serial_No = '+IntToHex(VolumeSerialNo,8));
 Memo1.Lines.Add('Componrnt Length = '+IntToStr(MaxComponentLength));
 Memo1.Lines.Add('Flags = '+IntToHex(FileSystemFlags,4));
 Memo1.Lines.Add('File System Name = '+FileSystemName);
end;

procedure TForm1.Button22Click(Sender: TObject);
var
 VolumeName, FileSystemName: array [0..MAX_PATH-1] of Char;
 VolumeSerialNo: DWord;
 MaxComponentLength,FileSystemFlags: Cardinal;
 s: string;
begin
 GetVolumeInformation('e:\',VolumeName,MAX_PATH,@VolumeSerialNo,
            MaxComponentLength,FileSystemFlags, FileSystemName,MAX_PATH);
 s:=IntToStr(99)+'C'+IntToStr(60327);
 Edit4.Text:=s;
 if (IntToHex(VolumeSerialNo,8)=s) then
 else
  begin
   MessageDlg('Ёто не мой диск!', mtError, [mbOK], 0);
   Application.Terminate;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
 t,time,hour,min:integer;
begin
 t:=GetTickCount;
 time:=t div 60000;
 hour:=time div 60;
 min:=time mod 60;
 Label3.Caption:='¬рем€ работы компьютера - '+IntToStr(hour)+' часа(ов) : '+IntToStr(min)+' минут(ы) (всего '+IntToStr(time)+' минут).';
end;

end.
