.class Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;
.super Lorg/apache/logging/log4j/core/util/Log4jThread;
.source "TcpSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/TcpSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reconnector"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final owner:Ljava/lang/Object;

.field private shutdown:Z

.field final synthetic this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V
    .locals 1
    .param p2, "owner"    # Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "owner"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    .line 313
    const-string p1, "TcpSocketManager-Reconnector"

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 308
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->shutdown:Z

    .line 314
    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->owner:Ljava/lang/Object;

    .line 315
    return-void
.end method

.method private connect(Ljava/net/InetSocketAddress;)V
    .locals 10
    .param p1, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->createSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object v0

    .line 370
    .local v0, "sock":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 371
    .local v1, "newOS":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$600(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$600(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 372
    .local v2, "prev":Ljava/net/InetAddress;
    :goto_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->owner:Ljava/lang/Object;

    monitor-enter v4

    .line 373
    :try_start_0
    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v5}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$700(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 374
    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v5, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$800(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Ljava/io/OutputStream;)V

    .line 375
    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$602(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Ljava/net/Socket;)Ljava/net/Socket;

    .line 376
    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v5, v3}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$902(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;)Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    .line 377
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->shutdown:Z

    .line 378
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "reestablished"

    goto :goto_1

    :cond_1
    const-string v3, "established"

    :goto_1
    move-object v8, v3

    .line 381
    .local v8, "type":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$1000()Lorg/apache/logging/log4j/Logger;

    move-result-object v4

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget-object v6, v3, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->host:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget v3, v3, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$600(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)Ljava/net/Socket;

    move-result-object v9

    const-string v5, "Connection to {}:{} {}: {}"

    invoke-interface/range {v4 .. v9}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    return-void

    .line 378
    .end local v8    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public latch()V
    .locals 1

    .line 319
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 323
    :goto_0
    return-void
.end method

.method reconnect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->RESOLVER:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget-object v1, v1, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->host:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget v2, v2, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;->resolveHost(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Reconnecting "

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 350
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$400()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->connect(Ljava/net/InetSocketAddress;)V

    .line 365
    return-void

    .line 353
    :cond_0
    const/4 v1, 0x0

    .line 354
    .local v1, "ioe":Ljava/io/IOException;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    .line 356
    .local v4, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$500()Lorg/apache/logging/log4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->connect(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    return-void

    .line 359
    :catch_0
    move-exception v5

    .line 360
    .local v5, "ex":Ljava/io/IOException;
    move-object v1, v5

    .line 362
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v5    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 363
    :cond_1
    throw v1
.end method

.method public run()V
    .locals 5

    .line 331
    :goto_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->shutdown:Z

    if-nez v0, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$000(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->sleep(J)V

    .line 334
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->reconnect()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 343
    goto :goto_2

    .line 342
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$300()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "Unable to reconnect to {}:{}"

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget-object v3, v3, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->host:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget v4, v4, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 337
    :catch_1
    move-exception v0

    .line 338
    .local v0, "ex":Ljava/net/ConnectException;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "{}:{} refused connection"

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget-object v3, v3, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->host:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget v4, v4, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "ex":Ljava/net/ConnectException;
    goto :goto_1

    .line 335
    :catch_2
    move-exception v0

    .line 336
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "Reconnection interrupted."

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 342
    :goto_2
    goto :goto_0

    :goto_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 345
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->shutdown:Z

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconnector [latch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shutdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->shutdown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
