.class public Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;
.super Ljava/lang/Object;
.source "DisruptorBlockingQueueFactory.java"

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
    name = "DisruptorBlockingQueue"
.end annotation


# instance fields
.field private final spinPolicy:Lcom/conversantmedia/util/concurrent/SpinPolicy;


# direct methods
.method private constructor <init>(Lcom/conversantmedia/util/concurrent/SpinPolicy;)V
    .locals 0
    .param p1, "spinPolicy"    # Lcom/conversantmedia/util/concurrent/SpinPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "spinPolicy"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;->spinPolicy:Lcom/conversantmedia/util/concurrent/SpinPolicy;

    .line 40
    return-void
.end method

.method public static createFactory(Lcom/conversantmedia/util/concurrent/SpinPolicy;)Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;
    .locals 1
    .param p0, "spinPolicy"    # Lcom/conversantmedia/util/concurrent/SpinPolicy;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "WAITING"
            value = "SpinPolicy"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "spinPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/conversantmedia/util/concurrent/SpinPolicy;",
            ")",
            "Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;-><init>(Lcom/conversantmedia/util/concurrent/SpinPolicy;)V

    return-object v0
.end method


# virtual methods
.method public create(I)Ljava/util/concurrent/BlockingQueue;
    .locals 2
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

    .line 44
    .local p0, "this":Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory<TE;>;"
    new-instance v0, Lcom/conversantmedia/util/concurrent/DisruptorBlockingQueue;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/DisruptorBlockingQueueFactory;->spinPolicy:Lcom/conversantmedia/util/concurrent/SpinPolicy;

    invoke-direct {v0, p1, v1}, Lcom/conversantmedia/util/concurrent/DisruptorBlockingQueue;-><init>(ILcom/conversantmedia/util/concurrent/SpinPolicy;)V

    return-object v0
.end method
