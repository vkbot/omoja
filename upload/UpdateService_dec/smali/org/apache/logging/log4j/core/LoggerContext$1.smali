.class Lorg/apache/logging/log4j/core/LoggerContext$1;
.super Ljava/lang/Object;
.source "LoggerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/LoggerContext;->setUpShutdownHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/LoggerContext;

.field final synthetic val$shutdownTimeoutMillis:J


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$shutdownTimeoutMillis"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lorg/apache/logging/log4j/core/LoggerContext$1;->this$0:Lorg/apache/logging/log4j/core/LoggerContext;

    iput-wide p2, p0, Lorg/apache/logging/log4j/core/LoggerContext$1;->val$shutdownTimeoutMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 302
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LoggerContext$1;->this$0:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 303
    .local v0, "context":Lorg/apache/logging/log4j/core/LoggerContext;
    sget-object v1, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v2, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->SHUTDOWN_HOOK_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 304
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v4, "Stopping LoggerContext[name={}, {}]"

    invoke-interface {v1, v2, v4, v3, v0}, Lorg/apache/logging/log4j/Logger;->debug(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    iget-wide v1, p0, Lorg/apache/logging/log4j/core/LoggerContext$1;->val$shutdownTimeoutMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shutdown callback for LoggerContext[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/LoggerContext$1;->this$0:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
