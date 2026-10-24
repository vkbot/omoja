.class public Lcom/mega/update/usb/UsbService;
.super Landroid/app/Service;
.source "UsbService.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/usb/UsbService$PARAMS;,
        Lcom/mega/update/usb/UsbService$TOPICS;,
        Lcom/mega/update/usb/UsbService$OnCpListener;,
        Lcom/mega/update/usb/UsbService$DeathHolder;
    }
.end annotation


# static fields
.field private static final COM_MEGA_LANGUAGE_REQ:Ljava/lang/String; = "updateservice/notify/uds/req"

.field private static final COM_MEGA_LANGUAGE_RESP:Ljava/lang/String; = "updateservice/notify/uds/resp"

.field private static final OTA_UPDATE_SERVICE:Ljava/lang/String; = "mega.ota.update"

.field private static final SYS_UPDATE_INIT_CLEAN:Ljava/lang/String; = "sys.update.init.clean"

.field private static final SYS_UPDATE_PACKAGE_REGULAR:Ljava/lang/String; = "sys.update.package.regular"

.field private static final SYS_UPDATE_USB_PATH:Ljava/lang/String; = "sys.update.usb.path"

.field private static final TAG:Ljava/lang/String;

.field private static final UDS_SET_LANGUAGE:Ljava/lang/String; = "uds/notify/updateservice"


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mega/update/usb/UsbService$DeathHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mHasUpdatePkg:Z

.field private mReceiver:Lcom/mega/update/usb/UsbReceiver;

.field private mSignalOtaStatus:I

.field private mSourceVolume:Landroid/os/storage/StorageVolume;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

.field private mUpdateService:Lcom/mega/update/service/IUpdateService;

.field private mUsbService:Lcom/mega/update/usb/IUsbService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/mega/update/usb/UsbService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 59
    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mCallbacks:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    iput v1, p0, Lcom/mega/update/usb/UsbService;->mSignalOtaStatus:I

    .line 64
    iput-boolean v1, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 66
    new-instance v0, Lcom/mega/update/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/mega/update/usb/UsbService$1;-><init>(Lcom/mega/update/usb/UsbService;)V

    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mUsbService:Lcom/mega/update/usb/IUsbService$Stub;

    .line 151
    new-instance v0, Lcom/mega/update/usb/UsbService$2;

    invoke-direct {v0, p0}, Lcom/mega/update/usb/UsbService$2;-><init>(Lcom/mega/update/usb/UsbService;)V

    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/update/usb/UsbService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    iget v0, p0, Lcom/mega/update/usb/UsbService;->mSignalOtaStatus:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mega/update/usb/UsbService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mega/update/usb/UsbService;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .line 47
    iput-object p1, p0, Lcom/mega/update/usb/UsbService;->mSourceVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mega/update/usb/UsbService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->showDialogIfHasPkg()V

    return-void
.end method

