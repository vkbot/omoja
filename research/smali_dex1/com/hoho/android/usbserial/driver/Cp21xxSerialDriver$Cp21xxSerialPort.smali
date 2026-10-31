.class public Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cp21xxSerialPort"
.end annotation


# static fields
.field private static final DTR_DISABLE:I = 0x100

.field private static final DTR_ENABLE:I = 0x101

.field private static final FLUSH_READ_CODE:I = 0xa

.field private static final FLUSH_WRITE_CODE:I = 0x5

.field private static final REQTYPE_DEVICE_TO_HOST:I = 0xc1

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x41

.field private static final RTS_DISABLE:I = 0x200

.field private static final RTS_ENABLE:I = 0x202

.field private static final SILABSER_FLUSH_REQUEST_CODE:I = 0x12

.field private static final SILABSER_GET_COMM_STATUS_REQUEST_CODE:I = 0x10

.field private static final SILABSER_GET_MDMSTS_REQUEST_CODE:I = 0x8

.field private static final SILABSER_IFC_ENABLE_REQUEST_CODE:I = 0x0

.field private static final SILABSER_SET_BAUDRATE_REQUEST_CODE:I = 0x1e

.field private static final SILABSER_SET_BREAK_REQUEST_CODE:I = 0x5

.field private static final SILABSER_SET_CHARS_REQUEST_CODE:I = 0x19

.field private static final SILABSER_SET_FLOW_REQUEST_CODE:I = 0x13

.field private static final SILABSER_SET_LINE_CTL_REQUEST_CODE:I = 0x3

.field private static final SILABSER_SET_MHS_REQUEST_CODE:I = 0x7

.field private static final SILABSER_SET_XOFF_REQUEST_CODE:I = 0xa

.field private static final SILABSER_SET_XON_REQUEST_CODE:I = 0x9

.field private static final STATUS_CD:I = 0x80

.field private static final STATUS_CTS:I = 0x10

.field private static final STATUS_DSR:I = 0x20

.field private static final STATUS_DTR:I = 0x1

.field private static final STATUS_RI:I = 0x40

.field private static final STATUS_RTS:I = 0x2

.field private static final UART_DISABLE:I = 0x0

.field private static final UART_ENABLE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private dtr:Z

.field private mIsRestrictedPort:Z

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    .line 10
    .line 11
    return-void
.end method

