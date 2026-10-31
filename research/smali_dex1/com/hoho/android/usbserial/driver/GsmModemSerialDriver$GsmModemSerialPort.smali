.class public Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GsmModemSerialPort"
.end annotation


# instance fields
.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private initGsmModem()I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/16 v7, 0x1388

    .line 5
    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    const/16 v2, 0x22

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_13

    .line 18
    .line 19
    return v0

    .line 20
    :cond_13
    const-string v0, "init failed"

    .line 21
    .line 22
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0
.end method


# virtual methods
.method public closeInt()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    .line 6
    .line 7
    .line 8
    :catch_7
    return-void
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;

    .line 2
    .line 3
    return-object v0
.end method

.method public openInt()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;

    .line 2
    .line 3
    # getter for: Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "claiming interfaces, count="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_81

    .line 47
    .line 48
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;

    .line 49
    .line 50
    # getter for: Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "endpoint count="

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :goto_4c
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ge v1, v0, :cond_7d

    .line 84
    .line 85
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/16 v3, 0x80

    .line 96
    .line 97
    const/4 v4, 0x2

    .line 98
    if-ne v2, v3, :cond_6c

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ne v2, v4, :cond_6c

    .line 105
    .line 106
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 107
    .line 108
    goto :goto_7a

    .line 109
    :cond_6c
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_7a

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ne v2, v4, :cond_7a

    .line 120
    .line 121
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 122
    .line 123
    :cond_7a
    :goto_7a
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_4c

    .line 126
    :cond_7d
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;->initGsmModem()I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_81
    const-string v0, "Could not claim shared control/data interface"

    .line 131
    .line 132
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public setParameters(IIII)V
    .registers 5

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
