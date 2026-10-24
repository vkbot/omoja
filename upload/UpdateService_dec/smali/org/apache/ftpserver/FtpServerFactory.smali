.class public Lorg/apache/ftpserver/FtpServerFactory;
.super Ljava/lang/Object;
.source "FtpServerFactory.java"


# instance fields
.field private serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-direct {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    .line 50
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/apache/ftpserver/listener/Listener;

    .line 87
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->addListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V

    .line 88
    return-void
.end method

.method public createServer()Lorg/apache/ftpserver/FtpServer;
    .locals 2

    .line 58
    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpServer;

    iget-object v1, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/impl/DefaultFtpServer;-><init>(Lorg/apache/ftpserver/impl/FtpServerContext;)V

    return-object v0
.end method

.method public getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    move-result-object v0

    return-object v0
.end method

.method public getFtplets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplets()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

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

    .line 67
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessageResource()Lorg/apache/ftpserver/message/MessageResource;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    return-object v0
.end method

.method public getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public setCommandFactory(Lorg/apache/ftpserver/command/CommandFactory;)V
    .locals 1
    .param p1, "commandFactory"    # Lorg/apache/ftpserver/command/CommandFactory;

    .line 188
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setCommandFactory(Lorg/apache/ftpserver/command/CommandFactory;)V

    .line 189
    return-void
.end method

.method public setConnectionConfig(Lorg/apache/ftpserver/ConnectionConfig;)V
    .locals 1
    .param p1, "connectionConfig"    # Lorg/apache/ftpserver/ConnectionConfig;

    .line 227
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setConnectionConfig(Lorg/apache/ftpserver/ConnectionConfig;)V

    .line 228
    return-void
.end method

.method public setFileSystem(Lorg/apache/ftpserver/ftplet/FileSystemFactory;)V
    .locals 1
    .param p1, "fileSystem"    # Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    .line 167
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setFileSystemManager(Lorg/apache/ftpserver/ftplet/FileSystemFactory;)V

    .line 168
    return-void
.end method

.method public setFtplets(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "ftplets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    new-instance v1, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;

    invoke-direct {v1, p1}, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setFtpletContainer(Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;)V

    .line 126
    return-void
.end method

.method public setListeners(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setListeners(Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public setMessageResource(Lorg/apache/ftpserver/message/MessageResource;)V
    .locals 1
    .param p1, "messageResource"    # Lorg/apache/ftpserver/message/MessageResource;

    .line 209
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setMessageResource(Lorg/apache/ftpserver/message/MessageResource;)V

    .line 210
    return-void
.end method

.method public setUserManager(Lorg/apache/ftpserver/ftplet/UserManager;)V
    .locals 1
    .param p1, "userManager"    # Lorg/apache/ftpserver/ftplet/UserManager;

    .line 146
    iget-object v0, p0, Lorg/apache/ftpserver/FtpServerFactory;->serverContext:Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->setUserManager(Lorg/apache/ftpserver/ftplet/UserManager;)V

    .line 147
    return-void
.end method
