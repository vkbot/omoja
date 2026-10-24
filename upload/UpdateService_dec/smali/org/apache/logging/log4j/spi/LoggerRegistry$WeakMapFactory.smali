.class public Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;
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
    name = "WeakMapFactory"
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

    .line 74
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory<TT;>;"
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

    .line 77
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory<TT;>;"
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

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

    .line 82
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory<TT;>;"
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0
.end method

.method public putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V
    .locals 0
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

    .line 87
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory<TT;>;"
    .local p1, "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    .local p3, "logger":Lorg/apache/logging/log4j/spi/ExtendedLogger;, "TT;"
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
