unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPort, ExtCtrls, ComCtrls, Buttons, TeeProcs,
  TeEngine, Chart, Series, VrControls, VrAngularMeter;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit10: TEdit;
    Edit11: TEdit;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button10: TButton;
    ComPort1: TComPort;
    ComPort2: TComPort;
    Label3: TLabel;
    Button11: TButton;
    Button12: TButton;
    Button14: TButton;
    Button13: TButton;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button15: TButton;
    GroupBox5: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Button16: TButton;
    GroupBox6: TGroupBox;
    Edit13: TEdit;
    Edit14: TEdit;
    Button17: TButton;
    ComPort3: TComPort;
    ComPort4: TComPort;
    ComPort5: TComPort;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Timer1: TTimer;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    GroupBox9: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton11: TRadioButton;
    ComPort8: TComPort;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button44: TButton;
    Button43: TButton;
    Button45: TButton;
    TrackBar1: TTrackBar;
    Panel1: TPanel;
    Label10: TLabel;
    Timer4: TTimer;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Timer5: TTimer;
    Timer8: TTimer;
    Button24: TButton;
    Button46: TButton;
    Edit12: TEdit;
    Button47: TButton;
    Timer10: TTimer;
    Label11: TLabel;
    Edit24: TEdit;
    SpeedButton1: TSpeedButton;
    Edit25: TEdit;
    Timer6: TTimer;
    Timer7: TTimer;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button48: TButton;
    VrAngularMeter1: TVrAngularMeter;
    GroupBox7: TGroupBox;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Timer2: TTimer;
    ComPort6: TComPort;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure delay(lama:Longint);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer5Timer(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  detik, detik1, detik2, detik3, detik4, detik5, detik6, detik7, detik8, detik9, detik10, detik11, detik12 : Integer;
  n : Integer;
  kanan, kiri : Boolean;
  adc, x, y, batas, pembatas : Integer;
  A : TStringList;
  z : Longint;

implementation

uses Unit2, Math, StdConvs;

//uses Unit2, Unit4;

{$R *.dfm}

procedure TForm1.delay(lama:Longint);
var ref:Longint;
begin
 ref := GetTickCount;
 Repeat Application.ProcessMessages;
 until ((GetTickCount - ref) >= lama);

end;
         
procedure TForm1.Button2Click(Sender: TObject);
begin

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;

end;

procedure TForm1.Button1Click(Sender: TObject);
var desimal, a, b, c, d, e, f, g, h, i : Integer;
vab : string;
begin

desimal := StrToInt(Edit1.Text);

if desimal > 255 then
  ShowMessage('Harus 8 bit')
else
  a := desimal div 2;
  b := a div 2;
  c := b div 2;
  d := c div 2;
  e := d div 2;
  f := e div 2;
  g := f div 2;
  h := g div 2;
//====================
  if desimal mod 2 = 0 then
    Edit9.Text := '0'
  else
    Edit9.Text := '1';
//====================
  if a mod 2 = 0 then
    Edit8.Text := '0'
  else
    Edit8.Text := '1';
//====================
  if b mod 2 = 0 then
    Edit7.Text := '0'
  else
    Edit7.Text := '1';
//====================
  if c mod 2 = 0 then
    Edit6.Text := '0'
  else
    Edit6.Text := '1';
//====================
  if d mod 2 = 0 then
    Edit5.Text := '0'
  else
    Edit5.Text := '1';
//====================
  if e mod 2 = 0 then
    Edit4.Text := '0'
  else
    Edit4.Text := '1';
//====================
  if f mod 2 = 0 then
    Edit3.Text := '0'
  else
    Edit3.Text := '1';
//====================
  if g mod 2 = 0 then
    Edit2.Text := '0'
  else
    Edit2.Text := '1';
//====================

end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin

//RadioButton1.Enabled := True;
//GroupBox1.Enabled := True;
//GroupBox2.Enabled := False;
//GroupBox3.Enabled := False;
RadioButton1.Enabled := True;
GroupBox1.Enabled := True;
GroupBox2.Enabled := False;
GroupBox3.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin

RadioButton2.Enabled := True;
GroupBox1.Enabled := False;
GroupBox2.Enabled := True;
GroupBox3.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
Edit11.Clear;
Edit13.Clear;
Edit14.Clear;

Button1.Enabled := True;
Button2.Enabled := True;
Button3.Enabled := True;
Button4.Enabled := True;
Button5.Enabled := True;
Button6.Enabled := True;
Button7.Enabled := True;
Button8.Enabled := True;
Button9.Enabled := True;
Button10.Enabled := True;
Button11.Enabled := True;
Button12.Enabled := True;
Button13.Enabled := True;
Button14.Enabled := True;
Button15.Enabled := True;
Button16.Enabled := True;
Button17.Enabled := True;
Button18.Enabled := True;
Button19.Enabled := True;
Button20.Enabled := True;
Button21.Enabled := True;
Button22.Enabled := True;
Button23.Enabled := True;
Button24.Enabled := True;
Button25.Enabled := True;
Button26.Enabled := True;
Button27.Enabled := True;

RadioButton1.Checked := False;
RadioButton2.Checked := False;
RadioButton3.Checked := False;
RadioButton4.Checked := False;
RadioButton5.Checked := False;
RadioButton6.Checked := False;
RadioButton7.Checked := False;
RadioButton8.Checked := False;

CheckBox1.Checked := False;
CheckBox2.Checked := False;
CheckBox3.Checked := False;

GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox3.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

ComPort1.ShowSetupDialog;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin

//ComPort2.ShowSetupDialog;
ComPort2.ShowSetupDialog;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

//ComPort1.Connected := True;
//Button5.Enabled := False;
//Button6.Enabled := True;
ComPort1.Connected := True;
Button5.Enabled := False;
Button6.Enabled := True;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

//ComPort1.Connected := False;
//Button5.Enabled := True;
//Button6.Enabled := False;
ComPort1.Connected := False;
Button5.Enabled := True;
Button6.Enabled := False;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin

//ComPort2.Connected := True;
//Button8.Enabled := False;
//Button9.Enabled := True;

ComPort2.Connected := True;
Button8.Enabled := False;
Button9.Enabled := True;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin

//ComPort2.Connected := False;
//Button8.Enabled := True;
//Button9.Enabled := False;

ComPort2.Connected := False;
Button8.Enabled := True;
Button9.Enabled := False;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

kanan := True;
kiri := False;
n := 0;

detik := 0;
//GroupBox1.Enabled := False;
//GroupBox2.Enabled := False;
//GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox3.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

detik := 0;
detik1 := -1;
detik2 := 10;
detik3 := 100;
detik4 := 1000;
detik5 := 10000;
detik8 := 45;
detik9 := 15;
detik10 := 60;
detik11 := 16;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin

//If CheckBox2.Checked = True then
//  repeat
//  ComPort2.WriteStr('z');
//  delay(500);
//  until CheckBox2.Checked =False or CheckBox1.Checked = False
//else if CheckBox2.Checked = False then
//  repeat
//  ComPort2.WriteStr('a');
//  delay(500);
//  until CheckBox1.Checked = False
//else if CheckBox1.Checked = True then
//  repeat
//  ComPort2.WriteStr('a');
//  delay(500);
//  until CheckBox1.Checked = False;

//If CheckBox1.Checked = False then
//  ComPort2.WriteStr('b');
//  delay(500);

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin

//If CheckBox1.Checked = True then
//  repeat
//  ComPort2.WriteStr('z');
//  delay(500);
//  until CheckBox1.Checked = False or CheckBox2.Checked = False
//else if CheckBox1.Checked = False then
//repeat
//  ComPort2.WriteStr('c');
//  delay(500);
//until CheckBox2.Checked = False
//else if CheckBox2.Checked = True then
//  repeat
//  ComPort2.WriteStr('c');
//  delay(500);
//  until CheckBox2.Checked = False;

//if CheckBox2.Checked = False then
//  ComPort2.WriteStr('b');
//  delay(500);

end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin

//if CheckBox3.Checked = True then
//  repeat
//  ComPort2.WriteStr('e');
//  delay(2000);
//  until CheckBox3.Checked = False
//else if CheckBox3.Checked = False then
//  ComPort2.WriteStr('f');
//  delay(5);

end;

procedure TForm1.Button4Click(Sender: TObject);
var str : String;

begin

//ComPort1.WriteStr('1');
//Sleep(100);
//ComPort1.ReadStr(str,255);
//Edit10.Text := str;
ComPort1.WriteStr('1');
Sleep(100);
ComPort1.ReadStr(str,255);
Edit10.Text := str;

end;

procedure TForm1.Button12Click(Sender: TObject);
var
b0,b1,b2,b3,b4,b5,b6,b7,d1 : integer;
s0,s1,s2,s3,s4,s5,s6,s7,st : string;

begin

d1:=StrtoInt(Edit10.Text);

if d1<=255 then
begin
b0:=d1 mod 2;
d1:=d1 div 2;
b1:=d1 mod 2;
d1:=d1 div 2;
b2:=d1 mod 2;
d1:=d1 div 2;
b3:=d1 mod 2;
d1:=d1 div 2;
b4:=d1 mod 2;
d1:=d1 div 2;
b5:=d1 mod 2;
d1:=d1 div 2;
b6:=d1 mod 2;
d1:=d1 div 2;
b7:=d1 mod 2;
d1:=d1 div 2;
s0:=Inttostr(b0);
s1:=Inttostr(b1);
s2:=Inttostr(b2);
s3:=Inttostr(b3);
s4:=Inttostr(b4);
s5:=Inttostr(b5);
s6:=Inttostr(b6);
s7:=Inttostr(b7);
st:=s7+s6+s5+s4+s3+s2+s1+s0;
Edit11.Text:= st;
end

end;


procedure TForm1.RadioButton3Click(Sender: TObject);
begin

RadioButton3.Enabled := True;
GroupBox3.Enabled := True;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

end;

procedure TForm1.Button11Click(Sender: TObject);
begin

Form2.show;

end;


procedure TForm1.Button14Click(Sender: TObject);
begin

Halt;

end;



procedure TForm1.Button13Click(Sender: TObject);
begin

//kombinasi
if CheckBox1.Checked = True and CheckBox2.Checked = True then
repeat
  ComPort2.WriteStr('z');
  delay(1000);
until CheckBox1.Checked = False or CheckBox2.Checked = False;

//checkbox 1
if CheckBox1.Checked = True then
repeat
  ComPort2.WriteStr('a');
  delay(1000);
until CheckBox1.Checked = False;
if CheckBox1.Checked = False then
begin
  ComPort2.WriteStr('d');
  delay(0);
end;

//checkbox 2
If CheckBox2.Checked = True then
repeat
  ComPort2.WriteStr('c');
  delay(1000);
until CheckBox2.Checked = False;
if CheckBox2.Checked = False then
begin
  ComPort2.WriteStr('b');
  delay(0)
end;

end;

procedure TForm1.Button15Click(Sender: TObject);
begin
{
if ComboBox1.ItemIndex = 0 then
begin
  if RadioButton4.Checked = True then
    ComPort3.WriteStr('a')
  else if RadioButton5.Checked = True then
    ComPort3.WriteStr('e');
end;

if ComboBox1.ItemIndex = 1 then
begin
  if RadioButton4.Checked = True then
    ComPort3.WriteStr('b')
  else if RadioButton5.Checked = True then
    ComPort3.WriteStr('e');
end;

if ComboBox1.ItemIndex = 2 then
begin
  if RadioButton4.Checked = True then
    ComPort3.WriteStr('c')
  else if RadioButton5.Checked = True then
    ComPort3.WriteStr('e');
end;

if ComboBox1.ItemIndex = 3 then
begin
  if RadioButton4.Checked = True then
    ComPort3.WriteStr('d')
  else if RadioButton5.Checked = True then
    ComPort3.WriteStr('e');
end;

end;
}

Timer5.Enabled := True;
Timer10.Enabled := False;
delay(0);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin

ComPort3.ShowSetupDialog;

end;

procedure TForm1.Button19Click(Sender: TObject);
begin

ComPort3.Connected := True;
Button19.Enabled := False;
Button20.Enabled := True;

end;

procedure TForm1.Button20Click(Sender: TObject);
begin

ComPort3.Connected := False;
Button19.Enabled := True;
Button20.Enabled := False;

end;

procedure TForm1.Button21Click(Sender: TObject);
begin

ComPort4.ShowSetupDialog;

end;

procedure TForm1.Button22Click(Sender: TObject);
begin

ComPort4.Connected := True;
Button23.Enabled := True;
Button22.Enabled := False;

end;

procedure TForm1.Button23Click(Sender: TObject);
begin

ComPort4.Connected := False;
Button23.Enabled := True;
Button22.Enabled := True;

Timer1.Enabled := False;
Shape1.Brush.Color := clBlack;
Shape2.Brush.Color := clBlack;
Shape3.Brush.Color := clBlack;

end;

procedure TForm1.Button16Click(Sender: TObject);
begin

Timer1.Enabled := True;
//Timer6.Enabled := False;
//Timer7.Enabled := False;
//ComPort4.WriteStr('f');
SpeedButton1.Enabled := False;
//delay(200);

end;

procedure SplitStr(const Source, Delimiter: String; var DelimitedList: TStringList);
var
  s: PChar;
  DelimiterIndex: Integer;
  Item: String;
begin

s := PChar(Source);

repeat
  DelimiterIndex := Pos(Delimiter, s);
  if DelimiterIndex = 0 then
  Break;
  Item := Copy(s, 1, DelimiterIndex-1);
  DelimitedList.Add(Item);

  Inc(s, DelimiterIndex + Length(Delimiter)-1);
  until DelimiterIndex = 0;
  DelimitedList.Add(s);

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
s1 : TStringList;
i, j, a, Count : Integer;
Str, time : String;
karakter : Char;
detikn, detik1, detik2, detik3 : Integer;
begin
//karakter :=' ';
//time := TimeToStr(now);
//s1 := TStringList.Create;
//ComPort4.ReadStr(Str,a);

//if(str=' ') then
//str := '0 0 0';
//begin
//SplitStr(str,karakter,s1);
//if(s1.Count <= 1) or (s1.Count <> 4) then
//Label5.Caption := ' ';
//begin
//for j := 1 to s1.Count do
//begin
//i := i + 1;
//end;
//Label5.Caption := s1[0];
//end;
//end;

//detik := detik + 1;
//if((detik>=0) and (detik<46)) then
//begin
repeat
  detik8 := detik8 - 1;
  Shape1.Brush.Color := clGreen;
  Shape2.Brush.Color := clBlack;
  Shape3.Brush.Color := clBlack;
  Timer1.Interval := 485;
  Edit25.Text := IntToStr(detik8);
until detik8 >= 0;
  if detik8 = 0 then
  begin
    detik8 := StrToInt(Edit15.Text) + 1;
    Timer1.Enabled := False;
    Timer6.Enabled := True;
    Timer7.Enabled := False;
    end;
//    Edit15.Clear;
  ComPort4.WriteStr(Edit25.Text+'a');
//else if((detik>=46) and (detik<61)) then
//begin
{repeat
  detik9 := detik9 - 1;
  Shape1.Brush.Color := clBlack;
  Shape2.Brush.Color := clYellow;
  Shape3.Brush.Color := clBlack;
  Timer1.Interval := 485;
  Edit25.Text := IntToStr(detik9);
until detik9 >= 0;
  if detik9 = 0 then
    detik9 := StrToInt(Edit16.Text) + 1;
//    Edit16.Clear;
//  ComPort4.WriteStr(Edit25.Text+'a');
end;
//else if((detik>=61) and (detik<=120)) then
//begin
repeat
  detik10 := detik10 - 1;
  Shape1.Brush.Color := clBlack;
  Shape2.Brush.Color := clBlack;
  Shape3.Brush.Color := clRed;
  Timer1.Interval := 485;
  Edit25.Text := IntToStr(detik10);
until detik10 >= 0;
  if detik10 = 0 then
    detik10 := StrToInt(Edit17.Text) + 1;
//    Edit17.Clear;
//  ComPort4.WriteStr(Edit25.Text+'a');
end;
}

//if detik = 120 then
//  detik := 0;

end;

procedure TForm1.Button24Click(Sender: TObject);
begin

Timer5.Enabled := False;
Timer10.Enabled := False;
delay(0);
//Timer6.Enabled := False;
//ComPort3.WriteStr('i');

end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin

RadioButton4.Enabled := True;
GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := True;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin

RadioButton5.Enabled := True;
GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := True;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;

end;

procedure TForm1.RadioButton8Click(Sender: TObject);
begin

RadioButton6.Enabled := True;
GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := True;
GroupBox7.Enabled := False;
GroupBox9.Enabled := False;

end;

procedure TForm1.Button25Click(Sender: TObject);
begin

ComPort5.ShowSetupDialog;

end;

procedure TForm1.Button26Click(Sender: TObject);
begin

ComPort5.Connected := True;
Button26.Enabled := False;
Button27.Enabled := True;

end;

procedure TForm1.Button27Click(Sender: TObject);
begin

ComPort5.Connected := False;
Edit13.Text := '';
Edit14.Text := '';
Button26.Enabled := True;
Button27.Enabled := True;

end;

procedure TForm1.Button17Click(Sender: TObject);
begin

//Edit13.Text + Edit14.Text := 'g';
//ComPort5.WriteStr(Edit13.Text+Edit14.Text = 'g');
//delay(200);
detik6 := StrToInt(edit14.Text);
detik7 := StrToInt(edit13.Text);
timer8.Enabled := true;

end;

procedure TForm1.Button41Click(Sender: TObject);
begin

ComPort8.ShowSetupDialog;

end;

procedure TForm1.Button42Click(Sender: TObject);
begin

ComPort8.Connected := True;

end;

procedure TForm1.Button44Click(Sender: TObject);
begin

ComPort8.Connected := False;

end;

procedure TForm1.Button37Click(Sender: TObject);
begin

ComPort8.WriteStr('F');
delay(0);

end;

procedure TForm1.Button40Click(Sender: TObject);
begin

ComPort8.WriteStr('S');
delay(0);

end;

procedure TForm1.Button36Click(Sender: TObject);
begin

ComPort8.WriteStr('G');
delay(0);

end;

procedure TForm1.Button39Click(Sender: TObject);
begin

ComPort8.WriteStr('L');
delay(0);

end;

procedure TForm1.Button38Click(Sender: TObject);
begin

ComPort8.WriteStr('R');
delay(0);

end;

procedure TForm1.Button45Click(Sender: TObject);
begin

TrackBar1.Position := TrackBar1.Position + 2;

if TrackBar1.Position = 0 then
begin
  ComPort8.WriteStr('B');
end;

if TrackBar1.Position = 2 then
begin
  ComPort8.WriteStr('C');
end;

if TrackBar1.Position = 4 then
begin
  ComPort8.WriteStr('D');
end;

if TrackBar1.Position = 6 then
begin
  ComPort8.WriteStr('E');
end;

if TrackBar1.Position = 8 then
begin
  ComPort8.WriteStr('G');
end;

end;

procedure TForm1.Button43Click(Sender: TObject);
begin

TrackBar1.Position := TrackBar1.Position - 2;

if TrackBar1.Position = 8 then
begin
  ComPort8.WriteStr('G');
end;

if TrackBar1.Position = 6 then
begin
  ComPort8.WriteStr('E');
end;

if TrackBar1.Position = 4 then
begin
  ComPort8.WriteStr('D');
end;

if TrackBar1.Position = 2 then
begin
  ComPort8.WriteStr('C');
end;

if TrackBar1.Position = 0 then
begin
  ComPort8.WriteStr('B');
end;

end;

procedure TForm1.RadioButton9Click(Sender: TObject);
begin

RadioButton8.Enabled := True;
GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := True;
GroupBox9.Enabled := False;

end;

procedure TForm1.RadioButton10Click(Sender: TObject);
begin

//RadioButton10.Enabled := True;
GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;

end;

procedure TForm1.RadioButton11Click(Sender: TObject);
begin

RadioButton11.Enabled := True;
GroupBox3.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox4.Enabled := False;
GroupBox5.Enabled := False;
GroupBox6.Enabled := False;
GroupBox7.Enabled := False;
GroupBox9.Enabled := True;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin

Label10.Left := Label10.Left + 1;
if label10.Left >= 713 then
  Label10.Left := -300;
//if kanan = True then
//  Label10.Left := Label10.Left + 5;
//if kiri = True then
//  Label10.Left := Label10.Left - 5;
//if Label10.Left = 385 then
//begin
//  kiri := True;
//  kanan := False;
//end;
//if Label10.Left = 0 then
//begin
//  kiri := False;
//  kanan := True;
//end;

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = VK_UP then
  ComPort8.WriteStr('B');
  delay(0);

if key = VK_DOWN then
  ComPort8.WriteStr('F');
  delay(0);

if key = VK_RIGHT then
  ComPort8.WriteStr('L');
  delay(0);

if key = VK_LEFT then
  ComPort8.WriteStr('R');
  delay(0);

end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin

if (ComboBox1.ItemIndex = 0) and (RadioButton5.Checked = true) then
begin
repeat
  detik2 := detik2 - 1;
until detik2 >= -1;
  if detik2 = -1 then
  begin
    detik2 := 9;
  end;
  Edit12.Text := IntToStr(detik2);
end
else if (ComboBox1.ItemIndex = 1) and (RadioButton5.Checked = true) then
begin
repeat
  detik3 := detik3 - 1;
until detik3 >= -1;
  if detik3 = -1 then
  begin
    detik3 := 99;
  end;
  Edit12.Text := IntToStr(detik3);
end
else if (ComboBox1.ItemIndex = 2) and (RadioButton5.Checked = true) then
begin
repeat
  detik4 := detik4 - 1;
until detik4 >= -1;
  if detik4 = -1 then
  begin
    detik4 := 999;
  end;
  Edit12.Text := IntToStr(detik4);
end
else if (ComboBox1.ItemIndex = 3) and (RadioButton5.Checked = true) then
begin
repeat
  detik5 := detik5 - 1;
until detik5 >= -1;
  if detik5 = -1 then
  begin
    detik5 := 9999;
  end;
  Edit12.Text := IntToStr(detik5);
end;

if (ComboBox1.ItemIndex = 0) and (RadioButton4.Checked = true) then
begin
repeat
  detik1 := detik1 + 1;
until detik1 <= 10;
  if detik1 = 10 then
  begin
    detik1 := 0;
  end;
  Edit12.Text := IntToStr(detik1);
end
else if (ComboBox1.ItemIndex = 1) and (RadioButton4.Checked = true) then
begin
repeat
  detik1 := detik1 + 1;
until detik1 <= 100;
  if detik1 = 100 then
  begin
    detik1 := 0;
  end;
  Edit12.Text := IntToStr(detik1);
end
else if (ComboBox1.ItemIndex = 2) and (RadioButton4.Checked = true) then
begin
repeat
  detik1 := detik1 + 1;
until detik1 <= 1000;
  if detik1 = 1000 then
  begin
    detik1 := 0;
  end;
  Edit12.Text := IntToStr(detik1);
end
else if (ComboBox1.ItemIndex = 3) and (RadioButton4.Checked = true) then
begin
repeat
  detik1 := detik1 + 1;
until detik1 <= 10000;
  if detik1 = 10000 then
  begin
    detik1 := 0;
  end;
  Edit12.Text := IntToStr(detik1);
end;

ComPort3.WriteStr(Edit12.Text+'a');

end;
procedure TForm1.Button46Click(Sender: TObject);
begin

Timer5.Enabled := False;
Timer10.Enabled := False;
ComPort3.WriteStr('0a');
Edit12.Text := '0';
detik1:=-1;
detik2:=10;
detik3:=100;
detik4:=1000;
detik5:=10000;
delay(0);


end;

procedure TForm1.Button47Click(Sender: TObject);
begin

Timer5.Enabled := False;
Timer10.Enabled := True;
Label11.Caption := Edit12.Text;
detik12 := strtoint(Label11.Caption);
delay(0);

end;

procedure TForm1.Timer10Timer(Sender: TObject);
begin

if (ComboBox1.ItemIndex = 0) and (RadioButton5.Checked = true) then
begin
repeat
  detik12 := detik12 - 1;
until detik12 >= -1;
  if detik12 = -1 then
  begin
    detik12 := 9;
  end;
  Edit12.Text := IntToStr(detik12);
end
else if (ComboBox1.ItemIndex = 1) and (RadioButton5.Checked = true) then
begin
repeat
  detik12 := detik12 - 1;
until detik12 >= -1;
  if detik12 = -1 then
  begin
    detik12 := 99;
  end;
  Edit12.Text := IntToStr(detik12);
end
else if (ComboBox1.ItemIndex = 2) and (RadioButton5.Checked = true) then
begin
repeat
  detik12 := detik12 - 1;
until detik12 >= -1;
  if detik12 = -1 then
  begin
    detik12 := 999;
  end;
  Edit12.Text := IntToStr(detik12);
end
else if (ComboBox1.ItemIndex = 3) and (RadioButton5.Checked = true) then
begin
repeat
  detik12 := detik12 - 1;
until detik12 >= -1;
  if detik12 = -1 then
  begin
    detik12 := 9999;
  end;
  Edit12.Text := IntToStr(detik12);
end;

if (ComboBox1.ItemIndex = 0) and (RadioButton4.Checked = true) then
begin
repeat
  detik12 := detik12 + 1;
until detik12 <= 10;
  if detik1 = 10 then
  begin
    detik12 := 0;
  end;
  Edit12.Text := IntToStr(detik12);
end
else if (ComboBox1.ItemIndex = 1) and (RadioButton4.Checked = true) then
begin
repeat
  detik12 := detik12 + 1;
until detik12 <= 100;
  if detik12 = 100 then
  begin
    detik12 := 0;
  end;
  Edit12.Text := IntToStr(detik12);
end
else if (ComboBox1.ItemIndex = 2) and (RadioButton4.Checked = true) then
begin
repeat
  detik12 := detik12 + 1;
until detik12 <= 1000;
  if detik12 = 1000 then
  begin
    detik12 := 0;
  end;
  Edit12.Text := IntToStr(detik12);
end
else if (ComboBox1.ItemIndex = 3) and (RadioButton4.Checked = true) then
begin
repeat
  detik12 := detik12 + 1;
until detik12 <= 10000;
  if detik12 = 10000 then
  begin
    detik12 := 0;
  end;
  Edit12.Text := IntToStr(detik12);
end;

ComPort3.WriteStr(Edit12.Text+'a');

end;

procedure TForm1.Timer8Timer(Sender: TObject);
var i, j, k : Integer;
begin

repeat
detik6 := detik6 + 1;
edit14.Text := IntToStr(detik6);
until detik6 <= 60;
if detik6 > 59 then
begin
detik6 := -1;
detik7 := detik7 + 1;
edit13.Text := IntToStr(detik7);
end;

if (detik7 = 59) and (detik6 >= 59) then
begin
detik6 := -1;
detik7 := 0;
edit14.Text := IntToStr(detik7);
end;

edit24.Text := edit13.Text + edit14.Text;
i := StrToInt(edit14.Text);
if (i >= 0) and (i <= 9) then
begin
edit24.Text := edit13.Text + '0' + edit14.Text;
end;

if (Edit13.Text = Edit18.Text) and (Edit14.Text = Edit19.Text) then
begin
  ShowMessage('Alarm 1 Sudah sampai');
end;

if (Edit13.Text = Edit20.Text) and (Edit14.Text = Edit21.Text) then
begin
  ShowMessage('Alarm 2 Sudah Sampai');
end;

if (Edit13.Text = Edit22.Text) and (Edit14.Text = Edit23.Text) then
begin
  ShowMessage('Alarm 3 Sudah Sampai');
end;

//if (Edit13.Text > Edit18.Text) and (Edit14.Text > Edit19.Text) then
//  ShowMessage('Waktu yang dimasukkan salah!');

ComPort5.WriteStr(Edit24.Text + 'a');

end;

procedure TForm1.Button48Click(Sender: TObject);
//var z : Integer;
begin

Timer1.Enabled := False;
Timer6.Enabled := False;
Timer7.Enabled := False;

{
//z := IntToStr(TrackBar2.Position);
edit14.Text := IntToStr(z);
if edit13.Text = '' then
begin
edit13.Text := '0';
end
else if edit14.Text = '' then
begin
edit14.Text := '0';
end;
}

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin

Button16.Enabled := True;
detik8 := StrToInt(Edit15.Text) + 1;
detik9 := StrToInt(Edit16.Text) + 1;
detik10 := StrToInt(Edit17.Text) + 1;

end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin

repeat
  detik9 := detik9 - 1;
  Shape1.Brush.Color := clBlack;
  Shape2.Brush.Color := clYellow;
  Shape3.Brush.Color := clBlack;
  Timer1.Interval := 485;
  Edit25.Text := IntToStr(detik9);
until detik9 >= 0;
  if detik9 = 0 then
  begin
    detik9 := StrToInt(Edit16.Text) + 1;
    Timer1.Enabled := False;
    Timer6.Enabled := False;
    Timer7.Enabled := True;
    end;
//    Edit16.Clear;
  ComPort4.WriteStr(Edit25.Text+'a');
end;

//end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin

repeat
  detik10 := detik10 - 1;
  Shape1.Brush.Color := clBlack;
  Shape2.Brush.Color := clBlack;
  Shape3.Brush.Color := clRed;
  Timer1.Interval := 485;
  Edit25.Text := IntToStr(detik10);
until detik10 >= 0;
  if detik10 = 0 then
  begin
    detik10 := StrToInt(Edit17.Text) + 1;
    Timer1.Enabled := True;
    Timer6.Enabled := False;
    Timer7.Enabled := False;
    end;
//    Edit17.Clear;
  ComPort4.WriteStr(Edit25.Text+'a');
end;

//end;

procedure TForm1.Button49Click(Sender: TObject);
begin

Timer1.Enabled := True;

end;

procedure TForm1.Button50Click(Sender: TObject);
begin

Timer6.Enabled := True;

end;

procedure TForm1.Button51Click(Sender: TObject);
begin

Timer7.Enabled := True;

end;

procedure split(Delimeter:Char; Input:String; const Strings:TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := Delimeter;
  Strings.DelimitedText := Input;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  data, time: String;
  NilaiSin,NilaiCos: Extended;
  g,h,n,o,p: real;
  x,y,adc,v,w: Integer;
begin
  time := TimeToStr(Now);

  ComPort6.ReadStr(data,1024);
  A := TStringList.Create;
  try
    Split(' ',data,A);
    x := StrToInt((a[0]));
    y := StrToInt((a[1]));
  finally
    A.Free;
  end;
  // Metode Fuzzy
  if x = y then
  begin
    adc := x;
  end
  else if x > y then
  begin
    adc := x;
  end
  else if x < y then
  begin
    adc := y;
  end;
  edit29.Text := IntToStr(adc);
  // End Task

    //n := StrToFloat(edit29.Text) * (1.0 / 1023.0);
      //    edit27.Text := FormatFloat('0.##',n);
    Edit27.Text := time;

    o := StrToFloat(edit29.Text) * (5.0 / 1023.0);
          edit28.Text := FormatFloat('0.##',o);
    p := StrToFloat(edit29.Text) * (270.0 / 1023.0);
          edit26.Text := FormatFloat('0.##',p);

    VrAngularMeter1.Position := StrToFloat(Edit26.Text);
    Chart1.Series[0].AddXY(z,p);
    inc(z);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var str : String;
begin


end;
{
procedure Split
 (const Delimiter: Char;    // delimiter charachter
 Input: string;             // input string
 const Strings: TStrings);  // list of string result
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := Delimiter;
  Strings.DelimitedText := Input;
end;
}

procedure TForm1.Button28Click(Sender: TObject);
begin

ComPort6.ShowSetupDialog;

end;

procedure TForm1.Button29Click(Sender: TObject);
begin

ComPort6.Connected := False;

end;

procedure TForm1.Button30Click(Sender: TObject);
begin

ComPort6.Connected := True;

end;

procedure TForm1.Button31Click(Sender: TObject);
begin

Timer2.Enabled := True;

end;

procedure TForm1.Button32Click(Sender: TObject);
begin

Timer2.Enabled := False;

end;

procedure TForm1.Button33Click(Sender: TObject);
begin

Edit26.Clear;
Edit27.Clear;
Edit28.Clear;
Edit29.Clear;
Timer2.Enabled := False;
Chart1.Series[0].Clear;
VrAngularMeter1.Position := 0;

end;

end.


