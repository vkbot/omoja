.class Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "NioDatagramAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "nHandles":I
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$002(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)J

    .line 159
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 161
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    const-wide/16 v1, 0x3e8

    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v3, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->select(J)I

    move-result v3

    .line 165
    .local v3, "selected":I
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$300(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I

    move-result v4
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v4

    .line 167
    if-nez v0, :cond_1

    .line 169
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 171
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$400(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$500(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$602(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 177
    goto :goto_1

    .line 176
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 177
    nop

    .end local v0    # "nHandles":I
    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    throw v4

    .line 180
    .restart local v0    # "nHandles":I
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    .line 181
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    iget-object v5, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectedHandles()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$700(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V

    .line 184
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 185
    .local v4, "currentTime":J
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6, v4, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$800(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V

    .line 186
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$900(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I

    move-result v6

    sub-int/2addr v0, v6

    .line 188
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6, v4, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1000(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    :try_end_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "selected":I
    .end local v4    # "currentTime":J
    goto :goto_2

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 197
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    goto :goto_2

    .line 198
    :catch_1
    move-exception v1

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_0

    .line 189
    :catch_2
    move-exception v1

    .line 191
    .local v1, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 203
    .end local v1    # "cse":Ljava/nio/channels/ClosedSelectorException;
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$202(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z

    .line 206
    const/4 v1, 0x1

    :try_start_4
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    :goto_4
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    .line 211
    goto :goto_6

    .line 210
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 207
    :catch_3
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 210
    :goto_5
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    .line 211
    throw v2

    .line 213
    :cond_4
    :goto_6
    return-void
.end method
