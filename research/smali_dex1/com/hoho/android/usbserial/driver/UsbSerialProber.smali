.class public Lcom/hoho/android/usbserial/driver/UsbSerialProber;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 5
    .line 6
    return-void
.end method

.method public static getDefaultProbeTable()Lcom/hoho/android/usbserial/driver/ProbeTable;
    .registers 2

    .line 1
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hoho/android/usbserial/driver/ProbeTable;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const-class v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const-class v1, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    const-class v1, Lcom/hoho/android/usbserial/driver/GsmModemSerialDriver;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-class v1, Lcom/hoho/android/usbserial/driver/ChromeCcdSerialDriver;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public static getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;
    .registers 2

    .line 1
    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    .line 2
    .line 3
    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProbeTable()Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;-><init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialDriver;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_27

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_11

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_11

    .line 40
    :cond_27
    return-object v0
.end method

.method public probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->findDriver(Landroid/hardware/usb/UsbDevice;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2b

    .line 8
    .line 9
    :try_start_8
    const-class v1, Landroid/hardware/usb/UsbDevice;

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1c} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1c} :catch_23
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_1c} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 28
    .line 29
    return-object p1

    .line 30
    :catch_1d
    move-exception p1

    .line 31
    goto :goto_26

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    goto :goto_26

    .line 34
    :catch_21
    move-exception p1

    .line 35
    goto :goto_26

    .line 36
    :catch_23
    move-exception p1

    .line 37
    goto :goto_26

    .line 38
    :catch_25
    move-exception p1

    .line 39
    :goto_26
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    :cond_2b
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method
