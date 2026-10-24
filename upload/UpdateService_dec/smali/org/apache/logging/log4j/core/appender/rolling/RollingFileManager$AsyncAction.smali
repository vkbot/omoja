.class Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "RollingFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncAction"
.end annotation


# instance fields
.field private final action:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

.field private final manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 0
    .param p1, "act"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p2, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "act",
            "manager"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 546
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->action:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    .line 547
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    .line 548
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->action:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->close()V

    .line 573
    return-void
.end method

.method public execute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->action:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->execute()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$100(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 561
    return v0

    .line 563
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$100(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public isComplete()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->action:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->isComplete()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, "[action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->action:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    const-string v1, ", manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, ", isComplete()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->isComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, ", isInterrupted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
