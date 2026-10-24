.class public Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory;
.super Ljava/lang/Object;
.source "LinkedTransferQueueFactory.java"

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
    name = "LinkedTransferQueue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory;, "Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFactory()Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 41
    new-instance v0, Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory;-><init>()V

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

    .line 36
    .local p0, "this":Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory;, "Lorg/apache/logging/log4j/core/async/LinkedTransferQueueFactory<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    return-object v0
.end method
