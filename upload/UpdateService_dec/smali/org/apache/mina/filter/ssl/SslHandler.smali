.class Lorg/apache/mina/filter/ssl/SslHandler;
.super Ljava/lang/Object;
.source "SslHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final filterWriteEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private firstSSLNegociation:Z

.field private handshakeComplete:Z

.field private handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final messageReceivedEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final preHandshakeEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private sslEngine:Ljavax/net/ssl/SSLEngine;

.field private final sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

.field private writingEncryptedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "sslFilter"    # Lorg/apache/mina/filter/ssl/SslFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 127
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    .line 128
    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    .line 129
    return-void
.end method

.method private checkStatus(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 6
    .param p1, "res"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 510
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    .line 520
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 525
    :cond_0
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "SSL/TLS close_notify received"

    invoke-direct {v1, v2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "exception":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    .line 529
    .local v3, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {v3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    .line 530
    .local v4, "writeRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    invoke-virtual {v4}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v5

    .line 531
    .local v5, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    invoke-interface {v5, v1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 532
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 533
    .end local v3    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    .end local v4    # "writeRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    .end local v5    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    goto :goto_0

    .line 536
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    .line 537
    .local v2, "queue":Lorg/apache/mina/core/write/WriteRequestQueue;
    const/4 v3, 0x0

    .line 539
    .local v3, "request":Lorg/apache/mina/core/write/WriteRequest;
    :goto_1
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v2, v4}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_2

    .line 540
    invoke-interface {v3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    .line 541
    .local v4, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    invoke-interface {v4, v1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 542
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 543
    .end local v4    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    goto :goto_1

    .line 546
    :cond_2
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 547
    nop

    .line 551
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "queue":Lorg/apache/mina/core/write/WriteRequestQueue;
    .end local v3    # "request":Lorg/apache/mina/core/write/WriteRequest;
    :goto_2
    return-void

    .line 522
    :cond_3
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLEngine error during decrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inNetBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "appBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;

    .line 833
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 834
    .local v0, "copy":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 835
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 836
    return-object v0
.end method

.method private createOutNetBuffer(I)V
    .locals 3
    .param p1, "expectedRemaining"    # I

    .line 648
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 650
    .local v0, "capacity":I
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 653
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 655
    :goto_0
    return-void
.end method

.method private doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    .line 816
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    move-object v1, v0

    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 819
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method private renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "res"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 746
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    .line 747
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    .line 748
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 751
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 752
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 754
    :cond_0
    return-void
.end method

.method private unwrap()Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 775
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 776
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 779
    .local v1, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    .line 781
    .local v2, "localHandshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_2

    .line 784
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    .line 786
    .local v3, "newCapacity":I
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 792
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 793
    goto :goto_1

    .line 789
    :cond_1
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "SSL buffer overflow"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 796
    .end local v3    # "newCapacity":I
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 798
    goto :goto_2

    .line 800
    :cond_3
    :goto_1
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v3, :cond_4

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_5

    :cond_4
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v3, :cond_6

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v3, :cond_6

    .line 804
    :cond_5
    :goto_2
    return-object v0

    .line 800
    :cond_6
    goto :goto_0
.end method

.method private unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 711
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 712
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 714
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 718
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 719
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 720
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 721
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 727
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 728
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 731
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    goto :goto_1

    .line 734
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 735
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 737
    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 738
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 742
    :goto_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    return-object v1

    .line 708
    .end local v0    # "res":Ljavax/net/ssl/SSLEngineResult;
    :cond_5
    :goto_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method


# virtual methods
.method closeOutbound()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 482
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 486
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 487
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 488
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    shl-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 489
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 499
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 501
    return v3

    .line 496
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improper close state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_3
    :goto_1
    return v1
.end method

.method destroy()V
    .locals 4

    .line 202
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 208
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception from SSLEngine.closeInbound()."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_2

    .line 216
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 218
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 222
    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 223
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_3

    .line 227
    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 228
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 229
    throw v1

    .line 224
    :catch_1
    move-exception v1

    .line 227
    :goto_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 228
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 229
    nop

    .line 231
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 232
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 234
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 235
    return-void
.end method

.method encrypt(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 433
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v0, :cond_6

    .line 437
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 441
    :cond_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 447
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 451
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 452
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_3

    .line 453
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_4

    .line 456
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 457
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 462
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_3
    :goto_1
    goto :goto_0

    .line 459
    .restart local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_4
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLEngine error during encrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "outNetBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_5
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 465
    return-void

    .line 434
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 401
    .local v0, "newAppBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 403
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    return-object v1
.end method

.method fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 415
    .local v0, "answer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v0, :cond_0

    .line 416
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v1

    .line 419
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 421
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    return-object v1
.end method

.method flushFilterWrite()V
    .locals 4

    .line 307
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    move-object v1, v0

    .local v1, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    .line 309
    .local v0, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 310
    .end local v0    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method flushMessageReceived()V
    .locals 4

    .line 327
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    move-object v1, v0

    .local v1, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    .line 329
    .local v0, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 330
    .end local v0    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method flushPreHandshakeEvents()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 291
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    move-object v1, v0

    .local v1, "scheduledWrite":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    .line 293
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    return-object v0
.end method

.method handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 5
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 558
    :goto_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Handshaking State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while processing the Handshake for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    .line 638
    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 640
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} processing the NEED_WRAP state"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    return-void

    .line 620
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 622
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 624
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_4

    .line 625
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v3

    shl-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 626
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 628
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    goto :goto_2

    .line 631
    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 632
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 633
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    .line 634
    goto :goto_3

    .line 593
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_5
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} processing the NEED_UNWRAP state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    .line 599
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_8

    .line 600
    :cond_7
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 602
    :cond_8
    return-void

    .line 585
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :cond_9
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 586
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} processing the NEED_TASK state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    :cond_a
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 590
    nop

    .line 640
    :cond_b
    :goto_3
    goto/16 :goto_0

    .line 560
    :cond_c
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 561
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} processing the FINISHED state"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    :cond_d
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iput-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 568
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    if-eqz v0, :cond_e

    .line 569
    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    .line 571
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v1, Lorg/apache/mina/filter/ssl/SslEvent;->SECURED:Lorg/apache/mina/filter/ssl/SslEvent;

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->event(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/FilterEvent;)V

    .line 574
    :cond_e
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 575
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_f

    .line 576
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} is now secured"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 578
    :cond_f
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} is not secured yet"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    :cond_10
    :goto_4
    return-void
