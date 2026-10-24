.class public Lorg/apache/ftpserver/impl/DefaultFtpServer;
.super Ljava/lang/Object;
.source "DefaultFtpServer.java"

# interfaces
.implements Lorg/apache/ftpserver/FtpServer;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private started:Z

.field private suspended:Z


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpServerContext;)V
    .locals 1
    .param p1, "serverContext"    # Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lorg/apache/ftpserver/impl/DefaultFtpServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    .line 56
    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    .line 62
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 63
    return-void
.end method


# virtual methods
.method public getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;

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

    .line 217
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplets()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;

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

    .line 197
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessageResource()Lorg/apache/ftpserver/message/MessageResource;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    return-object v0
.end method

.method public getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    return-object v0
.end method

.method public getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    return v0
.end method

.method public resume()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Resuming server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    .line 169
    .local v0, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/listener/Listener;

    .line 170
    .local v2, "listener":Lorg/apache/ftpserver/listener/Listener;
    invoke-interface {v2}, Lorg/apache/ftpserver/listener/Listener;->resume()V

    .line 171
    .end local v2    # "listener":Lorg/apache/ftpserver/listener/Listener;
    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    .line 174
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Server resumed"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "startedListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/listener/Listener;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v1

    .line 79
    .local v1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/listener/Listener;

    .line 80
    .local v3, "listener":Lorg/apache/ftpserver/listener/Listener;
    iget-object v4, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v3, v4}, Lorg/apache/ftpserver/listener/Listener;->start(Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 81
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    nop

    .end local v3    # "listener":Lorg/apache/ftpserver/listener/Listener;
    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v2, v3}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V

    .line 87
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    .line 89
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FTP server started"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    nop

    .line 103
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/listener/Listener;

    .line 93
    .restart local v3    # "listener":Lorg/apache/ftpserver/listener/Listener;
    invoke-interface {v3}, Lorg/apache/ftpserver/listener/Listener;->stop()V

    .line 94
    .end local v3    # "listener":Lorg/apache/ftpserver/listener/Listener;
    goto :goto_1

    .line 96
    :cond_1
    instance-of v2, v1, Lorg/apache/ftpserver/ftplet/FtpException;

    if-eqz v2, :cond_2

    .line 97
    move-object v2, v1

    check-cast v2, Lorg/apache/ftpserver/ftplet/FtpException;

    throw v2

    .line 99
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 72
    .end local v0    # "startedListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/listener/Listener;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FtpServer has been stopped. Restart is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 116
    :cond_0
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    .line 117
    .local v0, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/listener/Listener;

    .line 118
    .local v2, "listener":Lorg/apache/ftpserver/listener/Listener;
    invoke-interface {v2}, Lorg/apache/ftpserver/listener/Listener;->stop()V

    .line 119
    .end local v2    # "listener":Lorg/apache/ftpserver/listener/Listener;
    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->destroy()V

    .line 125
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    if-eqz v1, :cond_2

    .line 126
    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->dispose()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 130
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    .line 131
    return-void
.end method

.method public suspend()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Suspending server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    .line 151
    .local v0, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/listener/Listener;

    .line 152
    .local v2, "listener":Lorg/apache/ftpserver/listener/Listener;
    invoke-interface {v2}, Lorg/apache/ftpserver/listener/Listener;->suspend()V

    .line 153
    .end local v2    # "listener":Lorg/apache/ftpserver/listener/Listener;
    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    .line 156
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Server suspended"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 157
    return-void
.end method
