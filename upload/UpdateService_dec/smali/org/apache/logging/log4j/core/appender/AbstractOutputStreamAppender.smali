.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "AbstractOutputStreamAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
        ">",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender;"
    }
.end annotation


# instance fields
.field private final immediateFlush:Z

.field private final manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZLorg/apache/logging/log4j/core/appender/OutputStreamManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "layout",
            "filter",
            "ignoreExceptions",
            "immediateFlush",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "ZZTM;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p6, "manager":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;, "TM;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 122
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    .line 123
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->immediateFlush:Z

    .line 124
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "immediateFlush"    # Z
    .param p6, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "layout",
            "filter",
            "ignoreExceptions",
            "immediateFlush",
            "properties",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "ZZ[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "TM;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p7, "manager":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;, "TM;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 139
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    .line 140
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->immediateFlush:Z

    .line 141
    return-void
.end method

.method private tryAppend(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_DIRECT_ENCODERS:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->directEncodeEvent(Lorg/apache/logging/log4j/core/LogEvent;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->writeByteArrayToManager(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 212
    :goto_0
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 199
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->tryAppend(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/appender/AppenderLoggingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write to stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for appender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V

    .line 202
    throw v0
.end method

.method protected directEncodeEvent(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/core/Layout;->encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 216
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->immediateFlush:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flush()V

    .line 219
    :cond_1
    return-void
.end method

.method public getImmediateFlush()Z
    .locals 1

    .line 149
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->immediateFlush:Z

    return v0
.end method

.method public getManager()Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    return-object v0
.end method

.method public start()V
    .locals 4

    .line 163
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    const-string v1, "]."

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No layout set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No OutputStreamManager set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 169
    :cond_1
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 170
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    return v0
.end method

.method protected stop(JLjava/util/concurrent/TimeUnit;Z)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "changeLifeCycleState"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit",
            "changeLifeCycleState"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 180
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 181
    if-eqz p4, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->setStopped()V

    .line 184
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Appender {} stopped with status {}"

    invoke-interface {v1, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return v0
.end method

.method protected writeByteArrayToManager(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v0

    .line 223
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 224
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->manager:Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->immediateFlush:Z

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v0, v2}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([BZ)V

    .line 226
    :cond_2
    return-void
.end method
