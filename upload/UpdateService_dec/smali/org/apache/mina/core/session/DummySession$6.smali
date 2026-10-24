.class Lorg/apache/mina/core/session/DummySession$6;
.super Ljava/lang/Object;
.source "DummySession.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/session/DummySession;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "Lorg/apache/mina/core/session/IoSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/DummySession;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/DummySession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/mina/core/session/DummySession;

    .line 148
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession$6;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 155
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 220
    return-void
.end method

.method public flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 9
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 162
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/DummySession;

    .line 163
    .local v0, "s":Lorg/apache/mina/core/session/DummySession;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/DummySession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    .line 167
    .local v1, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "m":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v3, :cond_0

    .line 170
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/core/file/FileRegion;

    .line 172
    .local v3, "file":Lorg/apache/mina/core/file/FileRegion;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v5

    invoke-interface {v3}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 173
    invoke-interface {v3}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/file/FileRegion;->update(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/DummySession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 178
    .end local v3    # "file":Lorg/apache/mina/core/file/FileRegion;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/core/session/DummySession$6;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-virtual {v3}, Lorg/apache/mina/core/session/DummySession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 180
    .end local v2    # "m":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 201
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    .line 204
    :cond_0
    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 212
    return-void
.end method

.method public write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 187
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 189
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 191
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/DummySession$6;->flush(Lorg/apache/mina/core/session/IoSession;)V

    .line 194
    :cond_0
    return-void
.end method
