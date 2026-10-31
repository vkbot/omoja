.class public interface abstract Lorg/apache/commons/io/input/Tailer$Tailable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tailable"
.end annotation


# virtual methods
.method public abstract getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
.end method

.method public abstract isNewer(Ljava/nio/file/attribute/FileTime;)Z
.end method

.method public abstract lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
.end method

.method public abstract size()J
.end method
