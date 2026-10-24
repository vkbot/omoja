.class public abstract Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "AbstractStreamWriteFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/filterchain/IoFilterAdapter;"
    }
.end annotation


# static fields
.field protected static final CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

.field protected static final CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x1000

.field protected static final WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private writeBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const-class v0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "stream"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    .line 53
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "queue"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    .line 55
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "writeRequest"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 57
    const/16 v0, 0x1000

    iput v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return-void
.end method

.method private getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    sget-object v0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method private removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    sget-object v0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    sget-object v0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object v0

    .line 80
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object v0, v1

    .line 82
    sget-object v1, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 87
    return-void

    .line 90
    .end local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    :cond_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "message":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "stream":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 98
    .local v2, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v2, :cond_2

    .line 100
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    .line 101
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 103
    :cond_2
    sget-object v3, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v3, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v3, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v3, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v3, v2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 108
    .end local v1    # "stream":Ljava/lang/Object;, "TT;"
    .end local v2    # "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    goto :goto_1

    .line 109
    :cond_3
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 111
    :goto_1
    return-void
.end method

.method protected abstract getMessageClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getWriteBufferSize()I
    .locals 1

    .line 167
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    iget v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "stream":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 133
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 137
    .local v1, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v1, :cond_2

    .line 139
    sget-object v2, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    .line 143
    .local v2, "currentWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object v3

    .line 145
    .local v3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    if-eqz v3, :cond_1

    .line 146
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    .line 148
    .local v4, "wr":Lorg/apache/mina/core/write/WriteRequest;
    :goto_0
    if-eqz v4, :cond_1

    .line 149
    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 150
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    goto :goto_0

    .line 154
    .end local v4    # "wr":Lorg/apache/mina/core/write/WriteRequest;
    :cond_1
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    .line 155
    invoke-interface {p1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 156
    .end local v2    # "currentWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    .end local v3    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/write/WriteRequest;>;"
    goto :goto_1

    .line 157
    :cond_2
    new-instance v2, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v2, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 160
    .end local v1    # "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_1
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 4
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilterAdapter;>;"
    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only one "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is permitted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWriteBufferSize(I)V
    .locals 2
    .param p1, "writeBufferSize"    # I

    .line 178
    .local p0, "this":Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;, "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<TT;>;"
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 182
    iput p1, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    .line 183
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeBufferSize must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
