.class Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;
.super Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;
.source "AsyncLoggerConfigDisruptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;
    .param p2, "threadFactoryName"    # Ljava/lang/String;
    .param p3, "daemon"    # Z
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "threadFactoryName",
            "daemon",
            "priority"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;->this$0:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "r"
        }
    .end annotation

    .line 203
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 204
    .local v0, "result":Ljava/lang/Thread;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;->this$0:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->access$202(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;J)J

    .line 205
    return-object v0
.end method
