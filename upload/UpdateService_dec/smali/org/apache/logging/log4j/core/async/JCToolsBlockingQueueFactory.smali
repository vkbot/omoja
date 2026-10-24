.class public Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;
.super Ljava/lang/Object;
.source "JCToolsBlockingQueueFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$Idle;,
        Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;,
        Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;
    }
.end annotation

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
    name = "JCToolsBlockingQueue"
.end annotation


# instance fields
.field private final waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;)V
    .locals 0
    .param p1, "waitStrategy"    # Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "waitStrategy"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    .line 42
    return-void
.end method

.method public static createFactory(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;)Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;
    .locals 1
    .param p0, "waitStrategy"    # Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "PARK"
            value = "WaitStrategy"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "waitStrategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;",
            ")",
            "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;-><init>(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;)V

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

    .line 46
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory<TE;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;-><init>(ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;)V

    return-object v0
.end method
