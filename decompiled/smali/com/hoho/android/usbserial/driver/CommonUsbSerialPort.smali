.class public abstract Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# static fields
.field public static DEBUG:Z = false

.field private static final MAX_READ_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "CommonUsbSerialPort"


# instance fields
.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final mDevice:Landroid/hardware/usb/UsbDevice;

.field protected mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

.field protected final mPortNumber:I

.field protected mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mReadQueueBufferCount:I

.field private mReadQueueBufferSize:I

.field protected mReadQueueRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/hardware/usb/UsbRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadRequest:Landroid/hardware/usb/UsbRequest;

.field protected mUsbRequestSupplier:La7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/b;"
        }
    .end annotation
.end field

.field protected mWriteBuffer:[B

.field protected final mWriteBufferLock:Ljava/lang/Object;

.field protected mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->NONE:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 7
    .line 8
    new-instance v0, Landroidx/navigation/b;

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    invoke-direct {v0, v1}, Landroidx/navigation/b;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequestSupplier:La7/b;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 24
    .line 25
    iput p2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 26
    .line 27
    return-void
.end method

.method private useReadQueue()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferCount:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueRequests:Ljava/util/LinkedList;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :catch_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/hardware/usb/UsbRequest;

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueRequests:Ljava/util/LinkedList;

    .line 38
    .line 39
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->closeInt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    .line 42
    :catch_2
    :try_start_3
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 45
    .line 46
    .line 47
    :catch_3
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const-string v0, "Already closed"

    .line 51
    .line 52
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public abstract closeInt()V
.end method

.method public getCD()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getCTS()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getControlLines()Ljava/util/EnumSet;
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
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getDSR()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getDTR()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlowControl()Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getRI()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getRTS()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadQueueBufferCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getReadQueueBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedFlowControl()Ljava/util/EnumSet;
    .locals 1
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
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWriteEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXON()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->openInt()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequestSupplier:La7/b;

    .line 21
    .line 22
    check-cast p1, Landroidx/navigation/b;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/hardware/usb/UsbRequest;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferCount:I

    .line 42
    .line 43
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->setReadQueue(II)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v0, "Could not get read & write endpoints"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    throw p1

    .line 63
    :cond_1
    const-string p1, "Connection is null"

    .line 64
    .line 65
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string p1, "Already open"

    .line 70
    .line 71
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public abstract openInt()V
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public read([BI)I
    .locals 1

    .line 196
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 197
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BII)I

    move-result p1

    return p1

    .line 198
    :cond_0
    const-string p1, "Read buffer too small"

    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public read([BII)I
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BIIZ)I

    move-result p1

    return p1
.end method

.method public read([BIIZ)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(Z)V

    .line 3
    .line 4
    .line 5
    if-lez p2, :cond_c

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz p3, :cond_4

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->useReadQueue()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    invoke-static {}, La7/a;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    int-to-long v4, p3

    .line 28
    add-long/2addr v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v5, 0x1c

    .line 35
    .line 36
    if-lt v4, v5, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v4, 0x4000

    .line 40
    .line 41
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    :goto_1
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 48
    .line 49
    invoke-virtual {v4, v5, p1, p2, p3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 p2, -0x1

    .line 54
    if-ne p1, p2, :cond_9

    .line 55
    .line 56
    if-eqz p4, :cond_9

    .line 57
    .line 58
    invoke-static {}, La7/a;->a()J

    .line 59
    .line 60
    .line 61
    move-result-wide p2

    .line 62
    cmp-long p2, p2, v2

    .line 63
    .line 64
    if-gez p2, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move v1, v0

    .line 68
    :goto_2
    invoke-virtual {p0, v1}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_3
    const-string p1, "Cannot use timeout!=0 if readQueue is enabled"

    .line 73
    .line 74
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_3
    const/4 p1, 0x0

    .line 78
    return p1

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->useReadQueue()Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    const-string p4, "Queueing USB request failed"

    .line 84
    .line 85
    if-eqz p3, :cond_6

    .line 86
    .line 87
    iget p3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 88
    .line 89
    if-ne p2, p3, :cond_5

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    const-string p1, "Cannot use different length if readQueue is enabled"

    .line 94
    .line 95
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    invoke-static {p1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 104
    .line 105
    invoke-virtual {v2, p3, p2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_b

    .line 110
    .line 111
    move-object p2, p3

    .line 112
    :goto_4
    iget-object p3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-eqz p3, :cond_a

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->useReadQueue()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/hardware/usb/UsbRequest;->getClientData()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-static {v2, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p3, p2, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_7

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_7
    invoke-static {p4}, Ln0/b;->A(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    :goto_5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_9

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(Z)V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    return p1

    .line 179
    :cond_a
    const-string p1, "Waiting for USB request failed"

    .line 180
    .line 181
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_b
    invoke-static {p4}, Ln0/b;->A(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_c
    const-string p1, "Read length too small"

    .line 190
    .line 191
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3
.end method

.method public setBreak(Z)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setDTR(Z)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setFlowControl(Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->NONE:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroidx/navigation/b;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract setParameters(IIII)V
.end method

.method public setRTS(Z)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setReadQueue(II)V
    .locals 5

    .line 1
    if-ltz p1, :cond_8

    .line 2
    .line 3
    if-ltz p2, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->isOpen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferCount:I

    .line 12
    .line 13
    if-lt p1, v0, :cond_5

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    :cond_0
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 34
    .line 35
    :cond_1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferCount:I

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 40
    .line 41
    if-ne p2, v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string p1, "Cannot change bufferSize when port is open"

    .line 45
    .line 46
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    :goto_0
    if-lez p1, :cond_6

    .line 51
    .line 52
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueRequests:Ljava/util/LinkedList;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    new-instance v0, Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueRequests:Ljava/util/LinkedList;

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueRequests:Ljava/util/LinkedList;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_1
    if-ge v0, p1, :cond_6

    .line 70
    .line 71
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mUsbRequestSupplier:La7/b;

    .line 76
    .line 77
    check-cast v2, Landroidx/navigation/b;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v2, Landroid/hardware/usb/UsbRequest;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 90
    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1, p2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueRequests:Ljava/util/LinkedList;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const-string p1, "Cannot reduce bufferCount when port is open"

    .line 109
    .line 110
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    iput p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferCount:I

    .line 115
    .line 116
    iput p2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadQueueBufferSize:I

    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    const-string p1, "Invalid bufferSize"

    .line 120
    .line 121
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_8
    const-string p1, "Invalid bufferCount"

    .line 126
    .line 127
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final setWriteBufferSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-gtz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_2
    new-array p1, p1, [B

    .line 32
    .line 33
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public testConnection(Z)V
    .locals 1

    .line 37
    const-string v0, "USB get_status request failed"

    invoke-virtual {p0, p1, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(ZLjava/lang/String;)V

    return-void
.end method

.method public testConnection(ZLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadRequest:Landroid/hardware/usb/UsbRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v7, 0x2

    .line 9
    new-array v6, v7, [B

    .line 10
    .line 11
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/16 v8, 0xc8

    .line 15
    .line 16
    const/16 v2, 0x80

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ltz p1, :cond_1

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {p2}, Ln0/b;->A(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const-string p1, "Connection closed"

    .line 32
    .line 33
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "<"

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " device_name="

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " device_id="

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " port_number="

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ">"

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public write([BI)V
    .locals 1

    .line 218
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-static {}, La7/a;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    array-length v5, v0

    .line 12
    move/from16 v6, p2

    .line 13
    .line 14
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-virtual {v1, v6}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(Z)V

    .line 20
    .line 21
    .line 22
    move v7, v6

    .line 23
    :goto_0
    if-ge v7, v5, :cond_a

    .line 24
    .line 25
    iget-object v8, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v8

    .line 28
    :try_start_0
    iget-object v9, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 29
    .line 30
    if-nez v9, :cond_0

    .line 31
    .line 32
    iget-object v9, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 33
    .line 34
    invoke-virtual {v9}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    new-array v9, v9, [B

    .line 39
    .line 40
    iput-object v9, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_0
    :goto_1
    sub-int v9, v5, v7

    .line 47
    .line 48
    iget-object v10, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 49
    .line 50
    array-length v10, v10

    .line 51
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v7, :cond_1

    .line 56
    .line 57
    move-object v10, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object v10, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 60
    .line 61
    invoke-static {v0, v7, v10, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iget-object v10, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 65
    .line 66
    :goto_2
    if-eqz v2, :cond_3

    .line 67
    .line 68
    if-nez v7, :cond_2

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_2
    int-to-long v11, v2

    .line 72
    add-long/2addr v11, v3

    .line 73
    invoke-static {}, La7/a;->a()J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    sub-long/2addr v11, v13

    .line 78
    long-to-int v11, v11

    .line 79
    if-nez v11, :cond_4

    .line 80
    .line 81
    const/4 v11, -0x1

    .line 82
    goto :goto_4

    .line 83
    :cond_3
    :goto_3
    move v11, v2

    .line 84
    :cond_4
    :goto_4
    if-gez v11, :cond_5

    .line 85
    .line 86
    const/4 v10, -0x2

    .line 87
    goto :goto_5

    .line 88
    :cond_5
    iget-object v12, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 89
    .line 90
    iget-object v13, v1, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 91
    .line 92
    invoke-virtual {v12, v13, v10, v9, v11}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    :goto_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {}, La7/a;->a()J

    .line 98
    .line 99
    .line 100
    move-result-wide v12

    .line 101
    sub-long/2addr v12, v3

    .line 102
    sget-boolean v8, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->DEBUG:Z

    .line 103
    .line 104
    if-eqz v8, :cond_6

    .line 105
    .line 106
    sget-object v8, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    const-string v14, "Wrote "

    .line 109
    .line 110
    const-string v15, "/"

    .line 111
    .line 112
    const-string v6, " offset "

    .line 113
    .line 114
    invoke-static {v14, v10, v9, v15, v6}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v14, "/"

    .line 122
    .line 123
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v14, " time "

    .line 130
    .line 131
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v14, "/"

    .line 138
    .line 139
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_6
    if-gtz v10, :cond_9

    .line 153
    .line 154
    const-string v3, "Error writing "

    .line 155
    .line 156
    const-string v4, " bytes at offset "

    .line 157
    .line 158
    const-string v5, " of total "

    .line 159
    .line 160
    invoke-static {v3, v9, v7, v4, v5}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    array-length v0, v0

    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, " after "

    .line 169
    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, "msec, rc="

    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v2, :cond_8

    .line 189
    .line 190
    int-to-long v2, v2

    .line 191
    cmp-long v2, v12, v2

    .line 192
    .line 193
    if-gez v2, :cond_7

    .line 194
    .line 195
    const/4 v6, 0x1

    .line 196
    goto :goto_6

    .line 197
    :cond_7
    const/4 v6, 0x0

    .line 198
    :goto_6
    invoke-virtual {v1, v6, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection(ZLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v2, Lcom/hoho/android/usbserial/driver/SerialTimeoutException;

    .line 202
    .line 203
    invoke-direct {v2, v0, v7}, Lcom/hoho/android/usbserial/driver/SerialTimeoutException;-><init>(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    throw v2

    .line 207
    :cond_8
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_9
    add-int/2addr v7, v10

    .line 212
    const/4 v6, 0x0

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :goto_7
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    throw v0

    .line 217
    :cond_a
    return-void
.end method
