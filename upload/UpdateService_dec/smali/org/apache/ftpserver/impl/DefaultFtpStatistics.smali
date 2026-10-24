.class public Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
.super Ljava/lang/Object;
.source "DefaultFtpStatistics.java"

# interfaces
.implements Lorg/apache/ftpserver/impl/ServerFtpStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    }
.end annotation


# static fields
.field public static final LOGIN_NUMBER:Ljava/lang/String; = "login_number"


# instance fields
.field private bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

.field private bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

.field private currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

.field private currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

.field private mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

.field private rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private startTime:Ljava/util/Date;

.field private totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

.field private uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private userLoginTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 47
    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->startTime:Ljava/util/Date;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    return-void
.end method

.method private notifyCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 505
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 506
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyCloseConnection()V

    .line 509
    :cond_0
    return-void
.end method

.method private notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 450
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 451
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyDelete()V

    .line 455
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 456
    .local v1, "fileObserver":Lorg/apache/ftpserver/impl/FileObserver;
    if-eqz v1, :cond_1

    .line 457
    invoke-interface {v1, p1, p2}, Lorg/apache/ftpserver/impl/FileObserver;->notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    .line 459
    :cond_1
    return-void
.end method

.method private notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p3, "size"    # J

    .line 435
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 436
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyDownload()V

    .line 440
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 441
    .local v1, "fileObserver":Lorg/apache/ftpserver/impl/FileObserver;
    if-eqz v1, :cond_1

    .line 442
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/FileObserver;->notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V

    .line 444
    :cond_1
    return-void
.end method

.method private notifyLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 515
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 516
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    .line 520
    .local v1, "user":Lorg/apache/ftpserver/ftplet/User;
    const/4 v2, 0x0

    .line 521
    .local v2, "anonymous":Z
    if-eqz v1, :cond_1

    .line 522
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "login":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 525
    .end local v3    # "login":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyLogin(Z)V

    .line 527
    .end local v1    # "user":Lorg/apache/ftpserver/ftplet/User;
    .end local v2    # "anonymous":Z
    :cond_2
    return-void
.end method

.method private notifyLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 533
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 534
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 536
    nop

    .line 537
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 536
    invoke-interface {v0, v1}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyLoginFail(Ljava/net/InetAddress;)V

    .line 541
    :cond_0
    return-void
.end method

.method private notifyLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 547
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 548
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    .line 551
    .local v1, "user":Lorg/apache/ftpserver/ftplet/User;
    const/4 v2, 0x0

    .line 552
    .local v2, "anonymous":Z
    if-eqz v1, :cond_1

    .line 553
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "login":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 556
    .end local v3    # "login":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyLogout(Z)V

    .line 558
    .end local v1    # "user":Lorg/apache/ftpserver/ftplet/User;
    .end local v2    # "anonymous":Z
    :cond_2
    return-void
.end method

.method private notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 465
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 466
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyMkdir()V

    .line 470
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 471
    .local v1, "fileObserver":Lorg/apache/ftpserver/impl/FileObserver;
    if-eqz v1, :cond_1

    .line 472
    invoke-interface {v1, p1, p2}, Lorg/apache/ftpserver/impl/FileObserver;->notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    .line 474
    :cond_1
    return-void
.end method

.method private notifyOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 495
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 496
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyOpenConnection()V

    .line 499
    :cond_0
    return-void
.end method

.method private notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 480
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 481
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyRmdir()V

    .line 485
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 486
    .local v1, "fileObserver":Lorg/apache/ftpserver/impl/FileObserver;
    if-eqz v1, :cond_1

    .line 487
    invoke-interface {v1, p1, p2}, Lorg/apache/ftpserver/impl/FileObserver;->notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    .line 489
    :cond_1
    return-void
.end method

