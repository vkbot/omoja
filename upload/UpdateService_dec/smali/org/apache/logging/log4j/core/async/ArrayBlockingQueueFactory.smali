.class public Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;
.super Ljava/lang/Object;
.source "ArrayBlockingQueueFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/async/BlockingQueueFactory<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "BlockingQueueFactory"
    name = "ArrayBlockingQueue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFactory()Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create(I)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "capacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory<TE;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    return-object v0
.end method
