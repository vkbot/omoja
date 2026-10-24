.class public Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;
.super Ljava/lang/Object;
.source "DefaultFtpletContainer.java"

# interfaces
.implements Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private final ftplets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;-><init>(Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "ftplets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;

    .line 50
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->LOG:Lorg/slf4j/Logger;

    .line 59
    iput-object p1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p3, "reply"    # Lorg/apache/ftpserver/ftplet/FtpReply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 143
    .local v0, "retVal":Lorg/apache/ftpserver/ftplet/FtpletResult;
    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 145
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v3, p1, p2, p3}, Lorg/apache/ftpserver/ftplet/Ftplet;->afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 151
    :cond_0
    sget-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v3, :cond_1

    .line 152
    goto :goto_1

    .line 154
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    :goto_1
    return-object v0
.end method

.method public beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 161
    .local v0, "retVal":Lorg/apache/ftpserver/ftplet/FtpletResult;
    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v3, p1, p2}, Lorg/apache/ftpserver/ftplet/Ftplet;->beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 169
    :cond_0
    sget-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v3, :cond_1

    .line 170
    goto :goto_1

    .line 172
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    :cond_1
    goto :goto_0

    .line 173
    :cond_2
    :goto_1
    return-object v0
.end method

.method public destroy()V
    .locals 6

    .line 90
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/Ftplet;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " :: FtpletHandler.destroy()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public declared-synchronized getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/Ftplet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65
    .end local p0    # "this":Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFtplets()Ljava/util/Map;
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

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    .end local p0    # "this":Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    .locals 3
    .param p1, "ftpletContext"    # Lorg/apache/ftpserver/ftplet/FtpletContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v2, p1}, Lorg/apache/ftpserver/ftplet/Ftplet;->init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    goto :goto_0

    .line 77
    .end local p0    # "this":Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    .end local p1    # "ftpletContext":Lorg/apache/ftpserver/ftplet/FtpletContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 105
    .local v0, "retVal":Lorg/apache/ftpserver/ftplet/FtpletResult;
    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v3, p1}, Lorg/apache/ftpserver/ftplet/Ftplet;->onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 112
    :cond_0
    sget-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v3, :cond_1

    .line 113
    goto :goto_1

    .line 115
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    :goto_1
    return-object v0
.end method

.method public onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 125
    .local v0, "retVal":Lorg/apache/ftpserver/ftplet/FtpletResult;
    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v3, p1}, Lorg/apache/ftpserver/ftplet/Ftplet;->onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    .line 133
    :cond_0
    sget-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v3, :cond_1

    .line 134
    goto :goto_1

    .line 136
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/ftplet/Ftplet;>;"
    :cond_1
    goto :goto_0

    .line 137
    :cond_2
    :goto_1
    return-object v0
.end method
