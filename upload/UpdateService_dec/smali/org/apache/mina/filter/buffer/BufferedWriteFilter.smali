.class public final Lorg/apache/mina/filter/buffer/BufferedWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "BufferedWriteFilter.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private bufferSize:I

.field private final buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/LazyInitializedCacheMap<",
            "Lorg/apache/mina/core/session/IoSession;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    const/16 v0, 0x2000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;-><init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;-><init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V

    .line 84
    return-void
.end method

.method public constructor <init>(ILorg/apache/mina/util/LazyInitializedCacheMap;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/mina/util/LazyInitializedCacheMap<",
            "Lorg/apache/mina/core/session/IoSession;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p2, "buffersMap":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 60
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    .line 96
    iput p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-direct {v0}, Lorg/apache/mina/util/LazyInitializedCacheMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    goto :goto_0

    .line 100
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    .line 102
    :goto_0
    return-void
.end method

.method private free(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 227
    iget-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 228
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 231
    :cond_0
    return-void
.end method

.method private internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    monitor-enter p3

    .line 195
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 196
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    move-object v0, v1

    .line 197
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 198
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    sget-object v1, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Flushing buffer: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_0
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 205
    return-void

    .line 198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "data"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 145
    iget-object v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    new-instance v1, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;

    iget v2, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    invoke-direct {v1, v2}, Lorg/apache/mina/filter/buffer/IoBufferLazyInitializer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->putIfAbsent(Ljava/lang/Object;Lorg/apache/mina/util/LazyInitializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 147
    .local v0, "dest":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 148
    return-void
.end method

.method private write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "data"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 162
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 163
    .local v0, "len":I
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 168
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 169
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-direct {p0, v1, p1, p3}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 170
    new-instance v2, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v2, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 171
    return-void

    .line 173
    .end local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :cond_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 174
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    invoke-direct {p0, v1, p1, p3}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 176
    :cond_1
    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :try_start_1
    invoke-virtual {p3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 178
    monitor-exit p3

    .line 181
    .end local v0    # "len":I
    goto :goto_0

    .line 178
    .restart local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/apache/mina/filter/buffer/BufferedWriteFilter;
    .end local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p2    # "data":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p3    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    .end local v0    # "len":I
    .restart local p0    # "this":Lorg/apache/mina/filter/buffer/BufferedWriteFilter;
    .restart local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p2    # "data":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local p3    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->free(Lorg/apache/mina/core/session/IoSession;)V

    .line 239
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 240
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 132
    move-object v1, v0

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This filter should only buffer IoBuffer objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 214
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->buffersMap:Lorg/apache/mina/util/LazyInitializedCacheMap;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/LazyInitializedCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->internalFlush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    return v0
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->free(Lorg/apache/mina/core/session/IoSession;)V

    .line 248
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 249
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 117
    iput p1, p0, Lorg/apache/mina/filter/buffer/BufferedWriteFilter;->bufferSize:I

    .line 118
    return-void
.end method
