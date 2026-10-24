.class public Lcom/mega/update/peripheral/TboxProtocolConverter;
.super Ljava/lang/Object;
.source "TboxProtocolConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/peripheral/TboxProtocolConverter$httpResult;,
        Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFtpServer:Lorg/apache/ftpserver/FtpServer;

.field private final mHandler:Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

.field private mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

.field private mServerFactory:Lorg/apache/ftpserver/FtpServerFactory;

.field private mServerIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

.field private mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

.field private mUserManager:Lorg/apache/ftpserver/ftplet/UserManager;

.field private mUserManagerFactory:Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mServerIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolConverter$1;

    invoke-direct {v0, p0}, Lcom/mega/update/peripheral/TboxProtocolConverter$1;-><init>(Lcom/mega/update/peripheral/TboxProtocolConverter;)V

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    .line 210
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;

    invoke-direct {v0, p0}, Lcom/mega/update/peripheral/TboxProtocolConverter$2;-><init>(Lcom/mega/update/peripheral/TboxProtocolConverter;)V

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;-><init>(Lcom/mega/update/peripheral/TboxProtocolConverter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mHandler:Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 61
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mHandler:Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 61
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mServerIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/update/peripheral/TboxProtocolConverter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/mega/update/peripheral/TboxProtocolConverter;->setupServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mega/update/peripheral/TboxProtocolConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mega/update/peripheral/TboxProtocolConverter;->updateTboxRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mega/update/peripheral/TboxProtocolConverter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 61
    invoke-direct {p0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->getTboxVersionRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 61
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mFtpServer:Lorg/apache/ftpserver/FtpServer;

    return-object v0
.end method

.method private activeTboxRequest(I)Z
    .locals 6
    .param p1, "value"    # I

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "stringsBuff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v3, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x55

    aput v4, v1, v3

    const/4 v3, 0x3

    aput p1, v1, v3

    .line 357
    .local v1, "bytes":[I
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v1, v2

    .line 358
    .local v4, "b":I
    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v4    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    sget-object v2, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeTboxRequest, mesg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v3, "TBOX_UPDATE_SWITCH"

    invoke-virtual {v2, v3, v0}, Lcom/mega/update/rpc/TboxConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private createUserFile()V
    .locals 6

    .line 437
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/ota_package/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 441
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/ota_package/users.properties"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_1
    goto :goto_0

    .line 446
    :catch_0
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    sget-object v3, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserFile Exception ###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getTboxVersionRequest()Z
    .locals 6

    .line 342
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 345
    .local v0, "netStrings":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, "stringsBuff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 347
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_0
    sget-object v2, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTboxVersionRequest, mesg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v3, "TBOX_VERSION"

    invoke-virtual {v2, v3, v1}, Lcom/mega/update/rpc/TboxConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    return v2

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x54t
    .end array-data
.end method

.method private setupServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .line 372
    const-string v0, "default"

    const-string v1, "update/qnx/http/res"

    const-string v2, "update/qnx/http/req"

    const-string v3, "sys.update.ftp"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 373
    .local v3, "isFtp":Z
    const-wide/16 v4, 0x7d0

    if-eqz v3, :cond_1

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mFtpServer:Lorg/apache/ftpserver/FtpServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mFtpServer:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    sget-object v1, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    const-string v2, "stop ftpServer"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mFtpServer:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->stop()V

    .line 378
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 380
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    iput-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mServerFactory:Lorg/apache/ftpserver/FtpServerFactory;

    .line 381
    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    .line 382
    .local v1, "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    const-string v2, "admin"

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 383
    const-string v2, "123456"

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    .line 384
    const-string v2, "/data/ota_package/"

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    new-instance v4, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v4}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    .line 390
    new-instance v4, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    invoke-direct {v4}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;-><init>()V

    iput-object v4, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mUserManagerFactory:Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    .line 391
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/ota_package/users.properties"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v4, "files":Ljava/io/File;
    iget-object v5, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mUserManagerFactory:Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    invoke-virtual {v5, v4}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->setFile(Ljava/io/File;)V

    .line 393
    iget-object v5, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mUserManagerFactory:Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    invoke-virtual {v5}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->createUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mUserManager:Lorg/apache/ftpserver/ftplet/UserManager;

    .line 394
    invoke-interface {v5, v1}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    .line 395
    iget-object v5, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mServerFactory:Lorg/apache/ftpserver/FtpServerFactory;

    iget-object v6, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mUserManager:Lorg/apache/ftpserver/ftplet/UserManager;

    invoke-virtual {v5, v6}, Lorg/apache/ftpserver/FtpServerFactory;->setUserManager(Lorg/apache/ftpserver/ftplet/UserManager;)V

    .line 397
    new-instance v5, Lorg/apache/ftpserver/listener/ListenerFactory;

    invoke-direct {v5}, Lorg/apache/ftpserver/listener/ListenerFactory;-><init>()V

    .line 398
    .local v5, "listenerFactory":Lorg/apache/ftpserver/listener/ListenerFactory;
    const/16 v6, 0x849

    invoke-virtual {v5, v6}, Lorg/apache/ftpserver/listener/ListenerFactory;->setPort(I)V

    .line 399
    const-string v6, "172.30.80.3"

    invoke-virtual {v5, v6}, Lorg/apache/ftpserver/listener/ListenerFactory;->setServerAddress(Ljava/lang/String;)V

    .line 400
    iget-object v6, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mServerFactory:Lorg/apache/ftpserver/FtpServerFactory;

    invoke-virtual {v5}, Lorg/apache/ftpserver/listener/ListenerFactory;->createListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/apache/ftpserver/FtpServerFactory;->addListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V

    .line 402
    iget-object v6, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mServerFactory:Lorg/apache/ftpserver/FtpServerFactory;

    invoke-virtual {v6}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v6

    iput-object v6, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mFtpServer:Lorg/apache/ftpserver/FtpServer;

    .line 403
    invoke-interface {v6}, Lorg/apache/ftpserver/FtpServer;->start()V

    .line 404
    sget-object v6, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    const-string v7, "startFtpServer succeeded!"

    invoke-static {v6, v7}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return-object v0

    .line 406
    .end local v1    # "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    .end local v2    # "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    .end local v4    # "files":Ljava/io/File;
    .end local v5    # "listenerFactory":Lorg/apache/ftpserver/listener/ListenerFactory;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    sget-object v1, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFtpServer Exception ### "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 412
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v6, "{\"cmd\":0}"

    const/16 v7, 0x1388

    invoke-virtual {v0, v2, v6, v1, v7}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 418
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 419
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"filename\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\",\"cmd\":1}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1, v7}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 424
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 425
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/peripheral/TboxProtocolConverter$3;

    invoke-direct {v4, p0}, Lcom/mega/update/peripheral/TboxProtocolConverter$3;-><init>(Lcom/mega/update/peripheral/TboxProtocolConverter;)V

    .line 426
    invoke-virtual {v4}, Lcom/mega/update/peripheral/TboxProtocolConverter$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 425
    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/peripheral/TboxProtocolConverter$httpResult;

    .line 427
    .local v2, "result":Lcom/mega/update/peripheral/TboxProtocolConverter$httpResult;
    iget-object v4, v2, Lcom/mega/update/peripheral/TboxProtocolConverter$httpResult;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 428
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "res":Ljava/lang/String;
    .end local v2    # "result":Lcom/mega/update/peripheral/TboxProtocolConverter$httpResult;
    :catch_1
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    sget-object v1, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startHttpServer Exception ### "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateTboxRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sha256"    # Ljava/lang/String;
    .param p3, "otaFile"    # Ljava/lang/String;

    .line 307
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 310
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "stringsBuff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v4, "sys.update.ftp"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 313
    .local v4, "isFtp":Z
    const-string v6, "0X2C"

    const-string v7, "0X51"

    const-string v8, ","

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    .line 314
    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, "strs":[Ljava/lang/String;
    array-length v11, v10

    sub-int/2addr v11, v5

    aget-object v5, v10, v11

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "admin,123456,"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "cmd":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x2

    int-to-short v8, v8

    .line 318
    .local v8, "length":S
    invoke-static {v8}, Lcom/mega/update/peripheral/TboxProtocolUtil;->short2byte(S)[B

    move-result-object v11

    .line 319
    .local v11, "updateStrings":[B
    array-length v12, v11

    move v13, v9

    :goto_0
    if-ge v13, v12, :cond_0

    aget-byte v14, v11, v13

    .local v14, "b":B
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v14    # "b":B
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v7, "0X31"

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v9, v7, :cond_1

    aget-byte v12, v6, v9

    .local v12, "b":B
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v12    # "b":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 324
    .end local v10    # "strs":[Ljava/lang/String;
    :cond_1
    move-object/from16 v10, p1

    goto :goto_4

    .line 325
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v8    # "length":S
    .end local v11    # "updateStrings":[B
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p1

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    .restart local v5    # "cmd":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x2

    int-to-short v8, v8

    .line 327
    .restart local v8    # "length":S
    invoke-static {v8}, Lcom/mega/update/peripheral/TboxProtocolUtil;->short2byte(S)[B

    move-result-object v11

    .line 328
    .restart local v11    # "updateStrings":[B
    array-length v12, v11

    move v13, v9

    :goto_2
    if-ge v13, v12, :cond_3

    aget-byte v14, v11, v13

    .restart local v14    # "b":B
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v14    # "b":B
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 329
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v7, "0X30"

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    :goto_3
    if-ge v9, v7, :cond_4

    aget-byte v12, v6, v9

    .restart local v12    # "b":B
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v12    # "b":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 334
    :cond_4
    :goto_4
    sget-object v6, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateTboxRequest, cmd="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " length="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " otaFile="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " fileName="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mesg="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-static {v6, v7}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v9, "TBOX_DOWNLOAD_UPDATE"

    invoke-virtual {v7, v9, v3}, Lcom/mega/update/rpc/TboxConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    return v7
.end method


# virtual methods
.method public deInit()V
    .locals 3

    .line 97
    sget-object v0, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    const-string v1, "deInit"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v1, "TBOX_DOWNLOAD_UPDATE"

    invoke-virtual {v0, v1}, Lcom/mega/update/rpc/TboxConnector;->removeCallback(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v1, "TBOX_UPDATE_PROGRESS"

    invoke-virtual {v0, v1}, Lcom/mega/update/rpc/TboxConnector;->removeCallback(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v1, "TBOX_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Lcom/mega/update/rpc/TboxConnector;->removeCallback(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v1, "TBOX_UPDATE_SWITCH"

    invoke-virtual {v0, v1}, Lcom/mega/update/rpc/TboxConnector;->removeCallback(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    const-string v1, "TBOX_VERSION"

    invoke-virtual {v0, v1}, Lcom/mega/update/rpc/TboxConnector;->removeCallback(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    const-string v2, "update/tbox/start/req"

    invoke-virtual {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    const-string v2, "update/tbox/active/req"

    invoke-virtual {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    const-string v2, "update/tbox/version/req"

    invoke-virtual {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector;->removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public init()V
    .locals 3

    .line 82
    sget-object v0, Lcom/mega/update/peripheral/TboxProtocolConverter;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/mega/update/rpc/TboxConnector;->getInstance()Lcom/mega/update/rpc/TboxConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    .line 84
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    .line 85
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

    const-string v2, "TBOX_DOWNLOAD_UPDATE"

    invoke-virtual {v0, v2, v1}, Lcom/mega/update/rpc/TboxConnector;->addCallback(Ljava/lang/String;Lcom/mega/update/rpc/TboxConnector$Callback;)V

    .line 86
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

    const-string v2, "TBOX_UPDATE_PROGRESS"

    invoke-virtual {v0, v2, v1}, Lcom/mega/update/rpc/TboxConnector;->addCallback(Ljava/lang/String;Lcom/mega/update/rpc/TboxConnector$Callback;)V

    .line 87
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

    const-string v2, "TBOX_UPDATE_RESULT"

    invoke-virtual {v0, v2, v1}, Lcom/mega/update/rpc/TboxConnector;->addCallback(Ljava/lang/String;Lcom/mega/update/rpc/TboxConnector$Callback;)V

    .line 88
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

    const-string v2, "TBOX_UPDATE_SWITCH"

    invoke-virtual {v0, v2, v1}, Lcom/mega/update/rpc/TboxConnector;->addCallback(Ljava/lang/String;Lcom/mega/update/rpc/TboxConnector$Callback;)V

    .line 89
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxConnector:Lcom/mega/update/rpc/TboxConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mTboxCallBack:Lcom/mega/update/rpc/TboxConnector$Callback;

    const-string v2, "TBOX_VERSION"

    invoke-virtual {v0, v2, v1}, Lcom/mega/update/rpc/TboxConnector;->addCallback(Ljava/lang/String;Lcom/mega/update/rpc/TboxConnector$Callback;)V

    .line 90
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    const-string v2, "update/tbox/start/req"

    invoke-virtual {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    const-string v2, "update/tbox/active/req"

    invoke-virtual {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMegaConnector:Lcom/mega/update/rpc/MegaConnector;

    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter;->mMessageCenterCallBack:Lcom/mega/update/rpc/MegaConnector$Callback;

    const-string v2, "update/tbox/version/req"

    invoke-virtual {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->createUserFile()V

    .line 94
    return-void
.end method
