.class public interface abstract Lorg/apache/commons/io/file/Counters$PathCounters;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathCounters"
.end annotation


# virtual methods
.method public abstract getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;
.end method

.method public abstract getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;
.end method

.method public abstract getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;
.end method

.method public reset()V
    .registers 1

    .line 1
    return-void
.end method