.method private notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p3, "size"    # J

    .line 419
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 420
    .local v0, "observer":Lorg/apache/ftpserver/impl/StatisticsObserver;
    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/StatisticsObserver;->notifyUpload()V

    .line 424
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 425
    .local v1, "fileObserver":Lorg/apache/ftpserver/impl/FileObserver;
    if-eqz v1, :cond_1

    .line 426
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/FileObserver;->notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V

    .line 428
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentAnonymousLoginNumber()I
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCurrentConnectionNumber()I
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCurrentLoginNumber()I
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;)I
    .locals 2
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v0, "userLogins":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 240
    :cond_0
    :try_start_1
    iget-object v1, v0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 235
    .end local v0    # "userLogins":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;Ljava/net/InetAddress;)I
    .locals 2
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;
    .param p2, "ipAddress"    # Ljava/net/InetAddress;

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .local v0, "userLogins":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    if-nez v0, :cond_0

    .line 256
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 258
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 253
    .end local v0    # "userLogins":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    .end local p2    # "ipAddress":Ljava/net/InetAddress;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->startTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalAnonymousLoginNumber()I
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalConnectionNumber()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDeleteNumber()I
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDirectoryCreated()I
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDirectoryRemoved()I
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDownloadNumber()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalDownloadSize()J
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalFailedLoginNumber()I
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalLoginNumber()I
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalUploadNumber()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTotalUploadSize()J
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized resetStatisticsCounters()V
    .locals 3

    monitor-enter p0

    .line 564
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->startTime:Ljava/util/Date;

    .line 566
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 567
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 568
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 570
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 571
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 573
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 574
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 575
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 576
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 578
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 579
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-void

    .line 563
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 327
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 323
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->deleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 290
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 288
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p3, "size"    # J

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 280
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesDownload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 281
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local p3    # "size":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFileObserver(Lorg/apache/ftpserver/impl/FileObserver;)V
    .locals 0
    .param p1, "observer"    # Lorg/apache/ftpserver/impl/FileObserver;

    .line 118
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->fileObserver:Lorg/apache/ftpserver/impl/FileObserver;

    .line 119
    return-void
.end method

.method public declared-synchronized setLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 335
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 336
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    .line 337
    .local v0, "user":Lorg/apache/ftpserver/ftplet/User;
    const-string v1, "anonymous"

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 339
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 342
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;

    .line 345
    .local v1, "statisticsTable":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    if-nez v1, :cond_2

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 352
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v2, v3

    .line 354
    :cond_1
    new-instance v3, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;

    invoke-direct {v3, v2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;-><init>(Ljava/net/InetAddress;)V

    move-object v1, v3

    .line 355
    iget-object v3, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    nop

    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 357
    :cond_2
    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 359
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_3

    .line 360
    nop

    .line 361
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 362
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 367
    .end local v1    # "statisticsTable":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    .end local v0    # "user":Lorg/apache/ftpserver/ftplet/User;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalFailedLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 377
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 375
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    .local v0, "user":Lorg/apache/ftpserver/ftplet/User;
    if-nez v0, :cond_0

    .line 386
    monitor-exit p0

    return-void

    .line 389
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 391
    const-string v1, "anonymous"

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currAnonLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 395
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    :cond_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 396
    :try_start_2
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->userLoginTable:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;

    .line 398
    .local v1, "userLogins":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    if-eqz v1, :cond_2

    .line 399
    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 400
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    .line 401
    nop

    .line 402
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 403
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 407
    .end local v1    # "userLogins":Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 410
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 383
    .end local v0    # "user":Lorg/apache/ftpserver/ftplet/User;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->mkdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 299
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setObserver(Lorg/apache/ftpserver/impl/StatisticsObserver;)V
    .locals 0
    .param p1, "observer"    # Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 111
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->observer:Lorg/apache/ftpserver/impl/StatisticsObserver;

    .line 112
    return-void
.end method

.method public declared-synchronized setOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->currConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 316
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 317
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 314
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->rmdirCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 308
    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 306
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "file"    # Lorg/apache/ftpserver/ftplet/FtpFile;
    .param p3, "size"    # J

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 270
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->bytesUpload:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;->notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 268
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local p3    # "size":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
