 unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls, System.StrUtils, System.Types, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    PageControl1: TPageControl;
    Monitor: TTabSheet;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    NetHTTPClient1: TNetHTTPClient;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Timer5: TTimer;
    Timer6: TTimer;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer7: TTimer;
    procedure delay(lama: LongInt);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  z: LongInt;
  a, x1, x2, x3, o1, o2, o3, o4, b1 : Real;
  b, y1, y2, y3, k1, k2, k3, k4, s1 : Real;

  r1, r2 : string;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.delay(lama: LongInt);
var
  reff: LongInt;
begin
  reff := GetTickCount;
  repeat
    Application.ProcessMessages;
  until ((GetTickCount-reff)>=lama);
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
  if Panel6.Caption = 'Nyalakan' then
  begin
    Panel6.Caption := 'Matikan';
    Panel6.Color := clMenuHighlight;
    Timer1.Enabled := True;
    Timer2.Enabled := True;
    Timer3.Enabled := True;
    Timer4.Enabled := True;
    Timer5.Enabled := True;
    Timer7.Enabled := True;
  end
  else if Panel6.Caption = 'Matikan' then
  begin
    if MessageDlg('Yakin Dimatikan?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Halt(0);
    end;
  end;
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
  Form2.Show;
end;

function GetURL(const AURL: string): string;
var
  HTTPClient: THTTPClient;
  HTTPResponse: IHTTPResponse;
begin
  HTTPClient := THTTPClient.Create;
  try
    HTTPResponse := HTTPClient.Get(AURL);
    Result := HTTPResponse.ContentAsString();
  finally
    HTTPClient.Free;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  split, split1: TStringDynArray;
  a, b1, c: string;
  x1: Integer;
begin
  c := GetURL('http://things.ubidots.com/api/v1.6/devices/nodemcu/BPM/values?page_size=1&token=dGcS5ePIh9CVVpdVN2IRj5uOzBOIDg');
  split := SplitString(c, ' ');
  a := split[12];
  split1 := SplitString(a, '.');
  b1 := split1[0];
  Panel1.Caption := b1;
  x1 := StrToInt(Panel1.Caption);
  Chart1.Series[3].AddXY(z, x1);
  Inc(z);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  split,split1: TStringDynArray;
  a, b, c: string;
  x: Integer;
begin
  //============================= IBI
  c := GetURL('http://things.ubidots.com/api/v1.6/devices/nodemcu/IBI/values?page_size=1&token=dGcS5ePIh9CVVpdVN2IRj5uOzBOIDg');
  split := SplitString(c, ' ');
  a := split[12];
  split1 := SplitString(a, '.');
  b := split1[0];
  Panel2.Caption := b;
  x := StrToInt(Panel2.Caption);
  Chart1.Series[0].AddXY(z, x);
  Inc(z);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var
  split, split1: TStringDynArray;
  a, b, c: string;
  x: Integer;
begin
  //============================= Signal
  c := GetURL('http://things.ubidots.com/api/v1.6/devices/nodemcu/Signal/values?page_size=1&token=dGcS5ePIh9CVVpdVN2IRj5uOzBOIDg');
  split := SplitString(c, ' ');
  a := split[12];
  split1 := SplitString(a, '.');
  b := split1[0];
  Panel3.Caption := b;
  x := StrToInt(Panel3.Caption);
  Chart1.Series[1].AddXY(z, x);
  Inc(z);
end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
  split: TStringDynArray;
  a, b1, b3, b2, c: string;
  nb, na, x1, x2, x3: Real;
begin
  //============================= Signal
  c := GetURL('http://things.ubidots.com/api/v1.6/devices/nodemcu/Suhu/values?page_size=1&token=dGcS5ePIh9CVVpdVN2IRj5uOzBOIDg');
  split := SplitString(c, ' ');
  a := split[12];

  if Copy(a, 5, 1) = '}' then
  begin
    b1 := Copy(a, 1, 4);
    Panel4.Caption := b1;
    x1 := StrToFloat(Panel4.Caption);
    Chart1.Series[2].AddXY(z, x1);
    Inc(z);
  end
  else if Copy(a, 6, 1) = '}' then
  begin
    b3 := Copy(a, 1, 5);
    na := StrToFloat(b3);
    Panel4.Caption := FloatToStr(na);;
    x3 := StrToFloat(Panel4.Caption);
    Chart1.Series[2].AddXY(z, x3);
    Inc(z);
  end
  else if Copy(a, 7, 1) = '}' then
  begin
    b2 := Copy(a, 1, 6);
    nb := StrToFloat(b2)+118.75;
    Panel4.Caption := FloatToStr(nb);
    x2 := StrToFloat(Panel4.Caption);
    Chart1.Series[2].AddXY(z, x2);
    Inc(z)
  end;

end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
  ADOTable1.Append;
  ADOTable1.FieldByName('BPM').AsString := Panel1.Caption;
  ADOTable1.FieldByName('IBI').AsString := Panel2.Caption;
  ADOTable1.FieldByName('Signal').AsString := Panel3.Caption;
  ADOTable1.FieldByName('Suhu').AsString := Panel4.Caption;
  ADOTable1.FieldByName('Jam').AsString := Label1.Caption;
  ADOTable1.FieldByName('Status').AsString := Panel5.Caption;
  ADOTable1.Post;
//  ADOTable1.Refresh;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
var
  hour, min, sec, msec: Word;
begin
  Label1.Caption := FormatDateTime('HH:MM:SS am/pm', Time);
  DecodeTime(time, hour, min, sec, msec );
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
  a := StrToFloat(Panel1.Caption);
  b := StrToFloat(Panel4.Caption);

// =========================== BPM =================== //
// Bradikardia
  if (a >= 30) and (a < 50) then
  begin
    x1 := 1;
  end
  else if (a >= 50) and (a < 80) then
  begin
    x1 := ((80 - a)/30);
  end
  else if a >= 80 then
  begin
    x1 := 0;
  end;
// Normal
  if (a < 50) or (a > 110) then
  begin
    x2 := 0;
  end
  else if (a > 50) and (a < 80) then
  begin
    x2 := ((a - 50)/30);
  end
  else if (a >= 80) and (a <= 110) then
  begin
    x2 := ((110 - a)/30);
  end;
// Takhikardia
  if a < 80 then
  begin
    x3 := 0;
  end
  else if (a > 80) and (a <= 110) then
  begin
    x3 := ((a - 80)/30);
  end
  else if (a > 110) then
  begin
    x3 := 1;
  end;
// Bradikardia - Normal - Takhikardia
  if x1 > x2 then
  begin
    r1 := 'Bradikardia';
  end
  else if x1 < x2 then
  begin
    r1 := 'Normal';
  end
  else if x2 > x3 then
  begin
    r1 := 'Normal';
  end;
  if x3 > x2 then
  begin
    r1 := 'Takhikardia';
  end;

// =========================== Suhu =================== //
// Suhu Rendah
  if (b >= 35.5) and (b < 36) then
  begin
    y1 := 1;
  end
  else if (b >= 36) and (b < 37) then
  begin
    y1 := (37 - b);
  end
  else if b >= 37 then
  begin
    y1 := 0;
  end;
// Suhu Normal
  if (b < 36) or (b > 38) then
  begin
    y2 := 0;
  end
  else if (b > 36) and (b < 37) then
  begin
    y2 := (b - 36);
  end
  else if (b >= 37) and (b <= 38) then
  begin
    y2 := (38 - b);
  end;
// Suhu Tinggi
  if b < 37 then
  begin
    y3 := 0;
  end
  else if (b > 37) and (b <= 38) then
  begin
    y3 := (b - 37);
  end
  else if b > 38 then
  begin
    y3 := 1;
  end;
//suhu rendah - suhu normal - suhu tinggi
  if y1 > y2 then
  begin
    r2 := 'Suhu Rendah';
  end
  else if y1 < y2 then
  begin
    r2 := 'Suhu Normal';
  end
  else if y2 > y3 then
  begin
    r2 := 'Suhu Normal';
  end;
  if y3 > y2 then
  begin
    r2 := 'Suhu Tinggi';
  end;

// ========================================================================== //
// ============= Keputusan Berdasarkan BPM dan Suhu  ======================== //
// ========================================================================== //

  if (r1 = 'Bradikardia') and (r2 = 'Suhu Rendah') then
  begin
    Panel5.Caption := 'Tidak Sehat'; //(Denyut Jantung < 60 dan Suhu < 36,5)';
  end
  else if (r1 = 'Bradikardia') and (r2 = 'Suhu Normal') then
  begin
    Panel5.Caption := 'Kurang Sehat'; //(Denyut Jantung < 60 dan Suhu Normal)';
  end
  else if (r1 = 'Bradikardia') and (r2 = 'Suhu Tinggi') then
  begin
    Panel5.Caption := 'Tidak Sehat'; //(Denyut Jantung < 60 dan Suhu > 37,5)';
  end
  else if (r1 = 'Normal') and (r2 = 'Suhu Rendah') then
  begin
    Panel5.Caption := 'Kurang Sehat'; //(Denyut Jantung Normal dan Suhu < 36,5)';
  end
  else if (r1 = 'Normal') and (r2 = 'Suhu Normal') then
  begin
    Panel5.Caption := 'Normal'; //(Denyut Jantung Normal dan Suhu Normal)';
  end
  else if (r1 = 'Normal') and (r2 = 'Suhu Tinggi') then
  begin
    Panel5.Caption := 'Kurang Sehat'; //(Denyut Jantung Normal dan Suhu > 37,5)';
  end
  else if (r1 = 'Takhikardia') and (r2 = 'Suhu Rendah') then
  begin
    Panel5.Caption := 'Tidak Sehat'; //(Denyut Jantung > 100 dan Suhu < 36,5)';
  end
  else if (r1 = 'Takhikardia') and (r2 = 'Suhu Normal') then
  begin
    Panel5.Caption := 'Kurang Sehat'; //(Denyut Jantung > 100 dan Suhu Normal)';
  end
  else if (r1 = 'Takhikardia') and (r2 = 'Suhu Tinggi') then
  begin
    Panel5.Caption := 'Tidak Sehat'; //(Denyut Jantung > 100 dan Suhu > 37,5)';
  end;

end;
end.
