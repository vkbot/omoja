.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;
.super Ljava/lang/Object;
.source "DemuxingProtocolCodecFactory.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-direct {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    .line 41
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-direct {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    return-void
.end method


# virtual methods
.method public addMessageDecoder(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageDecoder;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageDecoder;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Ljava/lang/Class;)V

    .line 137
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 1
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 145
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V

    .line 146
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 154
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    .line 155
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 67
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "-TT;>;)V"
        }
    .end annotation

    .line 77
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    .line 78
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
            "-TT;>;)V"
        }
    .end annotation

    .line 88
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 89
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 99
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "-TT;>;)V"
        }
    .end annotation

    .line 111
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 112
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    .line 113
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
            "-TT;>;)V"
        }
    .end annotation

    .line 125
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 126
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 127
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    return-object v0
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    return-object v0
.end method
