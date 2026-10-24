.class public Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;
.super Ljava/lang/Object;
.source "SimpleByteArrayFactory.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArrayFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 3
    .param p1, "size"    # I

    .line 45
    if-ltz p1, :cond_0

    .line 48
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 49
    .local v0, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v1, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;-><init>(Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 57
    .local v1, "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    return-object v1

    .line 46
    .end local v0    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v1    # "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size must not be negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
