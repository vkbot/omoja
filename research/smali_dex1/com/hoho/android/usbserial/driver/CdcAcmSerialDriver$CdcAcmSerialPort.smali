.class public Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdcAcmSerialPort"
.end annotation


# static fields
.field private static final GET_LINE_CODING:I = 0x21

.field private static final SEND_BREAK:I = 0x23

.field private static final SET_CONTROL_LINE_STATE:I = 0x22

.field private static final SET_LINE_CODING:I = 0x20

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_RT_ACM:I = 0x21


# instance fields
.field private mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mControlIndex:I

.field private mControlInterface:Landroid/hardware/usb/UsbInterface;

.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field private mDtr:Z

.field private mRts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 10
    .line 11
    return-void
.end method

.method private getInterfaceIdFromDescriptors()I
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_2a

    .line 14
    .line 15
    move v3, v2

    .line 16
    :goto_f
    array-length v4, v0

    .line 17
    if-ge v3, v4, :cond_2a

    .line 18
    .line 19
    aget-byte v4, v0, v3

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    if-nez v4, :cond_19

    .line 24
    .line 25
    goto :goto_2a

    .line 26
    :cond_19
    add-int v5, v3, v4

    .line 27
    .line 28
    array-length v6, v0

    .line 29
    if-le v5, v6, :cond_20

    .line 30
    .line 31
    array-length v4, v0

    .line 32
    sub-int/2addr v4, v3

    .line 33
    :cond_20
    new-array v5, v4, [B

    .line 34
    .line 35
    invoke-static {v0, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/2addr v3, v4

    .line 42
    goto :goto_f

    .line 43
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 44
    .line 45
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "USB descriptor:"

    .line 50
    .line 51
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    move v3, v2

    .line 59
    :goto_3a
    const/4 v4, 0x2

    .line 60
    const/4 v5, 0x1

    .line 61
    if-ge v3, v0, :cond_84

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    check-cast v6, [B

    .line 70
    .line 71
    iget-object v7, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 72
    .line 73
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    array-length v8, v6

    .line 78
    if-lez v8, :cond_53

    .line 79
    .line 80
    mul-int/lit8 v9, v8, 0x3

    .line 81
    .line 82
    sub-int/2addr v9, v5

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v9, v2

    .line 85
    :goto_54
    new-array v5, v9, [C

    .line 86
    .line 87
    move v9, v2

    .line 88
    move v10, v9

    .line 89
    :goto_58
    if-ge v9, v8, :cond_7b

    .line 90
    .line 91
    if-lez v9, :cond_63

    .line 92
    .line 93
    add-int/lit8 v11, v10, 0x1

    .line 94
    .line 95
    const/16 v12, 0x20

    .line 96
    .line 97
    aput-char v12, v5, v10

    .line 98
    .line 99
    move v10, v11

    .line 100
    :cond_63
    aget-byte v11, v6, v9

    .line 101
    .line 102
    add-int/lit8 v12, v10, 0x1

    .line 103
    .line 104
    ushr-int/lit8 v13, v11, 0x4

    .line 105
    .line 106
    and-int/lit8 v13, v13, 0xf

    .line 107
    .line 108
    sget-object v14, La7/a;->a:[C

    .line 109
    .line 110
    aget-char v13, v14, v13

    .line 111
    .line 112
    aput-char v13, v5, v10

    .line 113
    .line 114
    add-int/2addr v10, v4

    .line 115
    and-int/lit8 v11, v11, 0xf

    .line 116
    .line 117
    aget-char v11, v14, v11

    .line 118
    .line 119
    aput-char v11, v5, v12

    .line 120
    .line 121
    add-int/lit8 v9, v9, 0x1

    .line 122
    .line 123
    goto :goto_58

    .line 124
    :cond_7b
    new-instance v4, Ljava/lang/String;

    .line 125
    .line 126
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 127
    .line 128
    .line 129
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_3a

    .line 133
    :cond_84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/4 v3, -0x1

    .line 138
    if-lez v0, :cond_113

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, [B

    .line 145
    .line 146
    array-length v0, v0

    .line 147
    const/16 v6, 0x12

    .line 148
    .line 149
    if-ne v0, v6, :cond_113

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, [B

    .line 156
    .line 157
    aget-byte v0, v0, v5

    .line 158
    .line 159
    if-ne v0, v5, :cond_113

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, [B

    .line 166
    .line 167
    const/4 v6, 0x4

    .line 168
    aget-byte v0, v0, v6

    .line 169
    .line 170
    const/16 v7, -0x11

    .line 171
    .line 172
    if-ne v0, v7, :cond_113

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, [B

    .line 179
    .line 180
    const/4 v7, 0x5

    .line 181
    aget-byte v0, v0, v7

    .line 182
    .line 183
    if-ne v0, v4, :cond_113

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, [B

    .line 190
    .line 191
    const/4 v2, 0x6

    .line 192
    aget-byte v0, v0, v2

    .line 193
    .line 194
    if-ne v0, v5, :cond_113

    .line 195
    .line 196
    move v2, v3

    .line 197
    move v0, v5

    .line 198
    :goto_c5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-ge v0, v8, :cond_113

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, [B

    .line 209
    .line 210
    array-length v8, v8

    .line 211
    const/16 v9, 0x8

    .line 212
    .line 213
    if-ne v8, v9, :cond_110

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    check-cast v8, [B

    .line 220
    .line 221
    aget-byte v8, v8, v5

    .line 222
    .line 223
    const/16 v9, 0xb

    .line 224
    .line 225
    if-ne v8, v9, :cond_110

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    check-cast v8, [B

    .line 232
    .line 233
    aget-byte v8, v8, v6

    .line 234
    .line 235
    if-ne v8, v4, :cond_110

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    check-cast v8, [B

    .line 242
    .line 243
    aget-byte v8, v8, v7

    .line 244
    .line 245
    if-ne v8, v4, :cond_110

    .line 246
    .line 247
    add-int/lit8 v2, v2, 0x1

    .line 248
    .line 249
    iget v8, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 250
    .line 251
    if-ne v2, v8, :cond_110

    .line 252
    .line 253
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    check-cast v8, [B

    .line 258
    .line 259
    const/4 v9, 0x3

    .line 260
    aget-byte v8, v8, v9

    .line 261
    .line 262
    if-ne v8, v4, :cond_110

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, [B

    .line 269
    .line 270
    aget-byte v0, v0, v4

    .line 271
    .line 272
    return v0

    .line 273
    :cond_110
    add-int/lit8 v0, v0, 0x1

    .line 274
    .line 275
    goto :goto_c5

    .line 276
    :cond_113
    return v3
.end method

.method private openInterface()V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->getInterfaceIdFromDescriptors()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 11
    .line 12
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "interface count="

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ", IAD="

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    const/4 v3, 0x0

    .line 51
    if-ltz v0, :cond_70

    .line 52
    .line 53
    move v4, v3

    .line 54
    :goto_35
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ge v4, v5, :cond_70

    .line 61
    .line 62
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eq v6, v0, :cond_51

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    add-int/lit8 v7, v0, 0x1

    .line 79
    .line 80
    if-ne v6, v7, :cond_6d

    .line 81
    .line 82
    :cond_51
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-ne v6, v2, :cond_65

    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-ne v6, v2, :cond_65

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    iput v6, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 99
    .line 100
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 101
    .line 102
    :cond_65
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-ne v6, v1, :cond_6d

    .line 107
    .line 108
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 109
    .line 110
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_35

    .line 113
    :cond_70
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 114
    .line 115
    if-eqz v0, :cond_78

    .line 116
    .line 117
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 118
    .line 119
    if-nez v0, :cond_bf

    .line 120
    .line 121
    :cond_78
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 122
    .line 123
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v4, "no IAD fallback"

    .line 128
    .line 129
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move v0, v3

    .line 133
    move v4, v0

    .line 134
    move v5, v4

    .line 135
    :goto_86
    iget-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-ge v0, v6, :cond_bf

    .line 142
    .line 143
    iget-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 144
    .line 145
    invoke-virtual {v6, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-ne v7, v2, :cond_ae

    .line 154
    .line 155
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-ne v7, v2, :cond_ae

    .line 160
    .line 161
    iget v7, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 162
    .line 163
    if-ne v4, v7, :cond_ac

    .line 164
    .line 165
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    iput v7, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 170
    .line 171
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 172
    .line 173
    :cond_ac
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    :cond_ae
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-ne v7, v1, :cond_bc

    .line 180
    .line 181
    iget v7, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 182
    .line 183
    if-ne v5, v7, :cond_ba

    .line 184
    .line 185
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 186
    .line 187
    :cond_ba
    add-int/lit8 v5, v5, 0x1

    .line 188
    .line 189
    :cond_bc
    add-int/lit8 v0, v0, 0x1

    .line 190
    .line 191
    goto :goto_86

    .line 192
    :cond_bf
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 193
    .line 194
    if-eqz v0, :cond_175

    .line 195
    .line 196
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 197
    .line 198
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v4, "Control interface id "

    .line 205
    .line 206
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 210
    .line 211
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 226
    .line 227
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_16f

    .line 235
    .line 236
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    const/16 v1, 0x80

    .line 249
    .line 250
    if-ne v0, v1, :cond_169

    .line 251
    .line 252
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    const/4 v5, 0x3

    .line 259
    if-ne v0, v5, :cond_169

    .line 260
    .line 261
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 262
    .line 263
    if-eqz v0, :cond_163

    .line 264
    .line 265
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 266
    .line 267
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v6, "data interface id "

    .line 274
    .line 275
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v6, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 279
    .line 280
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 295
    .line 296
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 297
    .line 298
    invoke-virtual {v0, v5, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_15d

    .line 303
    .line 304
    :goto_12f
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-ge v3, v0, :cond_15c

    .line 311
    .line 312
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-ne v4, v1, :cond_14b

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-ne v4, v2, :cond_14b

    .line 329
    .line 330
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 331
    .line 332
    :cond_14b
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-nez v4, :cond_159

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-ne v4, v2, :cond_159

    .line 343
    .line 344
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 345
    .line 346
    :cond_159
    add-int/lit8 v3, v3, 0x1

    .line 347
    .line 348
    goto :goto_12f

    .line 349
    :cond_15c
    return-void

    .line 350
    :cond_15d
    const-string v0, "Could not claim data interface"

    .line 351
    .line 352
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :cond_163
    const-string v0, "No data interface"

    .line 357
    .line 358
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :cond_169
    const-string v0, "Invalid control endpoint"

    .line 363
    .line 364
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_16f
    const-string v0, "Could not claim control interface"

    .line 369
    .line 370
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_175
    const-string v0, "No control interface"

    .line 375
    .line 376
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    return-void
.end method

.method private openSingleInterface()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6a

    .line 30
    .line 31
    :goto_1e
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ge v0, v1, :cond_5f

    .line 38
    .line 39
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v3, 0x80

    .line 50
    .line 51
    if-ne v2, v3, :cond_3e

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v4, 0x3

    .line 58
    if-ne v2, v4, :cond_3e

    .line 59
    .line 60
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 61
    .line 62
    goto :goto_5c

    .line 63
    :cond_3e
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v4, 0x2

    .line 68
    if-ne v2, v3, :cond_4e

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ne v2, v4, :cond_4e

    .line 75
    .line 76
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 77
    .line 78
    goto :goto_5c

    .line 79
    :cond_4e
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_5c

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ne v2, v4, :cond_5c

    .line 90
    .line 91
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 92
    .line 93
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1e

    .line 96
    :cond_5f
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 97
    .line 98
    if-eqz v0, :cond_64

    .line 99
    .line 100
    return-void

    .line 101
    :cond_64
    const-string v0, "No control endpoint"

    .line 102
    .line 103
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6a
    const-string v0, "Could not claim shared control/data interface"

    .line 108
    .line 109
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private sendAcmControlMessage(II[B)I
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget v4, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlIndex:I

    .line 4
    .line 5
    if-eqz p3, :cond_9

    .line 6
    .line 7
    array-length v1, p3

    .line 8
    :goto_7
    move v6, v1

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    goto :goto_7

    .line 12
    :goto_b
    const/16 v7, 0x1388

    .line 13
    .line 14
    const/16 v1, 0x21

    .line 15
    .line 16
    move v2, p1

    .line 17
    move v3, p2

    .line 18
    move-object v5, p3

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ltz p1, :cond_19

    .line 24
    .line 25
    return p1

    .line 26
    :cond_19
    const-string p1, "controlTransfer failed"

    .line 27
    .line 28
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method private setDtrRts()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 9
    .line 10
    or-int/2addr v0, v1

    .line 11
    const/16 v1, 0x22

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v1, v0, v2}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public closeInt()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    .line 13
    .line 14
    .line 15
    :catch_e
    return-void
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .registers 3
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
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 8
    .line 9
    if-eqz v1, :cond_f

    .line 10
    .line 11
    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_f
    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 17
    .line 18
    if-eqz v1, :cond_18

    .line 19
    .line 20
    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_18
    return-object v0
.end method

.method public getDTR()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRTS()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 2
    .line 3
    sget-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public openInt()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 2
    .line 3
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "interfaces:"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_c
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_2a

    .line 20
    .line 21
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 22
    .line 23
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_c

    .line 43
    :cond_2a
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    if-ne v0, v2, :cond_3e

    .line 49
    .line 50
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "device might be castrated ACM device, trying single interface logic"

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->openSingleInterface()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    # getter for: Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "trying default interface logic"

    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->openInterface()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public setBreak(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const p1, 0xffff

    .line 4
    .line 5
    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    const/4 v0, 0x0

    .line 9
    const/16 v1, 0x23

    .line 10
    .line 11
    invoke-direct {p0, v1, p1, v0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setDTR(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setParameters(IIII)V
    .registers 15

    .line 1
    if-lez p1, :cond_75

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-lt p2, v0, :cond_6b

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-gt p2, v1, :cond_6b

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq p3, v4, :cond_21

    .line 15
    .line 16
    if-eq p3, v3, :cond_1f

    .line 17
    .line 18
    if-ne p3, v2, :cond_15

    .line 19
    .line 20
    move p3, v4

    .line 21
    goto :goto_22

    .line 22
    :cond_15
    const-string p1, "Invalid stop bits: "

    .line 23
    .line 24
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    move p3, v3

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move p3, v1

    .line 35
    :goto_22
    const/4 v5, 0x4

    .line 36
    if-eqz p4, :cond_3f

    .line 37
    .line 38
    if-eq p4, v4, :cond_3d

    .line 39
    .line 40
    if-eq p4, v3, :cond_3b

    .line 41
    .line 42
    if-eq p4, v2, :cond_39

    .line 43
    .line 44
    if-ne p4, v5, :cond_2f

    .line 45
    .line 46
    move p4, v5

    .line 47
    goto :goto_40

    .line 48
    :cond_2f
    const-string p1, "Invalid parity: "

    .line 49
    .line 50
    invoke-static {p4, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    move p4, v2

    .line 59
    goto :goto_40

    .line 60
    :cond_3b
    move p4, v3

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    move p4, v4

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move p4, v1

    .line 65
    :goto_40
    and-int/lit16 v6, p1, 0xff

    .line 66
    .line 67
    int-to-byte v6, v6

    .line 68
    shr-int/lit8 v7, p1, 0x8

    .line 69
    .line 70
    and-int/lit16 v7, v7, 0xff

    .line 71
    .line 72
    int-to-byte v7, v7

    .line 73
    shr-int/lit8 v8, p1, 0x10

    .line 74
    .line 75
    and-int/lit16 v8, v8, 0xff

    .line 76
    .line 77
    int-to-byte v8, v8

    .line 78
    shr-int/lit8 p1, p1, 0x18

    .line 79
    .line 80
    and-int/lit16 p1, p1, 0xff

    .line 81
    .line 82
    int-to-byte p1, p1

    .line 83
    int-to-byte p2, p2

    .line 84
    const/4 v9, 0x7

    .line 85
    new-array v9, v9, [B

    .line 86
    .line 87
    aput-byte v6, v9, v1

    .line 88
    .line 89
    aput-byte v7, v9, v4

    .line 90
    .line 91
    aput-byte v8, v9, v3

    .line 92
    .line 93
    aput-byte p1, v9, v2

    .line 94
    .line 95
    aput-byte p3, v9, v5

    .line 96
    .line 97
    aput-byte p4, v9, v0

    .line 98
    .line 99
    const/4 p1, 0x6

    .line 100
    aput-byte p2, v9, p1

    .line 101
    .line 102
    const/16 p1, 0x20

    .line 103
    .line 104
    invoke-direct {p0, p1, v1, v9}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6b
    const-string p1, "Invalid data bits: "

    .line 109
    .line 110
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_75
    const-string p2, "Invalid baud rate: "

    .line 119
    .line 120
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public setRTS(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
