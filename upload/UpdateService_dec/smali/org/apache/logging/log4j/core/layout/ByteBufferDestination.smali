.class public interface abstract Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
.super Ljava/lang/Object;
.source "ByteBufferDestination.java"


# virtual methods
.method public abstract drain(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation
.end method

.method public abstract getByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract writeBytes(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract writeBytes([BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "length"
        }
    .end annotation
.end method