.method static synthetic access$400(Lcom/mega/update/usb/UsbService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    iget-boolean v0, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mega/update/usb/UsbService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->checkLogFolder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mega/update/usb/UsbService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->checkLanguageFile()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mega/update/usb/UsbService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->notifyState()V

    return-void
.end method

.method static synthetic access$900(Lcom/mega/update/usb/UsbService;)Lcom/mega/update/service/IUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/usb/UsbService;

    .line 47
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    return-object v0
.end method

.method private checkLanguageFile()I
    .locals 11

    .line 228
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "rootPath":Ljava/lang/String;
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check root path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v3, "U\u76d8\u6839\u8def\u5f84\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u68c0\u67e5\u6587\u4ef6/\u6587\u4ef6\u5939"

    invoke-static {v1, v3}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v2

    .line 238
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "com.mega.language_0.txt"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v3, "langFile0":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    .line 248
    .local v4, "hasLangFile0":Z
    :goto_0
    sget-object v7, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.mega.language_0.txt \u662f\u5426\u5b58\u5728: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz v4, :cond_3

    .line 250
    return v6

    .line 254
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string v8, "com.mega.language_1.txt"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .local v7, "langFile1":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v5

    .line 256
    .local v6, "hasLangFile1":Z
    :cond_4
    sget-object v8, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.mega.language_1.txt \u662f\u5426\u5b58\u5728: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-eqz v6, :cond_5

    .line 259
    return v5

    .line 261
    :cond_5
    return v2

    .line 241
    .end local v3    # "langFile0":Ljava/io/File;
    .end local v4    # "hasLangFile0":Z
    .end local v6    # "hasLangFile1":Z
    .end local v7    # "langFile1":Ljava/io/File;
    :cond_6
    :goto_1
    sget-object v3, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v4, "U\u76d8\u6839\u76ee\u5f55\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u6709\u6548\u76ee\u5f55"

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return v2
.end method

.method private checkLogFolder()Z
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "rootPath":Ljava/lang/String;
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check root path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v3, "U\u76d8\u6839\u8def\u5f84\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u68c0\u67e5\u6587\u4ef6/\u6587\u4ef6\u5939"

    invoke-static {v1, v3}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v2

    .line 212
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "log.mega.co"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v3, "logFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 222
    .local v2, "hasLogFolder":Z
    :cond_2
    sget-object v4, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log.mega.co \u6587\u4ef6\u5939\u662f\u5426\u5b58\u5728: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v2

    .line 215
    .end local v2    # "hasLogFolder":Z
    .end local v3    # "logFolder":Ljava/io/File;
    :cond_3
    :goto_0
    sget-object v3, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v4, "U\u76d8\u6839\u76ee\u5f55\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u6709\u6548\u76ee\u5f55"

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v2
.end method

.method private findPackage()Ljava/io/File;
    .locals 14

    .line 175
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "rootPath":Ljava/lang/String;
    const-string v1, "sys.update.usb.path"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "updatePath":Ljava/lang/String;
    const-string v3, "ro.build.vehicle_model"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "vehicle_model":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)^("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-cdc).*zip$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "pattern":Ljava/lang/String;
    sget-object v4, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findPackage rootPath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " updatePath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vehicle_model ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pattern="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v4, "dirs":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    return-object v5

    .line 188
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 189
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "name":Ljava/lang/String;
    sget-object v11, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    sget-object v5, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findPackage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v9

    .line 188
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 196
    :cond_3
    sget-object v6, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v7, "findPackage: failed!!"

    invoke-static {v6, v7}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v5

    .line 182
    .end local v4    # "dirs":Ljava/io/File;
    :cond_4
    :goto_1
    return-object v5
.end method

.method private handleUgrade()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v1}, Lcom/mega/update/service/IUpdateService;->getPackagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "dstFile":Ljava/lang/String;
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dstFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->notifyState()V

    .line 338
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v1}, Lcom/mega/update/service/IUpdateService;->getPackagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/update/util/FileHelper;->clearDirectory(Ljava/lang/String;)Z

    .line 339
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mFile:Ljava/io/File;

    new-instance v2, Lcom/mega/update/usb/-$$Lambda$UsbService$H7KCANI6QG0PKOgSQHgzDIgc0as;

    invoke-direct {v2, p0}, Lcom/mega/update/usb/-$$Lambda$UsbService$H7KCANI6QG0PKOgSQHgzDIgc0as;-><init>(Lcom/mega/update/usb/UsbService;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/mega/update/usb/UsbService;->CpFile(Ljava/io/File;Ljava/lang/String;Lcom/mega/update/usb/UsbService$OnCpListener;)Z

    move-result v1

    .line 345
    .local v1, "ret":Z
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_1

    .line 346
    iget-object v4, p0, Lcom/mega/update/usb/UsbService;->mCallbacks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 347
    .local v5, "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v5}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/mega/update/usb/IUsbCallback;->onError(I)V

    .line 348
    .end local v5    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_0

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 350
    return-void

    .line 352
    :cond_1
    iget-object v4, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 353
    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v3}, Lcom/mega/update/service/IUpdateService;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 355
    .local v4, "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v4}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Lcom/mega/update/usb/IUsbCallback;->onError(I)V

    .line 356
    .end local v4    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_1

    .line 357
    :cond_2
    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_2

    .line 359
    :cond_3
    new-instance v2, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v2}, Lcom/mega/update/service/UpdateOption;-><init>()V

    .line 360
    .local v2, "option":Lcom/mega/update/service/UpdateOption;
    invoke-virtual {v2, v0}, Lcom/mega/update/service/UpdateOption;->setFilename(Ljava/lang/String;)V

    .line 361
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    .line 362
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mega/update/service/UpdateOption;->setForce(Z)V

    .line 363
    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v3, v2}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    .line 364
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->notifyState()V

    .line 366
    .end local v2    # "option":Lcom/mega/update/service/UpdateOption;
    :goto_2
    return-void
