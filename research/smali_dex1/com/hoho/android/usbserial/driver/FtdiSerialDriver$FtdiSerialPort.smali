.class public Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FtdiSerialPort"
.end annotation


# static fields
.field private static final GET_LATENCY_TIMER_REQUEST:I = 0xa

.field private static final GET_MODEM_STATUS_REQUEST:I = 0x5

.field private static final MODEM_CONTROL_DTR_DISABLE:I = 0x100

.field private static final MODEM_CONTROL_DTR_ENABLE:I = 0x101

.field private static final MODEM_CONTROL_REQUEST:I = 0x1

.field private static final MODEM_CONTROL_RTS_DISABLE:I = 0x200

.field private static final MODEM_CONTROL_RTS_ENABLE:I = 0x202

.field private static final MODEM_STATUS_CD:I = 0x80

.field private static final MODEM_STATUS_CTS:I = 0x10

.field private static final MODEM_STATUS_DSR:I = 0x20

.field private static final MODEM_STATUS_RI:I = 0x40

.field private static final READ_HEADER_LENGTH:I = 0x2

.field private static final REQTYPE_DEVICE_TO_HOST:I = 0xc0

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x40

.field private static final RESET_ALL:I = 0x0

.field private static final RESET_PURGE_RX:I = 0x1

.field private static final RESET_PURGE_TX:I = 0x2

.field private static final RESET_REQUEST:I = 0x0

.field private static final SET_BAUD_RATE_REQUEST:I = 0x3

.field private static final SET_DATA_REQUEST:I = 0x4

.field private static final SET_FLOW_CONTROL_REQUEST:I = 0x2

.field private static final SET_LATENCY_TIMER_REQUEST:I = 0x9

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private baudRateWithPort:Z

.field private breakConfig:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 12
    .line 13
    iput p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    .line 14
    .line 15
    return-void
.end method

