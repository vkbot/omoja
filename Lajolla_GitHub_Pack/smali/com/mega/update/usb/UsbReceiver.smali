.class public Lcom/mega/update/usb/UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReceiver.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/usb/UsbReceiver$PARAMS;,
        Lcom/mega/update/usb/UsbReceiver$TOPICS;
    }
.end annotation


# static fields
.field private static final MOUNTED_PREFIX:Ljava/lang/String; = "/mnt/media_rw"

.field private static final MOUNTED_PREFIX_SD:Ljava/lang/String; = "/mnt/media_rw/SD_"

.field public static final PKGNAME:Ljava/lang/String; = "com.mega.update"

.field private static final USB_SERVICE:Ljava/lang/String; = "com.mega.update.usb.UsbService"

.field public static mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCarPropService:Lmega/car/MegaCarProperty;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mMounted:Z

.field private mSignalGear:I

.field private mSignalSpeed:D

.field private mSourceVolume:Landroid/os/storage/StorageVolume;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbService:Lcom/mega/update/usb/IUsbService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    .line 42
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const-string v0, "UsbReceiver"

    iput-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    .line 59
    iput-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/update/usb/UsbReceiver;->mMounted:Z

    .line 69
    new-instance v1, Lcom/mega/update/usb/UsbReceiver$1;

    invoke-direct {v1, p0}, Lcom/mega/update/usb/UsbReceiver$1;-><init>(Lcom/mega/update/usb/UsbReceiver;)V

    iput-object v1, p0, Lcom/mega/update/usb/UsbReceiver;->mConnection:Landroid/content/ServiceConnection;

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mega/update/usb/UsbReceiver;->mSignalSpeed:D

    .line 84
    iput v0, p0, Lcom/mega/update/usb/UsbReceiver;->mSignalGear:I

    .line 66
    iput-object p1, p0, Lcom/mega/update/usb/UsbReceiver;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private static GearTransform(I)I
    .locals 1
    .param p0, "n"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "g":I
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 186
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 137
    :pswitch_1
    const/4 v0, 0x4

    .line 138
    goto :goto_0

    .line 126
    :pswitch_2
    const/4 v0, 0x3

    .line 127
    goto :goto_0

    .line 122
    :pswitch_3
    const/4 v0, 0x2

    .line 123
    goto :goto_0

    .line 118
    :pswitch_4
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 114
    :pswitch_5
    const/4 v0, 0x0

    .line 115
    nop

    .line 189
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/mega/update/usb/UsbReceiver;)Lcom/mega/update/usb/IUsbService;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbReceiver;

    .line 38
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mega/update/usb/UsbReceiver;Lcom/mega/update/usb/IUsbService;)Lcom/mega/update/usb/IUsbService;
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbReceiver;
    .param p1, "x1"    # Lcom/mega/update/usb/IUsbService;

    .line 38
    iput-object p1, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mega/update/usb/UsbReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbReceiver;

    .line 38
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->onStateChanged()V

    return-void
.end method

.method private findPlugoutVolume()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 279
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iput-object v2, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 281
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->onStateChanged()V

    .line 282
    goto :goto_1

    .line 284
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    goto :goto_0

    .line 285
    :cond_2
    :goto_1
    return-void
.end method

.method private getCarService(Landroid/content/Context;)Lmega/car/MegaCarProperty;
    .locals 2
    .param p1, "usbServiceContext"    # Landroid/content/Context;

    .line 218
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;

    if-nez v0, :cond_0

    .line 220
    :try_start_0
    invoke-static {p1}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;

    .line 226
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;

    return-object v0
.end method

.method private getSalesArea()I
    .locals 2

    .line 362
    const-string v0, "ro.ecu.config.COUNTRY_OR_REGION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 363
    .local v0, "salesArea":I
    return v0
.end method

