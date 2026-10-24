.class public Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;
.super Ljava/lang/Object;
.source "LoggerRegistry.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/spi/LoggerRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcurrentMapFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/spi/ExtendedLogger;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInnerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory<TT;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public createOuterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory<TT;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "innerMap",
            "name",
            "logger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory<TT;>;"
    .local p1, "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    .local p3, "logger":Lorg/apache/logging/log4j/spi/ExtendedLogger;, "TT;"
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
