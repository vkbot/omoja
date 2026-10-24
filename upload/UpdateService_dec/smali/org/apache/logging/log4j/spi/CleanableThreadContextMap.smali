.class public interface abstract Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;
.super Ljava/lang/Object;
.source "CleanableThreadContextMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ThreadContextMap2;


# virtual methods
.method public abstract removeAll(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
