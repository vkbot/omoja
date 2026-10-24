.class public Lorg/apache/mina/filter/codec/ProtocolDecoderException;
.super Lorg/apache/mina/filter/codec/ProtocolCodecException;
.source "ProtocolDecoderException.java"


# static fields
.field private static final serialVersionUID:J = 0x3135363438363135L


# instance fields
.field private hexdump:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getHexdump()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 77
    invoke-super {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    const-string v0, ""

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, " "

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(Hexdump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_2
    return-object v0
.end method

.method public setHexdump(Ljava/lang/String;)V
    .locals 2
    .param p1, "hexdump"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    .line 108
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hexdump cannot be set more than once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
