.class public Lorg/apache/logging/log4j/core/config/Loggers;
.super Ljava/lang/Object;
.source "Loggers.java"


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lorg/apache/logging/log4j/core/config/LoggerConfig;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 0
    .param p2, "root"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "map",
            "root"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ")V"
        }
    .end annotation

    .line 28
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/Loggers;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 30
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/Loggers;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 31
    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Loggers;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getRoot()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Loggers;->root:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v0
.end method