.end method

.method init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} Initializing the SSL Handler"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 149
    .local v0, "peer":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_2

    .line 150
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, v1, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, v1, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 156
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->isUseClientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 159
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 161
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 165
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 171
    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 176
    :cond_5
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 177
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 182
    :cond_6
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 189
    iput-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    .line 190
    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 192
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} SSL Handler Initialization done."

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_7
    return-void
.end method

.method isHandshakeComplete()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    return v0
.end method

.method isInboundDone()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isOutboundDone()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isWritingEncryptedData()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    return v0
.end method

.method messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 342
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} Processing the received message"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 351
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 353
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 354
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 359
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    .line 360
    return-void

    .line 363
    :cond_3
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 366
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 369
    :cond_4
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 370
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 373
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 375
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    .line 378
    .end local v0    # "res":Ljavax/net/ssl/SSLEngineResult;
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 381
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    .line 382
    .local v0, "inNetBufferPosition":I
    :goto_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 384
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_6

    .line 385
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 386
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 389
    .end local v0    # "inNetBufferPosition":I
    :cond_6
    return-void
.end method

.method needToCompleteHandshake()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notHandshaking()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method release()V
    .locals 2

    .line 866
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 868
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 871
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 873
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 875
    :cond_1
    return-void
.end method

.method scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 298
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "message"    # Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 285
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SSLStatus <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    iget-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v1, :cond_0

    .line 849
    const-string v1, "SSL established"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 851
    :cond_0
    const-string v1, "Processing Handshake"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v2, "Status : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const-string v2, "HandshakeComplete :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 666
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 669
    const/4 v0, 0x0

    .line 672
    .local v0, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 673
    .local v2, "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v3, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v3, v4}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    move-object v0, v3

    .line 674
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v5, v2, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    invoke-virtual {v3, p1, v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 677
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->needToCompleteHandshake()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 679
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    nop

    .line 686
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 688
    .local v3, "currentOutNetBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 689
    new-instance v4, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v4, v5}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    move-object v0, v4

    .line 690
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v6, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v6, v3, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    invoke-virtual {v4, p1, v5, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 692
    .end local v3    # "currentOutNetBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    goto :goto_0

    .line 680
    :catch_0
    move-exception v3

    .line 681
    .local v3, "ssle":Ljavax/net/ssl/SSLException;
    new-instance v4, Ljavax/net/ssl/SSLHandshakeException;

    const-string v5, "SSL handshake failed."

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 682
    .local v4, "newSsle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 683
    nop

    .end local v0    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    .end local v2    # "writeBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "ssle":Ljavax/net/ssl/SSLException;
    .end local v4    # "newSsle":Ljavax/net/ssl/SSLException;
    .restart local v0    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :cond_2
    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 695
    nop

    .line 697
    return-object v0

    .line 694
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 695
    throw v2

    .line 661
    .end local v0    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
