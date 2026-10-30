.class public Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GsmModemSerialDriver"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 9
    .line 10
    new-instance v0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver$GsmModemSerialPort;-><init>(Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1782

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x4d10

    .line 13
    .line 14
    const/16 v3, 0x4d12

    .line 15
    .line 16
    filled-new-array {v2, v3}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
