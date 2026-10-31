.class public Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChromeCcdSerialPort"
.end annotation


# instance fields
.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 4
    .line 5
    .line 6
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
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

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
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;

    .line 2
    .line 3
    return-object v0
.end method

.method public openInt()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;

    .line 2
    .line 3
    # getter for: Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;)Ljava/lang/String;

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
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_80

    .line 48
    .line 49
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;

    .line 50
    .line 51
    # getter for: Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "endpoint count="

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_4e
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ge v0, v1, :cond_7f

    .line 86
    .line 87
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver$ChromeCcdSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/16 v3, 0x80

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    if-ne v2, v3, :cond_6e

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ne v2, v4, :cond_6e

    .line 107
    .line 108
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 109
    .line 110
    goto :goto_7c

    .line 111
    :cond_6e
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_7c

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ne v2, v4, :cond_7c

    .line 122
    .line 123
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 124
    .line 125
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_4e

    .line 128
    :cond_7f
    return-void

    .line 129
    :cond_80
    const-string v0, "Could not claim shared control/data interface"

    .line 130
    .line 131
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
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