.method private isDebugVersion()Z
    .locals 2

    .line 351
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "isUserDebugVersion":Ljava/lang/String;
    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEuropeVersion(I)Z
    .locals 2
    .param p1, "salesArea"    # I

    .line 367
    sget-object v0, Lcom/mega/update/usb/UsbReceiver;->mEuropeanUnionSlaesAreaSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x1

    return v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isT1gcVersion()Z
    .locals 2

    .line 356
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "lajolla"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onStateChanged()V
    .locals 13

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUsbService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbReceiver"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v0, "usbIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.update"

    const-string v3, "com.mega.update.usb.UsbService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/mega/update/usb/UsbReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/usb/UsbReceiver;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x20

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 293
    return-void

    .line 295
    .end local v0    # "usbIntent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mega/update/usb/UsbReceiver;->mMounted:Z

    .line 308
    iget-object v2, p0, Lcom/mega/update/usb/UsbReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mega/update/usb/UsbReceiver;->getCarService(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;

    .line 309
    if-eqz v2, :cond_5

    .line 310
    const v3, 0x400000a

    invoke-virtual {v2, v3}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v2

    .line 311
    .local v2, "gearStatus":I
    invoke-static {v2}, Lcom/mega/update/usb/UsbReceiver;->GearTransform(I)I

    move-result v3

    .line 312
    .local v3, "gearStatusReal":I
    iget-object v4, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;

    const v5, 0x400000b

    invoke-virtual {v4, v5}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result v4

    .line 314
    .local v4, "speed":F
    iget-object v5, p0, Lcom/mega/update/usb/UsbReceiver;->mCarPropService:Lmega/car/MegaCarProperty;

    const v6, 0x33000002

    invoke-virtual {v5, v6}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v5

    .line 315
    .local v5, "vinProp":Lmega/car/hardware/CarPropertyValue;
    if-nez v5, :cond_1

    const-string v6, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 316
    .local v6, "vinCode":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->isDebugVersion()Z

    move-result v7

    .line 317
    .local v7, "debugVersion":Z
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->isT1gcVersion()Z

    move-result v8

    .line 318
    .local v8, "t1gcVersion":Z
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->getSalesArea()I

    move-result v9

    .line 319
    .local v9, "salesArea":I
    invoke-direct {p0, v9}, Lcom/mega/update/usb/UsbReceiver;->isEuropeVersion(I)Z

    move-result v10

    .line 321
    .local v10, "isEuropeVersion":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gearStatusReal = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " speed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " gearStatus ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " vinCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " debugVersion = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " t1gcVersion = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " salesArea = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isEuropeVersion = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    if-eqz v10, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    return-void

    .line 325
    :cond_2
    if-eqz v3, :cond_3

    if-ne v3, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    iget-object v1, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-interface {v0, v1}, Lcom/mega/update/usb/IUsbService;->attached(Landroid/os/storage/StorageVolume;)V

    .line 328
    .end local v2    # "gearStatus":I
    .end local v3    # "gearStatusReal":I
    .end local v4    # "speed":F
    .end local v5    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    .end local v6    # "vinCode":Ljava/lang/String;
    .end local v7    # "debugVersion":Z
    .end local v8    # "t1gcVersion":Z
    .end local v9    # "salesArea":I
    .end local v10    # "isEuropeVersion":Z
    :cond_4
    goto :goto_1

    .line 329
    :cond_5
    const-string v0, "getCarService fail"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    goto :goto_2

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 337
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ejecting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 338
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 342
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mega/update/usb/UsbReceiver;->mMounted:Z

    .line 343
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mUsbService:Lcom/mega/update/usb/IUsbService;

    invoke-interface {v0}, Lcom/mega/update/usb/IUsbService;->detached()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    goto :goto_3

    .line 344
    :catch_1
    move-exception v0

    .line 345
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public findPluginVolume()V
    .locals 5

    .line 254
    const-string v0, "UsbReceiver"

    const-string v1, "findPluginVolume entry"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 261
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getInternalPath()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "inernalPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    const-string v4, "/mnt/media_rw/SD_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 264
    :cond_2
    const-string v4, "/mnt/media_rw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    iput-object v2, p0, Lcom/mega/update/usb/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 266
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->onStateChanged()V

    .line 267
    goto :goto_1

    .line 269
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v3    # "inernalPath":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 270
    :cond_4
    :goto_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 231
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    return-void

    .line 238
    :cond_1
    const/4 v0, -0x1

    const-string v1, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 241
    .local v0, "state":I
    const/4 v1, 0x2

    const-string v2, "UsbReceiver"

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/mega/update/usb/UsbReceiver;->mMounted:Z

    if-nez v1, :cond_2

    .line 242
    const-string v1, "VolumeInfo.STATE_MOUNTED"

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/mega/update/usb/UsbReceiver;->findPluginVolume()V

    .line 244
    return-void

    .line 246
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/mega/update/usb/UsbReceiver;->mMounted:Z

    if-eqz v1, :cond_4

    .line 248
    const-string v1, "VolumeInfo.STATE_UNMOUNTED"

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/mega/update/usb/UsbReceiver;->findPlugoutVolume()V

    .line 251
    :cond_4
    return-void

    .line 232
    .end local v0    # "state":I
    :cond_5
    :goto_0
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method
