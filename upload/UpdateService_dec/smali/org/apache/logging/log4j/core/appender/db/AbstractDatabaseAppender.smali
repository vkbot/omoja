.class public abstract Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "AbstractDatabaseAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;",
        ">",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender;"
    }
.end annotation


# static fields
.field public static final DEFAULT_RECONNECT_INTERVAL_MILLIS:I = 0x1388


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private manager:Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final readLock:Ljava/util/concurrent/locks/Lock;

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;ZLorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout",
            "ignoreExceptions",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;ZTT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p5, "manager":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;, "TT;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 103
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->manager:Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "filter",
            "layout",
            "ignoreExceptions",
            "properties",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p6, "manager":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;, "TT;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 85
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->manager:Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "ignoreExceptions",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "ZTT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .local p4, "manager":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;, "TT;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 68
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->manager:Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    .line 69
    return-void
.end method


# virtual methods
.method public final append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    const-string v0, "Unable to write to database [{}] for appender [{}]."

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->write(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_0
    .catch Lorg/apache/logging/log4j/LoggingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->getName()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getName()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-interface {v2, v0, v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write to database in appender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    throw v0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Lorg/apache/logging/log4j/LoggingException;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getName()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-interface {v2, v0, v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    nop

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v1    # "e":Lorg/apache/logging/log4j/LoggingException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getLayout()Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/Layout<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->manager:Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    return-object v0
.end method

.method protected final replaceManager(Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    .local p1, "manager":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;, "TT;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    .line 155
    .local v0, "old":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;, "TT;"
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->startup()V

    .line 158
    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->manager:Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    .line 159
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0    # "old":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;, "TT;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final start()V
    .locals 3

    .line 167
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No AbstractDatabaseManager set for the appender named [{}]."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    :cond_0
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 171
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->startup()V

    .line 174
    :cond_1
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

    .line 178
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender<TT;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->setStopping()V

    .line 179
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 180
    .local v0, "stopped":Z
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->getManager()Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;->setStopped()V

    .line 184
    return v0
.end method
