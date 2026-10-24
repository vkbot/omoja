.class public final Lorg/apache/logging/log4j/core/layout/ByteBufferDestinationHelper;
.super Ljava/lang/Object;
.source "ByteBufferDestinationHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static writeToUnsynchronized(Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 5
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "destBuff":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 42
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 45
    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->drain(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .end local v1    # "originalLimit":I
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method

.method public static writeToUnsynchronized([BIILorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "data",
            "offset",
            "length",
            "destination"
        }
    .end annotation

    .line 62
    invoke-interface {p3}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 65
    .local v1, "chunk":I
    invoke-virtual {v0, p0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 66
    add-int/2addr p1, v1

    .line 67
    sub-int/2addr p2, v1

    .line 68
    invoke-interface {p3, v0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;->drain(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .end local v1    # "chunk":I
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 72
    return-void
.end method