.end method

.method private notifyState()V
    .locals 4

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 371
    .local v1, "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v1}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mega/update/usb/IUsbCallback;->onState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_0

    .line 375
    :cond_0
    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private showDialogIfHasPkg()V
    .locals 11

    .line 379
    const-string v0, "sys.update.ready"

    const-string v1, "false"

    iget-object v2, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    const/high16 v5, 0x10000000

    if-nez v2, :cond_0

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v0, "diagIntent":Landroid/content/Intent;
    const-class v1, Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 382
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mega/update/usb/UsbService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 384
    iput-boolean v4, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 385
    return-void

    .line 387
    .end local v0    # "diagIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->notifyState()V

    .line 388
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->findPackage()Ljava/io/File;

    move-result-object v2

    .line 390
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "updateready":Ljava/lang/String;
    const/4 v7, 0x0

    .line 392
    .local v7, "count":I
    sget-object v8, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateready ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_2

    .line 396
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 397
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 398
    add-int/lit8 v7, v7, 0x1

    .line 399
    sget-object v8, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v9, "UpdateBinder is not ready"

    invoke-static {v8, v9}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/16 v8, 0x78

    if-ne v7, v8, :cond_1

    .line 401
    sget-object v0, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v1, "Has been waiting for 60 seconds"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput-boolean v3, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    return-void

    .line 410
    :cond_1
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 407
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 408
    iput-boolean v3, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 409
    return-void

    .line 412
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v0}, Lcom/mega/update/service/IUpdateService;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v0

    .line 413
    .local v0, "state":Lcom/mega/update/service/UpdateState;
    invoke-virtual {v0}, Lcom/mega/update/service/UpdateState;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "oldFilename":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 415
    invoke-virtual {v0}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 416
    sget-object v4, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v5, "UpdateService is running, ignore!!!"

    invoke-static {v4, v5}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 418
    iput-boolean v3, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 419
    return-void

    .line 421
    :cond_3
    invoke-virtual {v0}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 422
    sget-object v4, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v5, "same ota package, ignore!!!!!!"

    invoke-static {v4, v5}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v4, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 424
    iput-boolean v3, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 425
    return-void

    .line 427
    :cond_4
    iput-object v2, p0, Lcom/mega/update/usb/UsbService;->mFile:Ljava/io/File;

    .line 428
    sget-object v8, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "srcFile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v8, "diagIntent":Landroid/content/Intent;
    const-class v9, Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 431
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0, v8, v5}, Lcom/mega/update/usb/UsbService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 434
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v9, Lcom/mega/update/usb/-$$Lambda$UsbService$TppchD_UF8A1f7WuFBYtjDzjxc0;

    invoke-direct {v9, p0}, Lcom/mega/update/usb/-$$Lambda$UsbService$TppchD_UF8A1f7WuFBYtjDzjxc0;-><init>(Lcom/mega/update/usb/UsbService;)V

    invoke-interface {v5, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 441
    iput-boolean v4, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 442
    .end local v8    # "diagIntent":Landroid/content/Intent;
    goto :goto_1

    .line 443
    :cond_5
    iget-object v4, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 444
    iput-boolean v3, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    .end local v0    # "state":Lcom/mega/update/service/UpdateState;
    .end local v1    # "oldFilename":Ljava/lang/String;
    .end local v6    # "updateready":Ljava/lang/String;
    .end local v7    # "count":I
    :goto_1
    goto :goto_2

    .line 446
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 449
    iput-boolean v3, p0, Lcom/mega/update/usb/UsbService;->mHasUpdatePkg:Z

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method CpFile(Ljava/io/File;Ljava/lang/String;Lcom/mega/update/usb/UsbService$OnCpListener;)Z
    .locals 15
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mega/update/usb/UsbService$OnCpListener;

    .line 297
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    .local v0, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v5, p2

    :try_start_1
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, "saveFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 300
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 301
    .local v6, "size":J
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 302
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 303
    invoke-virtual {v4, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 304
    invoke-virtual {v4, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 306
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v8, "os":Ljava/io/FileOutputStream;
    const/16 v9, 0x1000

    new-array v9, v9, [B

    .line 308
    .local v9, "temp":[B
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 309
    .local v10, "ret":I
    const-wide/16 v11, 0x0

    .line 311
    .local v11, "sum":J
    :goto_0
    if-lez v10, :cond_2

    .line 312
    invoke-virtual {v8, v9, v2, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 313
    int-to-long v13, v10

    add-long/2addr v11, v13

    .line 314
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    long-to-double v2, v11

    mul-double/2addr v2, v13

    long-to-double v13, v6

    div-double/2addr v2, v13

    double-to-int v2, v2

    move-object/from16 v3, p3

    :try_start_2
    invoke-interface {v3, v2}, Lcom/mega/update/usb/UsbService$OnCpListener;->onCpProgress(I)V

    .line 315
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v10, v2

    move-object/from16 v3, p1

    const/4 v2, 0x0

    goto :goto_0

    .line 317
    :cond_2
    move-object/from16 v3, p3

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 319
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 320
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 326
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v4    # "saveFile":Ljava/io/File;
    .end local v6    # "size":J
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .end local v9    # "temp":[B
    .end local v10    # "ret":I
    .end local v11    # "sum":J
    goto :goto_3

    .line 324
    :catch_0
    move-exception v0

    goto :goto_2

    .line 321
    :catch_1
    move-exception v0

    goto :goto_5

    .line 324
    :catch_2
    move-exception v0

    goto :goto_1

    .line 321
    :catch_3
    move-exception v0

    goto :goto_4

    .line 324
    :catch_4
    move-exception v0

    move-object/from16 v5, p2

    :goto_1
    move-object/from16 v3, p3

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return v1

    .line 321
    :catch_5
    move-exception v0

    move-object/from16 v5, p2

    :goto_4
    move-object/from16 v3, p3

    .line 322
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$handleUgrade$0$UsbService(I)V
    .locals 3
    .param p1, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    rem-int/lit8 v0, p1, 0x5

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 342
    .local v1, "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v1}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mega/update/usb/IUsbCallback;->onProgress(I)V

    .line 343
    .end local v1    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_0

    .line 344
    :cond_1
    return-void
.end method

.method public synthetic lambda$showDialogIfHasPkg$1$UsbService()V
    .locals 1

    .line 436
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/usb/UsbService;->handleUgrade()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 455
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    if-nez v0, :cond_2

    .line 456
    const-string v0, "mega.ota.update"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 457
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mega/update/service/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/service/IUpdateService;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    .line 458
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpdateService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    iget-object v2, p0, Lcom/mega/update/usb/UsbService;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    invoke-interface {v1, v2}, Lcom/mega/update/service/IUpdateService;->bind(Lcom/mega/update/service/IUpdateCallback;)Z

    .line 462
    :cond_0
    const-string v1, "sys.update.init.clean"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v1}, Lcom/mega/update/service/IUpdateService;->getPackagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/update/util/FileHelper;->clearDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_1
    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 470
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mUsbService:Lcom/mega/update/usb/IUsbService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 490
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 491
    sget-object v0, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v1, "Usb Service onCreate"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/mega/update/usb/UsbReceiver;

    invoke-direct {v0, p0}, Lcom/mega/update/usb/UsbReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mega/update/usb/UsbService;->mReceiver:Lcom/mega/update/usb/UsbReceiver;

    .line 493
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mReceiver:Lcom/mega/update/usb/UsbReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mega/update/usb/UsbService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mReceiver:Lcom/mega/update/usb/UsbReceiver;

    invoke-virtual {v1}, Lcom/mega/update/usb/UsbReceiver;->findPluginVolume()V

    .line 496
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/mode"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "updateservice/notify/uds/resp"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "uds/notify/updateservice"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 504
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 505
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mReceiver:Lcom/mega/update/usb/UsbReceiver;

    invoke-virtual {p0, v0}, Lcom/mega/update/usb/UsbService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/usb/UsbService;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    iget-object v1, p0, Lcom/mega/update/usb/UsbService;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    invoke-interface {v0, v1}, Lcom/mega/update/service/IUpdateService;->unbind(Lcom/mega/update/service/IUpdateCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_0
    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 511
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
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

    .line 515
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 516
    .local v0, "mesg":Ljava/lang/String;
    sget-object v1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v1, "update/mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Parse json fail! "

    if-eqz v1, :cond_2

    .line 518
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/usb/UsbService$3;

    invoke-direct {v3, p0}, Lcom/mega/update/usb/UsbService$3;-><init>(Lcom/mega/update/usb/UsbService;)V

    .line 519
    invoke-virtual {v3}, Lcom/mega/update/usb/UsbService$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 518
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;

    .line 520
    .local v1, "val":Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;->valid:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget v2, v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;->value:I

    iput v2, p0, Lcom/mega/update/usb/UsbService;->mSignalOtaStatus:I

    .line 525
    sget-object v2, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSignalOtaStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mega/update/usb/UsbService;->mSignalOtaStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .end local v1    # "val":Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;
    goto/16 :goto_5

    .line 521
    .restart local v1    # "val":Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;
    :cond_1
    :goto_0
    sget-object v3, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void

    .line 526
    .end local v1    # "val":Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;
    :cond_2
    const-string v1, "updateservice/notify/uds/resp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 528
    .end local v0    # "mesg":Ljava/lang/String;
    .end local p0    # "this":Lcom/mega/update/usb/UsbService;
    .end local p1    # "topic":Ljava/lang/String;
    .end local p2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_1
    sget-object p1, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    const-string p2, "languagetype safely reboot:"

    invoke-static {p1, p2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string p1, "{\"command\":\"8\", \"operation\":\"set\", \"id\":\"UpdateService\"}"

    .line 530
    .local p1, "command":Ljava/lang/String;
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-byte v3, v0, v2

    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 532
    :cond_3
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "misc_service/command/update_request"

    invoke-virtual {v0, v1, p2}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 534
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    goto :goto_3

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 538
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_3
    goto :goto_1

    .line 539
    .local v0, "mesg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mega/update/usb/UsbService;
    .local p1, "topic":Ljava/lang/String;
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_4
    const-string v1, "uds/notify/updateservice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 540
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/usb/UsbService$4;

    invoke-direct {v3, p0}, Lcom/mega/update/usb/UsbService$4;-><init>(Lcom/mega/update/usb/UsbService;)V

    .line 541
    invoke-virtual {v3}, Lcom/mega/update/usb/UsbService$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 540
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;

    .line 542
    .restart local v1    # "val":Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;
    if-eqz v1, :cond_6

    iget-boolean v3, v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;->valid:Z

    if-nez v3, :cond_5

    goto :goto_4

    .line 546
    :cond_5
    sget-object v2, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "languagetype val.value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.sys.is_support_IR"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 543
    :cond_6
    :goto_4
    sget-object v3, Lcom/mega/update/usb/UsbService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 549
    .end local v1    # "val":Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;
    :cond_7
    :goto_5
    return-void
.end method
