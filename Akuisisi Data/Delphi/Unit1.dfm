object Form1: TForm1
  Left = 137
  Top = 74
  Width = 1203
  Height = 673
  Caption = 'Akuisisi Data'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 12
    Top = 8
    Width = 138
    Height = 21
    Caption = 'AKUSISI DATA 2A'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Gill Sans MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object VrAngularMeter1: TVrAngularMeter
    Left = 856
    Top = 88
    Width = 310
    Height = 521
    MaxValue = 360.000000000000000000
    Angle = 90
    AngleOffset = 180
    LabelsFont.Charset = DEFAULT_CHARSET
    LabelsFont.Color = clWhite
    LabelsFont.Height = -11
    LabelsFont.Name = 'MS Sans Serif'
    LabelsFont.Style = []
    Caption = 'Potensiomter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 80
    Width = 345
    Height = 185
    Caption = 'Demo-Tugas Satu (Desimal - Binner)'
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Desimal'
    end
    object Label2: TLabel
      Left = 160
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Binner'
    end
    object Edit1: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 16
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 56
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 96
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 136
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 176
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 216
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 6
    end
    object Edit8: TEdit
      Left = 256
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 7
    end
    object Edit9: TEdit
      Left = 296
      Top = 104
      Width = 33
      Height = 21
      TabOrder = 8
    end
    object Button1: TButton
      Left = 96
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Covert'
      TabOrder = 9
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 176
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 10
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 280
    Width = 345
    Height = 145
    Caption = 'Demo-Tugas Dua (Binner - Desimal)'
    TabOrder = 1
    object Button3: TButton
      Left = 24
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Setting'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 24
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Read'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 248
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 248
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
    end
    object Edit10: TEdit
      Left = 112
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit11: TEdit
      Left = 112
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Button12: TButton
      Left = 136
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Covert'
      TabOrder = 6
      OnClick = Button12Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 440
    Width = 345
    Height = 169
    Caption = 'Demo-Tugas Tiga (Led Kombinasi)'
    TabOrder = 2
    object Button7: TButton
      Left = 24
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Setting'
      TabOrder = 0
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 24
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 1
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 24
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 2
      OnClick = Button9Click
    end
    object CheckBox1: TCheckBox
      Left = 128
      Top = 40
      Width = 97
      Height = 17
      Caption = 'ON/ OFF'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 128
      Top = 72
      Width = 161
      Height = 17
      Caption = 'RUNING LED KIRI KANAN'
      TabOrder = 4
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 128
      Top = 105
      Width = 177
      Height = 15
      Caption = 'RUNNING LED KANAN KIRI'
      TabOrder = 5
      OnClick = CheckBox3Click
    end
    object Button13: TButton
      Left = 24
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 6
      OnClick = Button13Click
    end
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 48
    Width = 81
    Height = 17
    Caption = 'Tugas Satu'
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 168
    Top = 48
    Width = 81
    Height = 17
    Caption = 'Tugas Dua'
    TabOrder = 4
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 312
    Top = 48
    Width = 81
    Height = 17
    Caption = 'Tugas Tiga'
    TabOrder = 5
    OnClick = RadioButton3Click
  end
  object Button10: TButton
    Left = 368
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Clear All'
    TabOrder = 6
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 240
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Tentang Kami'
    TabOrder = 7
    OnClick = Button11Click
  end
  object Button14: TButton
    Left = 160
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 8
    OnClick = Button14Click
  end
  object GroupBox4: TGroupBox
    Left = 376
    Top = 80
    Width = 249
    Height = 185
    Caption = 'Demo-Tugas Empat (Up-Down Counter)'
    TabOrder = 9
    object Label4: TLabel
      Left = 24
      Top = 24
      Width = 59
      Height = 13
      Caption = 'Pilih Counter'
    end
    object Label11: TLabel
      Left = -40
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Label11'
    end
    object ComboBox1: TComboBox
      Left = 96
      Top = 24
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '--Pilihan--'
      Items.Strings = (
        '10 (0-9)'
        '100 (0-99)'
        '1000 (0 - 999)'
        '10000 (0 - 9999)')
    end
    object RadioButton4: TRadioButton
      Left = 40
      Top = 56
      Width = 89
      Height = 17
      Caption = 'Counter Up'
      TabOrder = 1
    end
    object RadioButton5: TRadioButton
      Left = 128
      Top = 56
      Width = 89
      Height = 17
      Caption = 'Counter Down'
      TabOrder = 2
    end
    object Button15: TButton
      Left = 24
      Top = 112
      Width = 49
      Height = 25
      Caption = 'Proses'
      TabOrder = 3
      OnClick = Button15Click
    end
    object Button18: TButton
      Left = 8
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Setting'
      TabOrder = 4
      OnClick = Button18Click
    end
    object Button19: TButton
      Left = 88
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 5
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 168
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 6
      OnClick = Button20Click
    end
    object Button24: TButton
      Left = 120
      Top = 112
      Width = 49
      Height = 25
      Caption = 'Pause'
      TabOrder = 7
      OnClick = Button24Click
    end
    object Button46: TButton
      Left = 72
      Top = 112
      Width = 49
      Height = 25
      Caption = 'Reset'
      TabOrder = 8
      OnClick = Button46Click
    end
    object Edit12: TEdit
      Left = 64
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object Button47: TButton
      Left = 168
      Top = 112
      Width = 49
      Height = 25
      Caption = 'Interupt'
      TabOrder = 10
      OnClick = Button47Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 376
    Top = 280
    Width = 249
    Height = 145
    Caption = 'Demo-Tugas Lima (Traffict Light)'
    TabOrder = 10
    object Shape1: TShape
      Left = 32
      Top = 16
      Width = 41
      Height = 41
      Shape = stCircle
    end
    object Shape2: TShape
      Left = 80
      Top = 16
      Width = 41
      Height = 41
      Shape = stCircle
    end
    object Shape3: TShape
      Left = 128
      Top = 16
      Width = 41
      Height = 41
      Shape = stCircle
    end
    object SpeedButton1: TSpeedButton
      Left = 200
      Top = 80
      Width = 33
      Height = 25
      Caption = 'SET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Button16: TButton
      Left = 8
      Top = 88
      Width = 73
      Height = 25
      Caption = 'Mulai'
      TabOrder = 0
      OnClick = Button16Click
    end
    object Button21: TButton
      Left = 8
      Top = 112
      Width = 73
      Height = 25
      Caption = 'Setting'
      TabOrder = 1
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 80
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 152
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = Button23Click
    end
    object Edit15: TEdit
      Left = 32
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 4
    end
    object Edit16: TEdit
      Left = 80
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 5
    end
    object Edit17: TEdit
      Left = 128
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 6
    end
    object Edit25: TEdit
      Left = 184
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 7
    end
    object Button49: TButton
      Left = 216
      Top = 48
      Width = 17
      Height = 25
      Caption = 'M'
      TabOrder = 8
      OnClick = Button49Click
    end
    object Button50: TButton
      Left = 200
      Top = 48
      Width = 17
      Height = 25
      Caption = 'K'
      TabOrder = 9
      OnClick = Button50Click
    end
    object Button51: TButton
      Left = 184
      Top = 48
      Width = 17
      Height = 25
      Caption = 'H'
      TabOrder = 10
      OnClick = Button51Click
    end
    object Button48: TButton
      Left = 80
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 11
      OnClick = Button48Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 376
    Top = 440
    Width = 249
    Height = 169
    Caption = 'Demo-Tugas Enam (Pengaturan Jam)'
    TabOrder = 11
    object Edit24: TEdit
      Left = 248
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 12
    end
    object Edit13: TEdit
      Left = 96
      Top = 24
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object Edit14: TEdit
      Left = 128
      Top = 24
      Width = 33
      Height = 21
      TabOrder = 1
    end
    object Button17: TButton
      Left = 88
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Mulai'
      TabOrder = 2
      OnClick = Button17Click
    end
    object Button25: TButton
      Left = 8
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Setting'
      TabOrder = 3
      OnClick = Button25Click
    end
    object Button26: TButton
      Left = 88
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 4
      OnClick = Button26Click
    end
    object Button27: TButton
      Left = 168
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 5
      OnClick = Button27Click
    end
    object Edit18: TEdit
      Left = 8
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 6
    end
    object Edit19: TEdit
      Left = 40
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 7
    end
    object Edit20: TEdit
      Left = 96
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 8
    end
    object Edit21: TEdit
      Left = 128
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 9
    end
    object Edit22: TEdit
      Left = 176
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 10
    end
    object Edit23: TEdit
      Left = 208
      Top = 64
      Width = 33
      Height = 21
      TabOrder = 11
    end
  end
  object RadioButton6: TRadioButton
    Left = 464
    Top = 48
    Width = 89
    Height = 17
    Caption = 'Tugas Empat'
    TabOrder = 12
    OnClick = RadioButton6Click
  end
  object RadioButton7: TRadioButton
    Left = 616
    Top = 48
    Width = 89
    Height = 17
    Caption = 'Tugas Lima'
    TabOrder = 13
    OnClick = RadioButton7Click
  end
  object RadioButton8: TRadioButton
    Left = 768
    Top = 48
    Width = 81
    Height = 17
    Caption = 'Tugas Enam'
    TabOrder = 14
    OnClick = RadioButton8Click
  end
  object GroupBox9: TGroupBox
    Left = 640
    Top = 440
    Width = 209
    Height = 169
    Caption = 'Demo-Tugas Delapan (Robosoccer)'
    TabOrder = 15
    object Button36: TButton
      Left = 128
      Top = 24
      Width = 33
      Height = 25
      Caption = '&I'
      TabOrder = 0
      OnClick = Button36Click
    end
    object Button37: TButton
      Left = 128
      Top = 72
      Width = 33
      Height = 25
      Caption = '&K'
      TabOrder = 1
      OnClick = Button37Click
    end
    object Button38: TButton
      Left = 96
      Top = 48
      Width = 33
      Height = 25
      Caption = '&J'
      TabOrder = 2
      OnClick = Button38Click
    end
    object Button39: TButton
      Left = 160
      Top = 48
      Width = 33
      Height = 25
      Caption = '&L'
      TabOrder = 3
      OnClick = Button39Click
    end
    object Button40: TButton
      Left = 128
      Top = 48
      Width = 33
      Height = 25
      Caption = '&S'
      TabOrder = 4
      OnClick = Button40Click
    end
    object Button41: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Setting'
      TabOrder = 5
      OnClick = Button41Click
    end
    object Button42: TButton
      Left = 8
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 6
      OnClick = Button42Click
    end
    object Button44: TButton
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 7
      OnClick = Button44Click
    end
    object Button43: TButton
      Left = 160
      Top = 128
      Width = 33
      Height = 25
      Caption = '&C'
      TabOrder = 8
      OnClick = Button43Click
    end
    object Button45: TButton
      Left = 160
      Top = 104
      Width = 33
      Height = 25
      Caption = '&V'
      TabOrder = 9
      OnClick = Button45Click
    end
    object TrackBar1: TTrackBar
      Left = 8
      Top = 120
      Width = 150
      Height = 30
      LineSize = 2
      Frequency = 2
      TabOrder = 10
    end
  end
  object RadioButton9: TRadioButton
    Left = 920
    Top = 48
    Width = 89
    Height = 17
    Caption = 'Tugas Tujuh'
    TabOrder = 16
    OnClick = RadioButton9Click
  end
  object RadioButton11: TRadioButton
    Left = 1072
    Top = 48
    Width = 97
    Height = 17
    Caption = 'Tugas Delpan'
    TabOrder = 17
    OnClick = RadioButton11Click
  end
  object Panel1: TPanel
    Left = 456
    Top = 8
    Width = 713
    Height = 25
    TabOrder = 18
    object Label10: TLabel
      Left = 8
      Top = 6
      Width = 296
      Height = 13
      Caption = 'Teknik Elektro 2013 | Universitas Trunojoyo Madura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox7: TGroupBox
    Left = 640
    Top = 80
    Width = 201
    Height = 345
    Caption = 'Demo-Tugas 7 Potensiometer'
    TabOrder = 19
    object Label5: TLabel
      Left = 24
      Top = 168
      Width = 28
      Height = 13
      Caption = 'Sudut'
    end
    object Label6: TLabel
      Left = 24
      Top = 192
      Width = 48
      Height = 13
      Caption = 'Resistansi'
    end
    object Label7: TLabel
      Left = 24
      Top = 216
      Width = 49
      Height = 13
      Caption = 'Tegangan'
    end
    object Label8: TLabel
      Left = 24
      Top = 240
      Width = 22
      Height = 13
      Caption = 'ADC'
    end
    object Button28: TButton
      Left = 24
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Setting'
      TabOrder = 0
      OnClick = Button28Click
    end
    object Button29: TButton
      Left = 104
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 1
      OnClick = Button29Click
    end
    object Button30: TButton
      Left = 104
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = Button30Click
    end
    object Button31: TButton
      Left = 24
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Mulai'
      TabOrder = 3
      OnClick = Button31Click
    end
    object Button32: TButton
      Left = 104
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 4
      OnClick = Button32Click
    end
    object Button33: TButton
      Left = 24
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 5
      OnClick = Button33Click
    end
    object Edit26: TEdit
      Left = 128
      Top = 160
      Width = 49
      Height = 21
      TabOrder = 6
    end
    object Edit27: TEdit
      Left = 128
      Top = 184
      Width = 49
      Height = 21
      TabOrder = 7
    end
    object Edit28: TEdit
      Left = 128
      Top = 208
      Width = 49
      Height = 21
      TabOrder = 8
    end
    object Edit29: TEdit
      Left = 128
      Top = 232
      Width = 49
      Height = 21
      TabOrder = 9
    end
    object Chart1: TChart
      Left = 0
      Top = 16
      Width = 201
      Height = 137
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'SUDUT')
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.Maximum = 400.000000000000000000
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.Maximum = 300.000000000000000000
      Legend.Visible = False
      View3D = False
      TabOrder = 10
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        LinePen.Width = 3
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 264
    Top = 296
  end
  object ComPort2: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 248
    Top = 448
  end
  object ComPort3: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 584
    Top = 160
  end
  object ComPort4: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 520
    Top = 288
  end
  object ComPort5: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 384
    Top = 536
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 485
    OnTimer = Timer1Timer
    Left = 384
    Top = 296
  end
  object ComPort8: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 808
    Top = 448
  end
  object Timer4: TTimer
    Interval = 2
    OnTimer = Timer4Timer
    Left = 768
    Top = 8
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer5Timer
    Left = 384
    Top = 152
  end
  object Timer8: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer8Timer
    Left = 592
    Top = 528
  end
  object Timer10: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer10Timer
    Left = 408
    Top = 152
  end
  object Timer6: TTimer
    Enabled = False
    Interval = 485
    OnTimer = Timer6Timer
    Left = 384
    Top = 328
  end
  object Timer7: TTimer
    Enabled = False
    Interval = 485
    OnTimer = Timer7Timer
    Left = 384
    Top = 360
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 680
    Top = 120
  end
  object ComPort6: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 720
    Top = 120
  end
end
