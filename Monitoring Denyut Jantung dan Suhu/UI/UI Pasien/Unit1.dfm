object Form1: TForm1
  Left = 146
  Top = 55
  ClientHeight = 706
  ClientWidth = 1354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 1120
    Top = 64
    Width = 54
    Height = 19
    Caption = 'Label1'
  end
  object PageControl1: TPageControl
    Left = -5
    Top = 8
    Width = 929
    Height = 697
    ActivePage = Monitor
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Monitor: TTabSheet
      AlignWithMargins = True
      Caption = 'Monitor'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      ParentFont = False
      object Chart1: TChart
        Left = -9
        Top = -48
        Width = 921
        Height = 545
        LeftWall.Color = clBlack
        Legend.Visible = False
        RightWall.Color = clBlack
        Title.Font.Color = clWhite
        Title.Font.Shadow.Color = clBlack
        Title.Text.Strings = (
          'BPM - IBI - SINYAL - SUHU')
        BottomAxis.Labels = False
        BottomAxis.LabelsFormat.Visible = False
        LeftAxis.Grid.Color = clBlack
        LeftAxis.Labels = False
        LeftAxis.LabelsFormat.Visible = False
        Shadow.Color = 10658466
        Shadow.Transparency = 56
        View3D = False
        View3DOptions.Orthogonal = False
        Color = clDefault
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 11
        object Series1: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series2: TLineSeries
          SeriesColor = clLime
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series4: TLineSeries
          SeriesColor = clYellow
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 522
        Width = 227
        Height = 137
        Caption = 'BPM'
        Color = clNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 182
          Top = 6
          Width = 36
          Height = 19
          Caption = 'BPM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel2: TPanel
        Left = 222
        Top = 522
        Width = 227
        Height = 137
        Caption = 'IBI'
        Color = clNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object Label3: TLabel
          Left = 196
          Top = 6
          Width = 23
          Height = 19
          Caption = 'IBI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel3: TPanel
        Left = 447
        Top = 522
        Width = 227
        Height = 137
        Caption = 'SINYAL'
        Color = clNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object Label4: TLabel
          Left = 180
          Top = 6
          Width = 41
          Height = 19
          Caption = 'Sinyal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clLime
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 674
        Top = 522
        Width = 239
        Height = 137
        Caption = 'SUHU'
        Color = clNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          Left = 200
          Top = 6
          Width = 33
          Height = 19
          Caption = 'Suhu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Left = 143
        Top = 491
        Width = 769
        Height = 32
        Caption = 'Keputusan'
        Color = clNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
      end
      object Panel6: TPanel
        Left = 0
        Top = 492
        Width = 72
        Height = 31
        Caption = 'Nyalakan'
        Color = clDefault
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        OnClick = Panel6Click
      end
      object Panel7: TPanel
        Left = 72
        Top = 491
        Width = 72
        Height = 31
        Caption = 'Bantuan'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        OnClick = Panel7Click
      end
    end
  end
  object PageControl2: TPageControl
    Left = 926
    Top = 3
    Width = 427
    Height = 702
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Data'
      object DBGrid1: TDBGrid
        Left = -1
        Top = 0
        Width = 417
        Height = 673
        Color = clWhite
        DataSource = DataSource1
        FixedColor = clBtnHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = [fsBold]
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer1Timer
    Left = 402
    Top = 104
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer2Timer
    Left = 434
    Top = 104
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer3Timer
    Left = 466
    Top = 104
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer4Timer
    Left = 498
    Top = 104
  end
  object NetHTTPClient1: TNetHTTPClient
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 290
    Top = 120
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=S:\De' +
      'lphi\UI\DB.bpm_ibi_signal_temperature\Databasebaru1.mdb;Mode=Sha' +
      're Deny None;Persist Security Info=False;Jet OLEDB:System databa' +
      'se="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";' +
      'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OL' +
      'EDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions' +
      '=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Da' +
      'tabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Co' +
      'py Locale on Compact=False;Jet OLEDB:Compact Without Replica Rep' +
      'air=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 1118
    Top = 136
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tabelbaru1'
    Left = 1158
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 1198
    Top = 136
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer5Timer
    Left = 1078
    Top = 240
  end
  object Timer6: TTimer
    OnTimer = Timer6Timer
    Left = 1080
    Top = 392
  end
  object Timer7: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer7Timer
    Left = 637
    Top = 480
  end
end
