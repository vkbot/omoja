.class public abstract Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.super Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;
.source "CumulativeProtocolDecoder.java"


# static fields
.field private static final BUFFER:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private transportMetadataFragmentation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;

    const-string v2, "buffer"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;-><init>()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    .line 115
    return-void
.end method

.method private removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 237
    sget-object v0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method private storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 241
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 243
    .local v0, "remainingBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 244
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 246
    sget-object v1, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :cond_1
    return-void

    .line 140
    :cond_2
    const/4 v0, 0x1

    .line 141
    .local v0, "usingSessionBuffer":Z
    sget-object v1, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 144
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v1, :cond_5

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "appended":Z
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v2, 0x1

    .line 154
    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    .line 157
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 163
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 164
    .local v3, "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 165
    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 166
    invoke-virtual {v3, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 167
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 168
    move-object v1, v3

    .line 171
    sget-object v4, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v4, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v2    # "appended":Z
    .end local v3    # "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_1
    goto :goto_2

    .line 174
    :cond_5
    move-object v1, p2

    .line 175
    const/4 v0, 0x0

    .line 179
    :goto_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .line 180
    .local v2, "oldPos":I
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v3

    .line 181
    .local v3, "decoded":Z
    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    if-eq v4, v2, :cond_7

    .line 186
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_6

    .line 187
    goto :goto_3

    .line 192
    .end local v2    # "oldPos":I
    .end local v3    # "decoded":Z
    :cond_6
    goto :goto_2

    .line 183
    .restart local v2    # "oldPos":I
    .restart local v3    # "decoded":Z
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "doDecode() can\'t return true when buffer is not consumed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    .end local v2    # "oldPos":I
    .end local v3    # "decoded":Z
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 198
    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 199
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_4

    .line 201
    :cond_9
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_4

    .line 204
    :cond_a
    if-eqz v0, :cond_b

    .line 205
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    .line 208
    :cond_b
    :goto_4
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    .line 234
    return-void
.end method

.method protected abstract doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setTransportMetadataFragmentation(Z)V
    .locals 0
    .param p1, "transportMetadataFragmentation"    # Z

    .line 256
    iput-boolean p1, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->transportMetadataFragmentation:Z

    .line 257
    return-void
.end method
