.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "AbstractWriterAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/apache/logging/log4j/core/appender/WriterManager;",
        ">",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender;"
    }
.end annotation


# instance fields
.field protected final immediateFlush:Z

.field private final manager:Lorg/apache/logging/log4j/core/appender/WriterManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final readLock:Ljava/util/concurrent/locks/Lock;

.field private final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;ZZLorg/apache/logging/log4j/core/appender/WriterManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
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
            "Lorg/apache/logging/log4j/core/StringLayout;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "ZZTM;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    .local p6, "manager":Lorg/apache/logging/log4j/core/appender/WriterManager;, "TM;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 84
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    .line 85
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->immediateFlush:Z

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/WriterManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
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
            "Lorg/apache/logging/log4j/core/StringLayout;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "ZZ[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "TM;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    .local p7, "manager":Lorg/apache/logging/log4j/core/appender/WriterManager;, "TM;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 65
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    .line 66
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->immediateFlush:Z

    .line 67
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

    .line 99
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->getStringLayout()Lorg/apache/logging/log4j/core/StringLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/StringLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/appender/WriterManager;->write(Ljava/lang/String;)V

    .line 104
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->immediateFlush:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/WriterManager;->flush()V
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/appender/AppenderLoggingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/WriterManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for appender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V

    .line 110
    nop

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "ex":Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getManager()Lorg/apache/logging/log4j/core/appender/WriterManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    return-object v0
.end method

.method public getStringLayout()Lorg/apache/logging/log4j/core/StringLayout;
    .locals 1

    .line 126
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/StringLayout;

    return-object v0
.end method

.method public start()V
    .locals 3

    .line 131
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No layout set for the appender named [{}]."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No OutputStreamManager set for the appender named [{}]."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_1
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 138
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
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

    .line 142
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->setStopping()V

    .line 143
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 144
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->manager:Lorg/apache/logging/log4j/core/appender/WriterManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/WriterManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;->setStopped()V

    .line 146
    return v0
.end method
