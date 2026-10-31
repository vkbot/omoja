.class public interface abstract Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RandomAccessResourceBridge"
.end annotation


# virtual methods
.method public abstract getPointer()J
.end method

.method public abstract read([B)I
.end method

.method public abstract seek(J)V
.end method
