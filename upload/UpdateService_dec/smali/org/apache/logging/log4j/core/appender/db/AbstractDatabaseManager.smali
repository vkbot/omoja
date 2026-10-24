.class public abstract Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "AbstractDatabaseManager.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferSize:I

.field private final layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "bufferSize"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "bufferSize",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 136
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bufferSize"    # I
    .param p4, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "bufferSize",
            "layout",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")V"
        }
    .end annotation

    .line 150
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 151
    iput p2, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->bufferSize:I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer:Ljava/util/ArrayList;

    .line 153
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 154
    return-void
.end method

.method protected static getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "data",
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;",
            "T:",
            "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
            "TM;TT;>;)TM;"
        }
    .end annotation

    .line 101
    .local p1, "data":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;, "TT;"
    .local p2, "factory":Lorg/apache/logging/log4j/core/appender/ManagerFactory;, "Lorg/apache/logging/log4j/core/appender/ManagerFactory<TM;TT;>;"
    invoke-static {p0, p2, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    return-object v0
.end method


# virtual methods
.method protected buffer(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 157
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer:Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->toImmutable()Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->bufferSize:I

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->flush()V

    .line 161
    :cond_1
    return-void
.end method

.method protected abstract commitAndClose()Z
.end method

.method protected abstract connectAndStart()V
.end method

.method public final declared-synchronized flush()V
    .locals 3

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->isBuffered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->connectAndStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 188
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LogEvent;

    .line 189
    .local v1, "event":Lorg/apache/logging/log4j/core/LogEvent;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/core/Layout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .end local v1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->commitAndClose()Z

    .line 194
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    goto :goto_3

    .line 192
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->commitAndClose()Z

    .line 194
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 197
    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    .line 184
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isBuffered()Z
    .locals 1

    .line 200
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->bufferSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->running:Z

    return v0
.end method

.method public final releaseSub(JLjava/util/concurrent/TimeUnit;)Z
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

    .line 215
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->shutdown()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized shutdown()Z
    .locals 4

    monitor-enter p0

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, "closed":Z
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->flush()V

    .line 227
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->isRunning()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->shutdownInternal()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v0, v2

    .line 234
    :try_start_2
    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    goto :goto_1

    .line 234
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Caught exception while performing database shutdown operations"

    invoke-virtual {p0, v3, v2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    const/4 v0, 0x0

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->running:Z

    .line 235
    goto :goto_1

    .line 234
    :goto_0
    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->running:Z

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 224
    .end local v0    # "closed":Z
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract shutdownInternal()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final declared-synchronized startup()V
    .locals 2

    monitor-enter p0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->startupInternal()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->running:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    goto :goto_0

    .line 258
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Could not perform database startup operations"

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract startupInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 274
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 285
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->write(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 284
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->isBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->buffer(Lorg/apache/logging/log4j/core/LogEvent;)V

    goto :goto_0

    .line 298
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->writeThrough(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected writeInternal(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V

    .line 312
    return-void
.end method

.method protected abstract writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation
.end method

.method protected writeThrough(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->connectAndStart()V

    .line 325
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->commitAndClose()Z

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->commitAndClose()Z

    throw v0
.end method
