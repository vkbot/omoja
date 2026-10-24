.class public Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProtocolCodecFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;
    }
.end annotation


# static fields
.field private static final DECODER:Lorg/apache/mina/core/session/AttributeKey;

.field private static final DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private static final EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ENCODER:Lorg/apache/mina/core/session/AttributeKey;

.field private static final ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const-class v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 53
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    sput-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    .line 55
    new-array v1, v1, [B

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 57
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "encoder"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    .line 59
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "decoder"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    .line 61
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "decoderOut"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    .line 63
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "encoderOut"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/ProtocolEncoder;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/ProtocolDecoder;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/ProtocolEncoder;>;"
    .local p2, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/ProtocolDecoder;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 129
    if-eqz p1, :cond_3

    .line 132
    if-eqz p2, :cond_2

    .line 135
    const-class v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-class v0, Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 145
    nop

    .line 147
    :try_start_1
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    nop

    .line 155
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    .local v0, "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    nop

    .line 163
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/ProtocolDecoder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    .local v1, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    nop

    .line 169
    new-instance v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$2;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V

    iput-object v2, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 186
    return-void

    .line 164
    .end local v1    # "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decoderClass cannot be initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v0    # "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoderClass cannot be initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "decoderClass doesn\'t have a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoderClass doesn\'t have a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoderClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoderClass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoderClass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 74
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 80
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 2
    .param p1, "encoder"    # Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .param p2, "decoder"    # Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .line 90
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 91
    if-eqz p1, :cond_1

    .line 94
    if-eqz p2, :cond_0

    .line 99
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    .line 116
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disposeCodec(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 478
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeEncoder(Lorg/apache/mina/core/session/IoSession;)V

    .line 479
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeDecoder(Lorg/apache/mina/core/session/IoSession;)V

    .line 482
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeDecoderOut(Lorg/apache/mina/core/session/IoSession;)V

    .line 483
    return-void
.end method

.method private disposeDecoder(Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 509
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoder;

    .line 510
    .local v0, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    if-nez v0, :cond_0

    .line 511
    return-void

    .line 515
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dispose: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private disposeDecoderOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 553
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    return-void
.end method

.method private disposeEncoder(Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 491
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    .line 492
    .local v0, "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    if-nez v0, :cond_0

    .line 493
    return-void

    .line 497
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dispose: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 501
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 526
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    .line 528
    .local v0, "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    if-nez v0, :cond_0

    .line 530
    new-instance v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;

    invoke-direct {v1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;-><init>()V

    move-object v0, v1

    .line 531
    sget-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_0
    return-object v0
.end method

.method private getEncoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 538
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;

    .line 540
    .local v0, "out":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    if-nez v0, :cond_0

    .line 542
    new-instance v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    move-object v0, v1

    .line 543
    sget-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_0
    return-object v0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, "message":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_8

    instance-of v1, v0, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 313
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;

    move-result-object v1

    .line 315
    .local v1, "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getEncoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;

    move-result-object v2

    .line 317
    .local v2, "encoderOut":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    if-eqz v1, :cond_7

    .line 323
    :try_start_0
    invoke-interface {v1, p2, v0, v2}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    .line 326
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

    invoke-virtual {v3}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->getMessageQueue()Ljava/util/Queue;

    move-result-object v3

    .line 329
    .local v3, "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 330
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 332
    .local v4, "encodedMessage":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 333
    goto :goto_2

    .line 337
    :cond_1
    instance-of v5, v4, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    :cond_2
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 339
    invoke-interface {p3, v4}, Lorg/apache/mina/core/write/WriteRequest;->setMessage(Ljava/lang/Object;)V

    .line 340
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    .line 342
    :cond_3
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v5

    .line 343
    .local v5, "destination":Ljava/net/SocketAddress;
    new-instance v6, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 344
    .local v6, "encodedWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {p1, p2, v6}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v4    # "encodedMessage":Ljava/lang/Object;
    .end local v5    # "destination":Ljava/net/SocketAddress;
    .end local v6    # "encodedWriteRequest":Lorg/apache/mina/core/write/WriteRequest;
    :cond_4
    :goto_1
    goto :goto_0

    .line 359
    .end local v3    # "bufferQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_5
    :goto_2
    nop

    .line 360
    return-void

    .line 348
    :catch_0
    move-exception v3

    .line 352
    .local v3, "e":Ljava/lang/Exception;
    instance-of v4, v3, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    if-eqz v4, :cond_6

    .line 353
    move-object v4, v3

    check-cast v4, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    .local v4, "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    goto :goto_3

    .line 355
    .end local v4    # "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    :cond_6
    new-instance v4, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    invoke-direct {v4, v3}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/Throwable;)V

    .line 358
    .restart local v4    # "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    :goto_3
    throw v4

    .line 318
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "pee":Lorg/apache/mina/filter/codec/ProtocolEncoderException;
    :cond_7
    new-instance v3, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The encoder is null for the session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    .end local v1    # "encoder":Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .end local v2    # "encoderOut":Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    :cond_8
    :goto_4
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 309
    return-void
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 195
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Processing a MESSAGE_RECEIVED for session {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    :cond_0
    instance-of v0, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_1

    .line 237
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 238
    return-void

    .line 241
    :cond_1
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 242
    .local v0, "in":Lorg/apache/mina/core/buffer/IoBuffer;
    iget-object v1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;

    move-result-object v1

    .line 243
    .local v1, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    move-result-object v2

    .line 249
    .local v2, "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    .line 252
    .local v3, "oldPos":I
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :try_start_1
    invoke-interface {v1, p2, v0, v2}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 255
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    goto :goto_2

    .line 255
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v1    # "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .end local v2    # "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .end local v3    # "oldPos":I
    .end local p0    # "this":Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p3    # "message":Ljava/lang/Object;
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 258
    .restart local v0    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v1    # "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .restart local v2    # "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .restart local v3    # "oldPos":I
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p3    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    instance-of v5, v4, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v5, :cond_2

    .line 261
    move-object v5, v4

    check-cast v5, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .local v5, "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    goto :goto_1

    .line 263
    .end local v5    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :cond_2
    new-instance v5, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-direct {v5, v4}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 265
    .restart local v5    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :goto_1
    invoke-virtual {v5}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->getHexdump()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 267
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    .line 268
    .local v6, "curPos":I
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 269
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 273
    .end local v6    # "curPos":I
    :cond_3
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 274
    invoke-interface {p1, p2, v5}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 279
    instance-of v6, v4, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    if-ne v6, v3, :cond_4

    goto :goto_3

    .line 283
    .end local v3    # "oldPos":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :cond_4
    :goto_2
    goto :goto_0

    .line 284
    :cond_5
    :goto_3
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    instance-of v0, p3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    if-eqz v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 296
    return-void
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    .line 216
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;

    move-result-object v0

    .line 369
    .local v0, "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    move-result-object v1

    .line 372
    .local v1, "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :try_start_0
    invoke-interface {v0, p2, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    .line 384
    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 385
    nop

    .line 388
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 389
    return-void

    .line 383
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 373
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v3, v2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v3, :cond_0

    .line 376
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .local v3, "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    goto :goto_0

    .line 378
    .end local v3    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :cond_0
    new-instance v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-direct {v3, v2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 380
    .restart local v3    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    :goto_0
    nop

    .end local v0    # "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .end local v1    # "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .end local p0    # "this":Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "pde":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    .restart local v0    # "decoder":Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .restart local v1    # "decoderOut":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    .line 384
    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 385
    throw v2
.end method