.method private getStatus()I
    .registers 9

    .line 1
    const/4 v6, 0x2

    .line 2
    new-array v5, v6, [B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 7
    .line 8
    add-int/lit8 v4, v1, 0x1

    .line 9
    .line 10
    const/16 v7, 0x1388

    .line 11
    .line 12
    const/16 v1, 0xc0

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v6, :cond_19

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aget-byte v0, v5, v0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_19
    const-string v1, "Get modem status failed: result="

    .line 27
    .line 28
    invoke-static {v0, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method private setBaudrate(I)V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, 0x3567e0

    .line 6
    .line 7
    .line 8
    if-gt v1, v2, :cond_de

    .line 9
    .line 10
    const v2, 0x2625a0

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-lt v1, v2, :cond_16

    .line 16
    .line 17
    const v2, 0x2dc6c0

    .line 18
    .line 19
    .line 20
    move v5, v3

    .line 21
    move v6, v5

    .line 22
    goto :goto_37

    .line 23
    :cond_16
    const v2, 0x1ab3f0

    .line 24
    .line 25
    .line 26
    if-lt v1, v2, :cond_21

    .line 27
    .line 28
    const v2, 0x1e8480

    .line 29
    .line 30
    .line 31
    move v6, v3

    .line 32
    move v5, v4

    .line 33
    goto :goto_37

    .line 34
    :cond_21
    const v2, 0x2dc6c00

    .line 35
    .line 36
    .line 37
    div-int v5, v2, v1

    .line 38
    .line 39
    add-int/2addr v5, v4

    .line 40
    shr-int/lit8 v6, v5, 0x1

    .line 41
    .line 42
    and-int/lit8 v6, v6, 0x7

    .line 43
    .line 44
    shr-int/lit8 v5, v5, 0x4

    .line 45
    .line 46
    const/16 v7, 0x3fff

    .line 47
    .line 48
    if-gt v5, v7, :cond_d8

    .line 49
    .line 50
    shl-int/lit8 v7, v5, 0x3

    .line 51
    .line 52
    add-int/2addr v7, v6

    .line 53
    div-int/2addr v2, v7

    .line 54
    add-int/2addr v2, v4

    .line 55
    shr-int/2addr v2, v4

    .line 56
    :goto_37
    int-to-double v7, v2

    .line 57
    int-to-double v9, v1

    .line 58
    div-double/2addr v7, v9

    .line 59
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 60
    .line 61
    sub-double/2addr v9, v7

    .line 62
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    const-wide v9, 0x3f9fbe76c8b43958L    # 0.031

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    cmpl-double v9, v7, v9

    .line 72
    .line 73
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 74
    .line 75
    if-gez v9, :cond_c3

    .line 76
    .line 77
    const v9, 0x8000

    .line 78
    .line 79
    .line 80
    const v12, 0xc000

    .line 81
    .line 82
    .line 83
    packed-switch v6, :pswitch_data_e4

    .line 84
    .line 85
    .line 86
    :goto_55
    move v15, v5

    .line 87
    goto :goto_6d

    .line 88
    :pswitch_57
    or-int v3, v5, v12

    .line 89
    .line 90
    :goto_59
    move v15, v3

    .line 91
    move v3, v4

    .line 92
    goto :goto_6d

    .line 93
    :pswitch_5c
    or-int v3, v5, v9

    .line 94
    .line 95
    goto :goto_59

    .line 96
    :pswitch_5f
    or-int/lit16 v3, v5, 0x4000

    .line 97
    .line 98
    goto :goto_59

    .line 99
    :pswitch_62
    or-int/lit16 v9, v5, 0x4000

    .line 100
    .line 101
    :goto_64
    move v15, v9

    .line 102
    goto :goto_6d

    .line 103
    :pswitch_66
    move v3, v4

    .line 104
    goto :goto_55

    .line 105
    :pswitch_68
    or-int/2addr v9, v5

    .line 106
    goto :goto_64

    .line 107
    :pswitch_6a
    or-int v9, v5, v12

    .line 108
    .line 109
    goto :goto_64

    .line 110
    :goto_6d
    iget-boolean v9, v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    .line 111
    .line 112
    if-eqz v9, :cond_77

    .line 113
    .line 114
    shl-int/lit8 v3, v3, 0x8

    .line 115
    .line 116
    iget v9, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 117
    .line 118
    add-int/2addr v9, v4

    .line 119
    or-int/2addr v3, v9

    .line 120
    :cond_77
    move/from16 v16, v3

    .line 121
    .line 122
    # getter for: Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->access$000()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v17

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v18

    .line 134
    mul-double/2addr v7, v10

    .line 135
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 136
    .line 137
    .line 138
    move-result-object v19

    .line 139
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v20

    .line 143
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v21

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v22

    .line 151
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v23

    .line 155
    filled-new-array/range {v17 .. v23}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "baud rate=%d, effective=%d, error=%.1f%%, value=0x%04x, index=0x%04x, divisor=%d, subdivisor=%d"

    .line 160
    .line 161
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    iget-object v12, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 169
    .line 170
    const/16 v18, 0x0

    .line 171
    .line 172
    const/16 v19, 0x1388

    .line 173
    .line 174
    const/16 v13, 0x40

    .line 175
    .line 176
    const/4 v14, 0x3

    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_b9

    .line 184
    .line 185
    return-void

    .line 186
    :cond_b9
    const-string v2, "Setting baudrate failed: result="

    .line 187
    .line 188
    invoke-static {v1, v2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_c3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 197
    .line 198
    mul-double/2addr v7, v10

    .line 199
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const-string v3, "Baud rate deviation %.1f%% is higher than allowed 3%%"

    .line 208
    .line 209
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v1

    .line 217
    :cond_d8
    const-string v1, "Baud rate to low"

    .line 218
    .line 219
    invoke-static {v1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_de
    const-string v1, "Baud rate to high"

    .line 224
    .line 225
    invoke-static {v1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_57
    .end packed-switch
.end method


# virtual methods
.method public closeInt()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    iget v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    .line 12
    .line 13
    .line 14
    :catch_d
    return-void
.end method

.method public getCD()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getCTS()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 12
    .line 13
    if-eqz v2, :cond_13

    .line 14
    .line 15
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_13
    and-int/lit8 v2, v0, 0x10

    .line 21
    .line 22
    if-eqz v2, :cond_1c

    .line 23
    .line 24
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 30
    .line 31
    if-eqz v2, :cond_25

    .line 32
    .line 33
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_25
    and-int/lit8 v2, v0, 0x20

    .line 39
    .line 40
    if-eqz v2, :cond_2e

    .line 41
    .line 42
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_2e
    and-int/lit16 v2, v0, 0x80

    .line 48
    .line 49
    if-eqz v2, :cond_37

    .line 50
    .line 51
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_37
    and-int/lit8 v0, v0, 0x40

    .line 57
    .line 58
    if-eqz v0, :cond_40

    .line 59
    .line 60
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_40
    return-object v1
.end method

.method public getDSR()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x20

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getDTR()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLatencyTimer()I
    .registers 9

    .line 1
    const/4 v6, 0x1

    .line 2
    new-array v5, v6, [B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 7
    .line 8
    add-int/lit8 v4, v1, 0x1

    .line 9
    .line 10
    const/16 v7, 0x1388

    .line 11
    .line 12
    const/16 v1, 0xc0

    .line 13
    .line 14
    const/16 v2, 0xa

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v6, :cond_1a

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    aget-byte v0, v5, v0

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1a
    const-string v1, "Get latency timer failed: result="

    .line 28
    .line 29
    invoke-static {v0, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public getRI()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x40

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getRTS()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedFlowControl()Ljava/util/EnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->NONE:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 2
    .line 3
    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->RTS_CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 4
    .line 5
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->DTR_DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 6
    .line 7
    sget-object v3, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->XON_XOFF_INLINE:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public openInt()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    iget v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_c6

    .line 17
    .line 18
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 19
    .line 20
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-lt v0, v1, :cond_c0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 34
    .line 35
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 49
    .line 50
    iget v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 63
    .line 64
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 65
    .line 66
    add-int/lit8 v7, v0, 0x1

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/16 v10, 0x1388

    .line 70
    .line 71
    const/16 v4, 0x40

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_b6

    .line 81
    .line 82
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 85
    .line 86
    if-eqz v0, :cond_5a

    .line 87
    .line 88
    const/16 v0, 0x101

    .line 89
    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    const/16 v0, 0x100

    .line 92
    .line 93
    :goto_5c
    iget-boolean v4, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 94
    .line 95
    if-eqz v4, :cond_63

    .line 96
    .line 97
    const/16 v4, 0x202

    .line 98
    .line 99
    goto :goto_65

    .line 100
    :cond_63
    const/16 v4, 0x200

    .line 101
    .line 102
    :goto_65
    or-int v6, v0, v4

    .line 103
    .line 104
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 105
    .line 106
    add-int/lit8 v7, v0, 0x1

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    const/16 v10, 0x1388

    .line 110
    .line 111
    const/16 v4, 0x40

    .line 112
    .line 113
    const/4 v5, 0x1

    .line 114
    const/4 v8, 0x0

    .line 115
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_ac

    .line 120
    .line 121
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->setFlowControl(Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_a6

    .line 133
    .line 134
    array-length v3, v0

    .line 135
    const/16 v4, 0xe

    .line 136
    .line 137
    if-lt v3, v4, :cond_a6

    .line 138
    .line 139
    const/16 v3, 0xd

    .line 140
    .line 141
    aget-byte v0, v0, v3

    .line 142
    .line 143
    const/4 v3, 0x7

    .line 144
    if-eq v0, v3, :cond_a3

    .line 145
    .line 146
    const/16 v3, 0x8

    .line 147
    .line 148
    if-eq v0, v3, :cond_a3

    .line 149
    .line 150
    const/16 v3, 0x9

    .line 151
    .line 152
    if-eq v0, v3, :cond_a3

    .line 153
    .line 154
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-le v0, v2, :cond_a2

    .line 161
    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v2, v1

    .line 164
    :cond_a3
    :goto_a3
    iput-boolean v2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    .line 165
    .line 166
    return-void

    .line 167
    :cond_a6
    const-string v0, "Could not get device descriptors"

    .line 168
    .line 169
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_ac
    const-string v1, "Init RTS,DTR failed: result="

    .line 174
    .line 175
    invoke-static {v0, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_b6
    const-string v1, "Reset failed: result="

    .line 184
    .line 185
    invoke-static {v0, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_c0
    const-string v0, "Not enough endpoints"

    .line 194
    .line 195
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_c6
    const-string v0, "Could not claim interface "

    .line 200
    .line 201
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 202
    .line 203
    invoke-static {v1, v0}, Ln0/b;->y(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public purgeHwBuffers(ZZ)V
    .registers 11

    .line 1
    if-eqz p1, :cond_21

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 6
    .line 7
    add-int/lit8 v4, p1, 0x1

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/16 v7, 0x1388

    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_17

    .line 22
    .line 23
    goto :goto_21

    .line 24
    :cond_17
    const-string p2, "Purge write buffer failed: result="

    .line 25
    .line 26
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    :goto_21
    if-eqz p2, :cond_41

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 37
    .line 38
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 39
    .line 40
    add-int/lit8 v4, p1, 0x1

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/16 v7, 0x1388

    .line 44
    .line 45
    const/16 v1, 0x40

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_38

    .line 55
    .line 56
    goto :goto_41

    .line 57
    :cond_38
    const-string p2, "Purge read buffer failed: result="

    .line 58
    .line 59
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    :goto_41
    return-void
.end method

.method public read([BI)I
    .registers 5

    .line 79
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_a

    .line 80
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->read([BII)I

    move-result p1

    return p1

    .line 81
    :cond_a
    const-string p1, "Read buffer too small"

    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public read([BII)I
    .registers 11

    .line 1
    const/4 v0, 0x2

    .line 2
    if-le p2, v0, :cond_47

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p3, :cond_3b

    .line 10
    .line 11
    invoke-static {}, La7/a;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    int-to-long v3, p3

    .line 16
    add-long/2addr v1, v3

    .line 17
    :cond_10
    invoke-static {}, La7/a;->a()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    sub-long v3, v1, v3

    .line 22
    .line 23
    long-to-int p3, v3

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-super {p0, p1, p2, p3, v4}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BIIZ)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-ne p3, v0, :cond_2b

    .line 35
    .line 36
    invoke-static {}, La7/a;->a()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    cmp-long v5, v5, v1

    .line 41
    .line 42
    if-ltz v5, :cond_10

    .line 43
    .line 44
    :cond_2b
    if-gtz p3, :cond_42

    .line 45
    .line 46
    invoke-static {}, La7/a;->a()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    cmp-long p2, v5, v1

    .line 51
    .line 52
    if-gez p2, :cond_36

    .line 53
    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v3, v4

    .line 56
    :goto_37
    invoke-virtual {p0, v3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_42

    .line 60
    :cond_3b
    invoke-super {p0, p1, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BII)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eq v1, v0, :cond_3b

    .line 65
    .line 66
    move p3, v1

    .line 67
    :cond_42
    :goto_42
    invoke-virtual {p0, p1, p3}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->readFilter([BI)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_47
    const-string p1, "Read length too small"

    .line 73
    .line 74
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    return p1
.end method

.method public readFilter([BI)I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v1, p2, :cond_22

    .line 10
    .line 11
    add-int v3, v1, v0

    .line 12
    .line 13
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    add-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    sub-int/2addr v4, v1

    .line 20
    if-ltz v4, :cond_1b

    .line 21
    .line 22
    invoke-static {p1, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    add-int/2addr v2, v4

    .line 26
    move v1, v3

    .line 27
    goto :goto_8

    .line 28
    :cond_1b
    const-string p1, "Expected at least 2 bytes"

    .line 29
    .line 30
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_22
    return v2
.end method

.method public setBreak(Z)V
    .registers 11

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    or-int/lit16 v0, v0, 0x4000

    .line 6
    .line 7
    :cond_6
    move v4, v0

    .line 8
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 11
    .line 12
    add-int/lit8 v5, p1, 0x1

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x1388

    .line 16
    .line 17
    const/16 v2, 0x40

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1b

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    const-string v0, "Setting BREAK failed: result="

    .line 29
    .line 30
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setDTR(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    const/16 v1, 0x101

    .line 6
    .line 7
    :goto_6
    move v3, v1

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    const/16 v1, 0x100

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :goto_b
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 13
    .line 14
    add-int/lit8 v4, v1, 0x1

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/16 v7, 0x1388

    .line 18
    .line 19
    const/16 v1, 0x40

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1f

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    const-string p1, "Set DTR failed: result="

    .line 33
    .line 34
    invoke-static {v0, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setFlowControl(Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;)V
    .registers 14

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    sget-object v2, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$1;->$SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    aget v2, v2, v3

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v2, v1, :cond_1c

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v2, v1, :cond_26

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v2, v1, :cond_23

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v2, v1, :cond_1f

    .line 24
    .line 25
    or-int/lit16 v0, v0, 0x400

    .line 26
    .line 27
    const/16 v3, 0x1311

    .line 28
    .line 29
    :cond_1c
    :goto_1c
    move v8, v0

    .line 30
    move v7, v3

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    invoke-static {}, Landroidx/navigation/b;->a()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    or-int/lit16 v0, v0, 0x200

    .line 37
    .line 38
    goto :goto_1c

    .line 39
    :cond_26
    or-int/lit16 v0, v0, 0x100

    .line 40
    .line 41
    goto :goto_1c

    .line 42
    :goto_29
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/16 v11, 0x1388

    .line 46
    .line 47
    const/16 v5, 0x40

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3b

    .line 56
    .line 57
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    const-string p1, "Set flow control failed: result="

    .line 61
    .line 62
    invoke-static {v0, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setLatencyTimer(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 4
    .line 5
    add-int/lit8 v4, v1, 0x1

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v7, 0x1388

    .line 9
    .line 10
    const/16 v1, 0x40

    .line 11
    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    move v3, p1

    .line 16
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_16

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    const-string v0, "Set latency timer failed: result="

    .line 24
    .line 25
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setParameters(IIII)V
    .registers 15

    .line 1
    if-lez p1, :cond_83

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->setBaudrate(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    if-eq p2, p1, :cond_79

    .line 8
    .line 9
    const/4 p1, 0x6

    .line 10
    if-eq p2, p1, :cond_79

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    if-eq p2, p1, :cond_1d

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-ne p2, p1, :cond_13

    .line 18
    .line 19
    goto :goto_1d

    .line 20
    :cond_13
    const-string p1, "Invalid data bits: "

    .line 21
    .line 22
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    :goto_1d
    const/4 p1, 0x3

    .line 31
    const/4 v0, 0x2

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz p4, :cond_40

    .line 34
    .line 35
    if-eq p4, v1, :cond_3e

    .line 36
    .line 37
    if-eq p4, v0, :cond_3b

    .line 38
    .line 39
    if-eq p4, p1, :cond_38

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    if-ne p4, v2, :cond_2e

    .line 43
    .line 44
    or-int/lit16 p2, p2, 0x400

    .line 45
    .line 46
    goto :goto_40

    .line 47
    :cond_2e
    const-string p1, "Invalid parity: "

    .line 48
    .line 49
    invoke-static {p4, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    or-int/lit16 p2, p2, 0x300

    .line 58
    .line 59
    goto :goto_40

    .line 60
    :cond_3b
    or-int/lit16 p2, p2, 0x200

    .line 61
    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    or-int/lit16 p2, p2, 0x100

    .line 64
    .line 65
    :cond_40
    :goto_40
    if-eq p3, v1, :cond_58

    .line 66
    .line 67
    if-eq p3, v0, :cond_56

    .line 68
    .line 69
    if-eq p3, p1, :cond_50

    .line 70
    .line 71
    const-string p1, "Invalid stop bits: "

    .line 72
    .line 73
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    const-string p1, "Unsupported stop bits: 1.5"

    .line 82
    .line 83
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_56
    or-int/lit16 p2, p2, 0x1000

    .line 88
    .line 89
    :cond_58
    move v5, p2

    .line 90
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 91
    .line 92
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 93
    .line 94
    add-int/lit8 v6, p1, 0x1

    .line 95
    .line 96
    const/4 v8, 0x0

    .line 97
    const/16 v9, 0x1388

    .line 98
    .line 99
    const/16 v3, 0x40

    .line 100
    .line 101
    const/4 v4, 0x4

    .line 102
    const/4 v7, 0x0

    .line 103
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_6f

    .line 108
    .line 109
    iput v5, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    const-string p2, "Setting parameters failed: result="

    .line 113
    .line 114
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_79
    const-string p1, "Unsupported data bits: "

    .line 123
    .line 124
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_83
    const-string p2, "Invalid baud rate: "

    .line 133
    .line 134
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public setRTS(Z)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    const/16 v1, 0x202

    .line 6
    .line 7
    :goto_6
    move v3, v1

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    const/16 v1, 0x200

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :goto_b
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 13
    .line 14
    add-int/lit8 v4, v1, 0x1

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/16 v7, 0x1388

    .line 18
    .line 19
    const/16 v1, 0x40

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1f

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    const-string p1, "Set DTR failed: result="

    .line 33
    .line 34
    invoke-static {v0, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