.method private getStatus()B
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
    iget v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 7
    .line 8
    const/16 v7, 0x1388

    .line 9
    .line 10
    const/16 v1, 0xc1

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v6, :cond_18

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    aget-byte v0, v5, v0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_18
    const-string v1, "Control transfer failed: 8 / 0 -> "

    .line 26
    .line 27
    invoke-static {v0, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method private setBaudRate(I)V
    .registers 14

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    shr-int/lit8 v1, p1, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    shr-int/lit8 v2, p1, 0x10

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    int-to-byte v2, v2

    .line 14
    shr-int/lit8 p1, p1, 0x18

    .line 15
    .line 16
    and-int/lit16 p1, p1, 0xff

    .line 17
    .line 18
    int-to-byte p1, p1

    .line 19
    const/4 v3, 0x4

    .line 20
    new-array v9, v3, [B

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-byte v0, v9, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-byte v1, v9, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-byte v2, v9, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-byte p1, v9, v0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 35
    .line 36
    iget v8, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 37
    .line 38
    const/4 v10, 0x4

    .line 39
    const/16 v11, 0x1388

    .line 40
    .line 41
    const/16 v5, 0x41

    .line 42
    .line 43
    const/16 v6, 0x1e

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ltz p1, :cond_34

    .line 51
    .line 52
    return-void

    .line 53
    :cond_34
    const-string p1, "Error setting baud rate"

    .line 54
    .line 55
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private setConfigSingle(II)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/16 v7, 0x1388

    .line 7
    .line 8
    const/16 v1, 0x41

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p2, Ljava/io/IOException;

    .line 21
    .line 22
    const-string v0, " / "

    .line 23
    .line 24
    const-string v1, " -> "

    .line 25
    .line 26
    const-string v4, "Control transfer failed: "

    .line 27
    .line 28
    invoke-static {v4, v2, v3, v0, v1}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2
.end method


# virtual methods
.method public closeInt()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0, v0, v0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_4

    .line 3
    .line 4
    .line 5
    :catch_4
    :try_start_4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 8
    .line 9
    iget v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_11

    .line 16
    .line 17
    .line 18
    :catch_11
    return-void
.end method

.method public getCD()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

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
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

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
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

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
    and-int/lit8 v2, v0, 0x2

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
    and-int/lit8 v2, v0, 0x1

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
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

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
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRI()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->getStatus()B

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
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

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
    sget-object v3, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->XON_XOFF:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

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

.method public getXON()Z
    .registers 9

    .line 1
    const/16 v6, 0x13

    .line 2
    .line 3
    new-array v5, v6, [B

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    .line 7
    iget v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 8
    .line 9
    const/16 v7, 0x1388

    .line 10
    .line 11
    const/16 v1, 0xc1

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v6, :cond_20

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    aget-byte v0, v5, v0

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    if-nez v0, :cond_1e

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :cond_20
    const-string v1, "Control transfer failed: 16 -> "

    .line 34
    .line 35
    invoke-static {v0, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    return v0
.end method

.method public openInt()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v0, v3, :cond_11

    .line 11
    .line 12
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_11

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v0, v1

    .line 19
    :goto_12
    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 20
    .line 21
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 22
    .line 23
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v0, v4, :cond_77

    .line 30
    .line 31
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 32
    .line 33
    iget v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 40
    .line 41
    invoke-virtual {v4, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_6f

    .line 46
    .line 47
    move v4, v1

    .line 48
    :goto_2f
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_4f

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-ne v6, v3, :cond_4c

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    const/16 v7, 0x80

    .line 69
    .line 70
    if-ne v6, v7, :cond_4a

    .line 71
    .line 72
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 73
    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 76
    .line 77
    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_2f

    .line 80
    :cond_4f
    invoke-direct {p0, v1, v2}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    .line 84
    .line 85
    if-eqz v0, :cond_59

    .line 86
    .line 87
    const/16 v0, 0x101

    .line 88
    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    const/16 v0, 0x100

    .line 91
    .line 92
    :goto_5b
    iget-boolean v1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    .line 93
    .line 94
    if-eqz v1, :cond_62

    .line 95
    .line 96
    const/16 v1, 0x202

    .line 97
    .line 98
    goto :goto_64

    .line 99
    :cond_62
    const/16 v1, 0x200

    .line 100
    .line 101
    :goto_64
    or-int/2addr v0, v1

    .line 102
    const/4 v1, 0x7

    .line 103
    invoke-direct {p0, v1, v0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setFlowControl(Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    const-string v0, "Could not claim interface "

    .line 113
    .line 114
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 115
    .line 116
    invoke-static {v1, v0}, Ln0/b;->y(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_77
    const-string v0, "Unknown port number"

    .line 121
    .line 122
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public purgeHwBuffers(ZZ)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_6

    .line 3
    .line 4
    const/16 p2, 0xa

    .line 5
    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move p2, v0

    .line 8
    :goto_7
    if-eqz p1, :cond_a

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    :cond_a
    or-int p1, p2, v0

    .line 12
    .line 13
    if-eqz p1, :cond_13

    .line 14
    .line 15
    const/16 p2, 0x12

    .line 16
    .line 17
    invoke-direct {p0, p2, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public setBreak(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setDTR(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const/16 p1, 0x101

    .line 6
    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/16 p1, 0x100

    .line 9
    .line 10
    :goto_9
    const/4 v0, 0x7

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setFlowControl(Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;)V
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v8, 0x10

    .line 6
    .line 7
    new-array v7, v8, [B

    .line 8
    .line 9
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->RTS_CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v1, v2, :cond_1e

    .line 16
    .line 17
    aget-byte v2, v7, v4

    .line 18
    .line 19
    or-int/lit16 v2, v2, 0x80

    .line 20
    .line 21
    int-to-byte v2, v2

    .line 22
    aput-byte v2, v7, v4

    .line 23
    .line 24
    aget-byte v2, v7, v5

    .line 25
    .line 26
    or-int/2addr v2, v3

    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, v7, v5

    .line 29
    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    iget-boolean v2, v0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    .line 32
    .line 33
    if-eqz v2, :cond_29

    .line 34
    .line 35
    aget-byte v2, v7, v4

    .line 36
    .line 37
    or-int/lit8 v2, v2, 0x40

    .line 38
    .line 39
    int-to-byte v2, v2

    .line 40
    aput-byte v2, v7, v4

    .line 41
    .line 42
    :cond_29
    :goto_29
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->DTR_DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 43
    .line 44
    const/4 v10, 0x1

    .line 45
    if-ne v1, v2, :cond_3b

    .line 46
    .line 47
    aget-byte v2, v7, v5

    .line 48
    .line 49
    or-int/lit8 v2, v2, 0x2

    .line 50
    .line 51
    int-to-byte v2, v2

    .line 52
    aput-byte v2, v7, v5

    .line 53
    .line 54
    or-int/lit8 v2, v2, 0x10

    .line 55
    .line 56
    int-to-byte v2, v2

    .line 57
    aput-byte v2, v7, v5

    .line 58
    .line 59
    goto :goto_45

    .line 60
    :cond_3b
    iget-boolean v2, v0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->dtr:Z

    .line 61
    .line 62
    if-eqz v2, :cond_45

    .line 63
    .line 64
    aget-byte v2, v7, v5

    .line 65
    .line 66
    or-int/2addr v2, v10

    .line 67
    int-to-byte v2, v2

    .line 68
    aput-byte v2, v7, v5

    .line 69
    .line 70
    :cond_45
    :goto_45
    sget-object v11, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->XON_XOFF:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 71
    .line 72
    if-ne v1, v11, :cond_86

    .line 73
    .line 74
    const/4 v2, 0x6

    .line 75
    new-array v2, v2, [B

    .line 76
    .line 77
    fill-array-data v2, :array_ae

    .line 78
    .line 79
    .line 80
    iget-object v12, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 81
    .line 82
    iget v5, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 83
    .line 84
    const/16 v19, 0x1388

    .line 85
    .line 86
    const/16 v13, 0x41

    .line 87
    .line 88
    const/16 v14, 0x19

    .line 89
    .line 90
    const/4 v15, 0x0

    .line 91
    const/16 v18, 0x6

    .line 92
    .line 93
    move-object/from16 v17, v2

    .line 94
    .line 95
    move/from16 v16, v5

    .line 96
    .line 97
    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    move/from16 v5, v18

    .line 102
    .line 103
    if-ne v2, v5, :cond_80

    .line 104
    .line 105
    aget-byte v2, v7, v4

    .line 106
    .line 107
    or-int/lit8 v2, v2, 0x3

    .line 108
    .line 109
    int-to-byte v2, v2

    .line 110
    aput-byte v2, v7, v4

    .line 111
    .line 112
    const/4 v2, 0x7

    .line 113
    aget-byte v4, v7, v2

    .line 114
    .line 115
    or-int/lit16 v4, v4, 0x80

    .line 116
    .line 117
    int-to-byte v4, v4

    .line 118
    aput-byte v4, v7, v2

    .line 119
    .line 120
    const/16 v2, -0x80

    .line 121
    .line 122
    aput-byte v2, v7, v3

    .line 123
    .line 124
    const/16 v3, 0xc

    .line 125
    .line 126
    aput-byte v2, v7, v3

    .line 127
    .line 128
    goto :goto_86

    .line 129
    :cond_80
    const-string v1, "Error setting XON/XOFF chars"

    .line 130
    .line 131
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_86
    :goto_86
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;->XON_XOFF_INLINE:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 136
    .line 137
    if-eq v1, v2, :cond_a9

    .line 138
    .line 139
    iget-object v2, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 140
    .line 141
    iget v6, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 142
    .line 143
    const/16 v9, 0x1388

    .line 144
    .line 145
    const/16 v3, 0x41

    .line 146
    .line 147
    const/16 v4, 0x13

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-ne v2, v8, :cond_a3

    .line 155
    .line 156
    if-ne v1, v11, :cond_a0

    .line 157
    .line 158
    invoke-virtual {v0, v10}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setXON(Z)V

    .line 159
    .line 160
    .line 161
    :cond_a0
    iput-object v1, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mFlowControl:Lcom/hoho/android/usbserial/driver/UsbSerialPort$FlowControl;

    .line 162
    .line 163
    return-void

    .line 164
    :cond_a3
    const-string v1, "Error setting flow control"

    .line 165
    .line 166
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_a9
    invoke-static {}, Landroidx/navigation/b;->a()V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    nop

    .line 175
    :array_ae
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x13t
    .end array-data
.end method

.method public setParameters(IIII)V
    .registers 8

    .line 1
    if-lez p1, :cond_ab

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setBaudRate(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    const-string v0, "Unsupported data bits: "

    .line 8
    .line 9
    if-eq p2, p1, :cond_3f

    .line 10
    .line 11
    const/4 p1, 0x6

    .line 12
    if-eq p2, p1, :cond_30

    .line 13
    .line 14
    const/4 p1, 0x7

    .line 15
    if-eq p2, p1, :cond_21

    .line 16
    .line 17
    const/16 p1, 0x8

    .line 18
    .line 19
    if-ne p2, p1, :cond_17

    .line 20
    .line 21
    const/16 p1, 0x800

    .line 22
    .line 23
    goto :goto_45

    .line 24
    :cond_17
    const-string p1, "Invalid data bits: "

    .line 25
    .line 26
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    iget-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 35
    .line 36
    if-nez p1, :cond_28

    .line 37
    .line 38
    const/16 p1, 0x700

    .line 39
    .line 40
    goto :goto_45

    .line 41
    :cond_28
    invoke-static {p2, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    iget-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 50
    .line 51
    if-nez p1, :cond_37

    .line 52
    .line 53
    const/16 p1, 0x600

    .line 54
    .line 55
    goto :goto_45

    .line 56
    :cond_37
    invoke-static {p2, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3f
    iget-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 65
    .line 66
    if-nez p1, :cond_a3

    .line 67
    .line 68
    const/16 p1, 0x500

    .line 69
    .line 70
    :goto_45
    const/4 p2, 0x1

    .line 71
    const/4 v0, 0x3

    .line 72
    const/4 v1, 0x2

    .line 73
    if-eqz p4, :cond_7c

    .line 74
    .line 75
    if-eq p4, p2, :cond_7a

    .line 76
    .line 77
    if-eq p4, v1, :cond_77

    .line 78
    .line 79
    if-eq p4, v0, :cond_6a

    .line 80
    .line 81
    const/4 v2, 0x4

    .line 82
    if-ne p4, v2, :cond_60

    .line 83
    .line 84
    iget-boolean p4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 85
    .line 86
    if-nez p4, :cond_5a

    .line 87
    .line 88
    or-int/lit8 p1, p1, 0x40

    .line 89
    .line 90
    goto :goto_7c

    .line 91
    :cond_5a
    const-string p1, "Unsupported parity: space"

    .line 92
    .line 93
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    const-string p1, "Invalid parity: "

    .line 98
    .line 99
    invoke-static {p4, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6a
    iget-boolean p4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 108
    .line 109
    if-nez p4, :cond_71

    .line 110
    .line 111
    or-int/lit8 p1, p1, 0x30

    .line 112
    .line 113
    goto :goto_7c

    .line 114
    :cond_71
    const-string p1, "Unsupported parity: mark"

    .line 115
    .line 116
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_77
    or-int/lit8 p1, p1, 0x20

    .line 121
    .line 122
    goto :goto_7c

    .line 123
    :cond_7a
    or-int/lit8 p1, p1, 0x10

    .line 124
    .line 125
    :cond_7c
    :goto_7c
    if-eq p3, p2, :cond_9f

    .line 126
    .line 127
    if-eq p3, v1, :cond_92

    .line 128
    .line 129
    if-eq p3, v0, :cond_8c

    .line 130
    .line 131
    const-string p1, "Invalid stop bits: "

    .line 132
    .line 133
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8c
    const-string p1, "Unsupported stop bits: 1.5"

    .line 142
    .line 143
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_92
    iget-boolean p2, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mIsRestrictedPort:Z

    .line 148
    .line 149
    if-nez p2, :cond_99

    .line 150
    .line 151
    or-int/lit8 p1, p1, 0x2

    .line 152
    .line 153
    goto :goto_9f

    .line 154
    :cond_99
    const-string p1, "Unsupported stop bits: 2"

    .line 155
    .line 156
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_9f
    :goto_9f
    invoke-direct {p0, v0, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_a3
    invoke-static {p2, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Landroidx/navigation/b;->g(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_ab
    const-string p2, "Invalid baud rate: "

    .line 173
    .line 174
    invoke-static {p1, p2}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public setRTS(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->rts:Z

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const/16 p1, 0x202

    .line 6
    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/16 p1, 0x200

    .line 9
    .line 10
    :goto_9
    const/4 v0, 0x7

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setXON(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const/16 p1, 0x9

    .line 4
    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const/16 p1, 0xa

    .line 7
    .line 8
    :goto_7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
