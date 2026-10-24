.class public Lorg/apache/ftpserver/impl/DefaultFtpServerContext;
.super Ljava/lang/Object;
.source "DefaultFtpServerContext.java"

# interfaces
.implements Lorg/apache/ftpserver/impl/FtpServerContext;


# static fields
.field private static final ADMIN_AUTHORITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANON_AUTHORITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

.field private connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

.field private fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

.field private ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;"
        }
    .end annotation
.end field

.field private messageResource:Lorg/apache/ftpserver/message/MessageResource;

.field private statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private userManager:Lorg/apache/ftpserver/ftplet/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ADMIN_AUTHORITIES:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ANON_AUTHORITIES:Ljava/util/List;

    .line 91
    sget-object v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ADMIN_AUTHORITIES:Ljava/util/List;

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v1}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ANON_AUTHORITIES:Ljava/util/List;

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ANON_AUTHORITIES:Ljava/util/List;

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    const/16 v2, 0x12c0

    invoke-direct {v1, v2, v2}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    .line 64
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    .line 66
    new-instance v0, Lorg/apache/ftpserver/message/MessageResourceFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;->createMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->messageResource:Lorg/apache/ftpserver/message/MessageResource;

    .line 68
    new-instance v0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->createUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->userManager:Lorg/apache/ftpserver/ftplet/UserManager;

    .line 70
    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    .line 72
    new-instance v0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;

    invoke-direct {v0}, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    .line 74
    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;

    invoke-direct {v0}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

    .line 76
    new-instance v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/CommandFactoryFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/command/CommandFactoryFactory;->createCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

    .line 78
    new-instance v0, Lorg/apache/ftpserver/ConnectionConfigFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/ConnectionConfigFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/ConnectionConfigFactory;->createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 100
    new-instance v1, Lorg/apache/ftpserver/listener/ListenerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/listener/ListenerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/listener/ListenerFactory;->createListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/apache/ftpserver/listener/Listener;

    .line 230
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public createDefaultUsers()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    .line 110
    .local v0, "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/UserManager;->getAdminName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "adminName":Ljava/lang/String;
    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/UserManager;->doesExist(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "./res/home"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating user : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 113
    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    .line 114
    .local v2, "adminUser":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    .line 118
    sget-object v5, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ADMIN_AUTHORITIES:Ljava/util/List;

    invoke-virtual {v2, v5}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    .line 120
    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    .line 122
    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    .line 126
    .end local v2    # "adminUser":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    :cond_0
    const-string v2, "anonymous"

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/UserManager;->doesExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 127
    iget-object v5, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Creating user : anonymous"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 128
    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v5}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    .line 129
    .local v5, "anonUser":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 130
    const-string v2, ""

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    .line 132
    sget-object v2, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ANON_AUTHORITIES:Ljava/util/List;

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    .line 134
    invoke-virtual {v5, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    .line 136
    invoke-virtual {v5, v3}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 137
    const/16 v2, 0x12c

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    .line 138
    invoke-interface {v0, v5}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    .line 140
    .end local v5    # "anonUser":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Shutting down the thread pool executor"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    .line 209
    throw v0

    .line 206
    :catch_0
    move-exception v0

    .line 211
    :cond_0
    :goto_0
    return-void
.end method

.method public getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

    return-object v0
.end method

.method public getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    return-object v0
.end method

.method public getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    return-object v0
.end method

.method public getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

    return-object v0
.end method

.method public getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;

    move-result-object v0

    return-object v0
.end method

.method public getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/listener/Listener;

    return-object v0
.end method

.method public getListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageResource()Lorg/apache/ftpserver/message/MessageResource;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->messageResource:Lorg/apache/ftpserver/message/MessageResource;

    return-object v0
.end method

.method public declared-synchronized getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 4

    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    invoke-interface {v0}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxThreads()I

    move-result v0

    .line 268
    .local v0, "maxThreads":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 269
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    invoke-interface {v1}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLogins()I

    move-result v1

    .line 270
    .local v1, "maxLogins":I
    if-lez v1, :cond_0

    .line 271
    move v0, v1

    goto :goto_0

    .line 274
    :cond_0
    const/16 v0, 0x10

    .line 277
    .end local v1    # "maxLogins":I
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpServerContext;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Intializing shared thread pool executor with max threads of {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-direct {v1, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 280
    .end local v0    # "maxThreads":I
    :cond_2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->userManager:Lorg/apache/ftpserver/ftplet/UserManager;

    return-object v0
.end method

.method public removeListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/listener/Listener;

    return-object v0
.end method

.method public setCommandFactory(Lorg/apache/ftpserver/command/CommandFactory;)V
    .locals 0
    .param p1, "commandFactory"    # Lorg/apache/ftpserver/command/CommandFactory;

    .line 238
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

    .line 239
    return-void
.end method

.method public setConnectionConfig(Lorg/apache/ftpserver/ConnectionConfig;)V
    .locals 0
    .param p1, "connectionConfig"    # Lorg/apache/ftpserver/ConnectionConfig;

    .line 262
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    .line 263
    return-void
.end method

.method public setFileSystemManager(Lorg/apache/ftpserver/ftplet/FileSystemFactory;)V
    .locals 0
    .param p1, "fileSystemManager"    # Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    .line 242
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    .line 243
    return-void
.end method

.method public setFtpStatistics(Lorg/apache/ftpserver/ftplet/FtpStatistics;)V
    .locals 0
    .param p1, "statistics"    # Lorg/apache/ftpserver/ftplet/FtpStatistics;

    .line 171
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

    .line 172
    return-void
.end method

.method public setFtpletContainer(Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;)V
    .locals 0
    .param p1, "ftpletContainer"    # Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    .line 246
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    .line 247
    return-void
.end method

.method public setListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/apache/ftpserver/listener/Listener;

    .line 218
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public setListeners(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    .line 227
    return-void
.end method

.method public setMessageResource(Lorg/apache/ftpserver/message/MessageResource;)V
    .locals 0
    .param p1, "messageResource"    # Lorg/apache/ftpserver/message/MessageResource;

    .line 250
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->messageResource:Lorg/apache/ftpserver/message/MessageResource;

    .line 251
    return-void
.end method

.method public setUserManager(Lorg/apache/ftpserver/ftplet/UserManager;)V
    .locals 0
    .param p1, "userManager"    # Lorg/apache/ftpserver/ftplet/UserManager;

    .line 254
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->userManager:Lorg/apache/ftpserver/ftplet/UserManager;

    .line 255
    return-void
.end method
