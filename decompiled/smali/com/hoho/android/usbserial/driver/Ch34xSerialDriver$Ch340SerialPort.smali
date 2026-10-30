.class public Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ch340SerialPort"
.end annotation


# static fields
.field private static final USB_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final DEFAULT_BAUD_RATE:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x2580

    .line 7
    .line 8
    iput p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 14
    .line 15
    return-void
.end method

.method private checkState(Ljava/lang/String;II[I)V
    .locals 4

    .line 1
    array-length v0, p4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string p3, "]"

    .line 10
    .line 11
    if-ltz p2, :cond_4

    .line 12
    .line 13
    array-length v2, p4

    .line 14
    const-string v3, " ["

    .line 15
    .line 16
    if-ne p2, v2, :cond_3

    .line 17
    .line 18
    :goto_0
    array-length p2, p4

    .line 19
    if-ge v1, p2, :cond_2

    .line 20
    .line 21
    aget p2, p4, v1

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    if-ne p2, v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    aget-byte v2, v0, v1

    .line 28
    .line 29
    and-int/lit16 v2, v2, 0xff

    .line 30
    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "Expected 0x"

    .line 39
    .line 40
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aget p4, p4, v1

    .line 44
    .line 45
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p4, " byte, but get 0x"

    .line 53
    .line 54
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1, p3}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "Expected "

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    array-length p4, p4

    .line 83
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p4, " bytes, but get "

    .line 87
    .line 88
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p1, p3}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    const-string p2, "Failed send cmd ["

    .line 106
    .line 107
    invoke-static {p2, p1, p3}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private controlIn(III[B)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    array-length v6, p4

    .line 4
    const/16 v7, 0x1388

    .line 5
    .line 6
    const/16 v1, 0xc0

    .line 7
    .line 8
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private controlOut(III)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/16 v7, 0x1388

    .line 5
    .line 6
    const/16 v1, 0x40

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getStatus()B
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x95

    .line 5
    .line 6
    const/16 v2, 0x706

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    aget-byte v0, v0, v3

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    const-string v0, "Error getting control lines"

    .line 19
    .line 20
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method private initialize()V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "init #1"

    .line 8
    .line 9
    const/16 v4, 0x5f

    .line 10
    .line 11
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0xa1

    .line 15
    .line 16
    invoke-direct {p0, v2, v1, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ltz v3, :cond_2

    .line 21
    .line 22
    const/16 v3, 0x2580

    .line 23
    .line 24
    invoke-direct {p0, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 25
    .line 26
    .line 27
    const-string v4, "init #4"

    .line 28
    .line 29
    filled-new-array {v0, v1}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v5, 0x95

    .line 34
    .line 35
    const/16 v6, 0x2518

    .line 36
    .line 37
    invoke-direct {p0, v4, v5, v6, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x9a

    .line 41
    .line 42
    const/16 v4, 0xc3

    .line 43
    .line 44
    invoke-direct {p0, v1, v6, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ltz v1, :cond_1

    .line 49
    .line 50
    const-string v1, "init #6"

    .line 51
    .line 52
    filled-new-array {v0, v0}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/16 v6, 0x706

    .line 57
    .line 58
    invoke-direct {p0, v1, v5, v6, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x501f

    .line 62
    .line 63
    const v4, 0xd90a

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v2, v1, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ltz v1, :cond_0

    .line 71
    .line 72
    invoke-direct {p0, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    .line 76
    .line 77
    .line 78
    const-string v1, "init #10"

    .line 79
    .line 80
    filled-new-array {v0, v0}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p0, v1, v5, v6, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    const-string v0, "Init failed: #7"

    .line 89
    .line 90
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    const-string v0, "Init failed: #5"

    .line 95
    .line 96
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    const-string v0, "Init failed: #2"

    .line 101
    .line 102
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private setBaudRate(I)V
    .locals 9

    .line 1
    const v0, 0xe1000

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x7

    .line 7
    .line 8
    const-wide/32 v2, 0xf300

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/32 v0, 0x5b59f000

    .line 13
    .line 14
    .line 15
    int-to-long v2, p1

    .line 16
    div-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x3

    .line 18
    .line 19
    :goto_0
    const-wide/32 v4, 0xfff0

    .line 20
    .line 21
    .line 22
    cmp-long v4, v0, v4

    .line 23
    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    cmp-long v5, v2, v5

    .line 29
    .line 30
    if-lez v5, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    shr-long/2addr v0, v4

    .line 34
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    sub-long/2addr v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-gtz v4, :cond_4

    .line 39
    .line 40
    const-wide/32 v4, 0x10000

    .line 41
    .line 42
    .line 43
    sub-long v0, v4, v0

    .line 44
    .line 45
    move-wide v7, v2

    .line 46
    move-wide v2, v0

    .line 47
    move-wide v0, v7

    .line 48
    :goto_1
    const-wide/16 v4, 0x80

    .line 49
    .line 50
    or-long/2addr v0, v4

    .line 51
    const-wide/32 v4, 0xff00

    .line 52
    .line 53
    .line 54
    and-long/2addr v4, v2

    .line 55
    or-long/2addr v0, v4

    .line 56
    long-to-int v0, v0

    .line 57
    const-wide/16 v4, 0xff

    .line 58
    .line 59
    and-long v1, v2, v4

    .line 60
    .line 61
    long-to-int v1, v1

    .line 62
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->access$000()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    filled-new-array {p1, v3, v4}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v3, "baud rate=%d, 0x1312=0x%04x, 0x0f2c=0x%04x"

    .line 83
    .line 84
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const/16 p1, 0x1312

    .line 92
    .line 93
    const/16 v2, 0x9a

    .line 94
    .line 95
    invoke-direct {p0, v2, p1, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-ltz p1, :cond_3

    .line 100
    .line 101
    const/16 p1, 0xf2c

    .line 102
    .line 103
    invoke-direct {p0, v2, p1, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ltz p1, :cond_2

    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    const-string p1, "Error setting baud rate: #2"

    .line 111
    .line 112
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    const-string p1, "Error setting baud rate: #1)"

    .line 117
    .line 118
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    const-string v0, "Unsupported baud rate: "

    .line 123
    .line 124
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

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
.end method

.method private setControlLines()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/16 v2, 0x40

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v1

    .line 18
    :goto_1
    or-int/2addr v0, v2

    .line 19
    not-int v0, v0

    .line 20
    const/16 v2, 0xa4

    .line 21
    .line 22
    invoke-direct {p0, v2, v0, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ltz v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const-string v0, "Failed to set control lines"

    .line 30
    .line 31
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public closeInt()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    :cond_0
    return-void
.end method

.method public getCD()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getCTS()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

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
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    and-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    and-int/lit8 v2, v0, 0x2

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_3
    and-int/lit8 v2, v0, 0x8

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_4
    and-int/lit8 v0, v0, 0x4

    .line 57
    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getDTR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRI()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x4

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getRTS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 1
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

.method public openInt()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 19
    .line 20
    invoke-virtual {v3, v2, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Could not claim data interface"

    .line 30
    .line 31
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sub-int/2addr v1, v4

    .line 40
    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ge v0, v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x2

    .line 59
    if-ne v3, v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/16 v4, 0x80

    .line 66
    .line 67
    if-ne v3, v4, :cond_2

    .line 68
    .line 69
    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 73
    .line 74
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    .line 78
    .line 79
    .line 80
    const/16 v0, 0x2580

    .line 81
    .line 82
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public setBreak(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x95

    .line 5
    .line 6
    const/16 v2, 0x1805

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    aget-byte p1, v0, v3

    .line 19
    .line 20
    and-int/lit8 p1, p1, -0x2

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v0, v3

    .line 24
    .line 25
    aget-byte p1, v0, v1

    .line 26
    .line 27
    and-int/lit8 p1, p1, -0x41

    .line 28
    .line 29
    int-to-byte p1, p1

    .line 30
    aput-byte p1, v0, v1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    aget-byte p1, v0, v3

    .line 34
    .line 35
    or-int/2addr p1, v1

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v0, v3

    .line 38
    .line 39
    aget-byte p1, v0, v1

    .line 40
    .line 41
    or-int/lit8 p1, p1, 0x40

    .line 42
    .line 43
    int-to-byte p1, p1

    .line 44
    aput-byte p1, v0, v1

    .line 45
    .line 46
    :goto_0
    aget-byte p1, v0, v1

    .line 47
    .line 48
    and-int/lit16 p1, p1, 0xff

    .line 49
    .line 50
    shl-int/lit8 p1, p1, 0x8

    .line 51
    .line 52
    aget-byte v0, v0, v3

    .line 53
    .line 54
    and-int/lit16 v0, v0, 0xff

    .line 55
    .line 56
    or-int/2addr p1, v0

    .line 57
    const/16 v0, 0x9a

    .line 58
    .line 59
    invoke-direct {p0, v0, v2, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ltz p1, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    const-string p1, "Error setting BREAK condition"

    .line 67
    .line 68
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    const-string p1, "Error getting BREAK condition"

    .line 73
    .line 74
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setDTR(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setParameters(IIII)V
    .locals 3

    .line 1
    if-lez p1, :cond_d

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    if-eq p2, p1, :cond_3

    .line 8
    .line 9
    const/4 p1, 0x6

    .line 10
    if-eq p2, p1, :cond_2

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    if-eq p2, p1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    const/16 p1, 0xc3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "Invalid data bits: "

    .line 23
    .line 24
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

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
    :cond_1
    const/16 p1, 0xc2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 p1, 0xc1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/16 p1, 0xc0

    .line 39
    .line 40
    :goto_0
    const/4 p2, 0x3

    .line 41
    const/4 v0, 0x2

    .line 42
    const/4 v1, 0x1

    .line 43
    if-eqz p4, :cond_8

    .line 44
    .line 45
    if-eq p4, v1, :cond_7

    .line 46
    .line 47
    if-eq p4, v0, :cond_6

    .line 48
    .line 49
    if-eq p4, p2, :cond_5

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    if-ne p4, v2, :cond_4

    .line 53
    .line 54
    or-int/lit8 p1, p1, 0x38

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string p1, "Invalid parity: "

    .line 58
    .line 59
    invoke-static {p4, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    or-int/lit8 p1, p1, 0x28

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    or-int/lit8 p1, p1, 0x18

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_7
    or-int/lit8 p1, p1, 0x8

    .line 74
    .line 75
    :cond_8
    :goto_1
    if-eq p3, v1, :cond_b

    .line 76
    .line 77
    if-eq p3, v0, :cond_a

    .line 78
    .line 79
    if-eq p3, p2, :cond_9

    .line 80
    .line 81
    const-string p1, "Invalid stop bits: "

    .line 82
    .line 83
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_9
    const-string p1, "Unsupported stop bits: 1.5"

    .line 92
    .line 93
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_a
    or-int/lit8 p1, p1, 0x4

    .line 98
    .line 99
    :cond_b
    const/16 p2, 0x9a

    .line 100
    .line 101
    const/16 p3, 0x2518

    .line 102
    .line 103
    invoke-direct {p0, p2, p3, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ltz p1, :cond_c

    .line 108
    .line 109
    return-void

    .line 110
    :cond_c
    const-string p1, "Error setting control byte"

    .line 111
    .line 112
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_d
    const-string p2, "Invalid baud rate: "

    .line 117
    .line 118
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public setRTS(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
