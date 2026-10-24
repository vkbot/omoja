.class public final synthetic Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$MpscBlockingQueue$GcLYsnfua9A_lNXzJSQIqg_qX9Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue$Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$MpscBlockingQueue$GcLYsnfua9A_lNXzJSQIqg_qX9Y;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$MpscBlockingQueue$GcLYsnfua9A_lNXzJSQIqg_qX9Y;->f$0:Ljava/util/Collection;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->lambda$drainTo$0(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method
