.class public Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;
.super Ljava/lang/Object;
.source "SynchronizedProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 2
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .line 50
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v1, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDecoder()Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    return-object v0
.end method
