.class public Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;
.super Lorg/apache/mina/filter/codec/ProtocolDecoderException;
.source "RecoverableProtocolDecoderException.java"


# static fields
.field private static final serialVersionUID:J = -0x716afe44be862826L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
