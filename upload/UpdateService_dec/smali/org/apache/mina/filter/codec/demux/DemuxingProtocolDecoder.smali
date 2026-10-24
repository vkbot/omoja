.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "DemuxingProtocolDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    }
.end annotation


# static fields
.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final STATE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    .line 88
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-object v0
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .line 245
    .local v0, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    if-nez v0, :cond_0

    .line 246
    new-instance v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    move-object v0, v1

    .line 247
    sget-object v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .line 249
    .local v1, "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    if-eqz v1, :cond_0

    .line 250
    move-object v0, v1

    .line 254
    .end local v1    # "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMessageDecoder(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageDecoder;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageDecoder;>;"
    if-eqz p1, :cond_2

    .line 107
    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "registered":Z
    const-class v1, Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    .line 115
    const/4 v0, 0x1

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    return-void

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregisterable type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "registered":Z
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified class doesn\'t have a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoderClass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 2
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 129
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    .line 130
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V
    .locals 4
    .param p1, "factory"    # Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 138
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 143
    .local v1, "newDecoderFactories":[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    array-length v0, v0

    aput-object p1, v1, v0

    .line 145
    iput-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 146
    return-void

    .line 139
    .end local v1    # "newDecoderFactories":[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-super {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 239
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 11
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v0

    .line 155
    .local v0, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 156
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v1

    .line 157
    .local v1, "decoders":[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    const/4 v4, 0x0

    .line 159
    .local v4, "undecodables":I
    array-length v5, v1

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 160
    aget-object v6, v1, v5

    .line 161
    .local v6, "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    .line 162
    .local v7, "limit":I
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    .line 167
    .local v8, "pos":I
    :try_start_0
    invoke-interface {v6, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decodable(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v9, "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    invoke-virtual {p2, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 170
    invoke-virtual {p2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 171
    nop

    .line 173
    sget-object v10, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v9, v10, :cond_0

    .line 174
    invoke-static {v0, v6}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 175
    goto :goto_2

    .line 176
    :cond_0
    sget-object v10, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v9, v10, :cond_1

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    :cond_1
    sget-object v10, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v9, v10, :cond_2

    .line 159
    .end local v6    # "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .end local v7    # "limit":I
    .end local v8    # "pos":I
    .end local v9    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 179
    .restart local v6    # "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .restart local v7    # "limit":I
    .restart local v8    # "pos":I
    .restart local v9    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected decode result (see your decodable()): "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local v9    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {p2, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 170
    invoke-virtual {p2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 171
    throw v2

    .line 183
    .end local v5    # "i":I
    .end local v6    # "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .end local v7    # "limit":I
    .end local v8    # "pos":I
    :cond_3
    :goto_2
    array-length v5, v1

    if-eq v4, v5, :cond_4

    .line 192
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v5

    if-nez v5, :cond_5

    .line 194
    return v2

    .line 185
    :cond_4
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "dump":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 187
    new-instance v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No appropriate message decoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 188
    .local v3, "e":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    invoke-virtual {v3, v2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    .line 189
    throw v3

    .line 199
    .end local v1    # "decoders":[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .end local v2    # "dump":Ljava/lang/String;
    .end local v3    # "e":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    .end local v4    # "undecodables":I
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    move-result-object v4

    .line 200
    .local v4, "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    sget-object v5, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v4, v5, :cond_6

    .line 201
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 202
    return v3

    .line 203
    :cond_6
    sget-object v3, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v4, v3, :cond_7

    .line 204
    return v2

    .line 205
    :cond_7
    sget-object v2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v4, v2, :cond_8

    .line 206
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 207
    new-instance v2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v3, "Message decoder returned NOT_OK."

    invoke-direct {v2, v3}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .end local p0    # "this":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
    .end local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p2    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p3    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    throw v2

    .line 209
    .restart local v0    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
    .restart local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p2    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local p3    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :cond_8
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 210
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected decode result (see your decode()): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .end local p0    # "this":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
    .end local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p2    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p3    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .end local v4    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    .restart local v0    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
    .restart local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p2    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local p3    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 214
    throw v2
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

    .line 223
    invoke-super {p0, p1, p2}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 224
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v0

    .line 225
    .local v0, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v1

    .line 226
    .local v1, "currentDecoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    if-nez v1, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 231
    return-void
.end method
