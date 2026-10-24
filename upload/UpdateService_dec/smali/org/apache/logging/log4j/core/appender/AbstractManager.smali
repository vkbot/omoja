.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractManager;
.super Ljava/lang/Object;
.source "AbstractManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/AbstractManager$AbstractFactoryData;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/util/concurrent/locks/Lock;

.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/AbstractManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected count:I

.field private final loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->MAP:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "name"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 97
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->name:Ljava/lang/String;

    .line 98
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting {} {}"

    invoke-interface {v0, v2, v1, p2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public static getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "factory",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/logging/log4j/core/appender/AbstractManager;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
            "TM;TT;>;TT;)TM;"
        }
    .end annotation

    .line 139
    .local p1, "factory":Lorg/apache/logging/log4j/core/appender/ManagerFactory;, "Lorg/apache/logging/log4j/core/appender/ManagerFactory<TM;TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;

    .line 143
    .local v0, "manager":Lorg/apache/logging/log4j/core/appender/AbstractManager;, "TM;"
    if-nez v0, :cond_1

    .line 144
    const-string v1, "factory"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/ManagerFactory;

    invoke-interface {v1, p0, p2}, Lorg/apache/logging/log4j/core/appender/ManagerFactory;->createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-object v0, v1

    .line 145
    if-eqz v0, :cond_0

    .line 149
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManagerFactory ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] unable to create manager for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] with data ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "factory":Lorg/apache/logging/log4j/core/appender/ManagerFactory;, "Lorg/apache/logging/log4j/core/appender/ManagerFactory<TM;TT;>;"
    .end local p2    # "data":Ljava/lang/Object;, "TT;"
    throw v1

    .line 151
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "factory":Lorg/apache/logging/log4j/core/appender/ManagerFactory;, "Lorg/apache/logging/log4j/core/appender/ManagerFactory<TM;TT;>;"
    .restart local p2    # "data":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->updateData(Ljava/lang/Object;)V

    .line 153
    :goto_0
    iget v1, v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    nop

    .line 156
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    return-object v0

    .line 156
    .end local v0    # "manager":Lorg/apache/logging/log4j/core/appender/AbstractManager;, "TM;"
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static getManagerCount()I
    .locals 1

    .line 211
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static hasManager(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 175
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    return v0

    .line 179
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected static logger()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 204
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method protected static narrow(Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/AbstractManager;)Lorg/apache/logging/log4j/core/appender/AbstractManager;
    .locals 3
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/AbstractManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "narrowClass",
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/apache/logging/log4j/core/appender/AbstractManager;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Lorg/apache/logging/log4j/core/appender/AbstractManager;",
            ")TM;"
        }
    .end annotation

    .line 195
    .local p0, "narrowClass":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    return-object p1

    .line 198
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration has multiple incompatible Appenders pointing to the same resource \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 106
    sget-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->DEFAULT_STOP_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 107
    return-void
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected getCount()I
    .locals 1

    .line 227
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->count:I

    return v0
.end method

.method public getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    return-object v1

    .line 278
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    .line 279
    .local v0, "configuration":Lorg/apache/logging/log4j/core/config/Configuration;
    if-nez v0, :cond_1

    .line 280
    return-object v1

    .line 282
    :cond_1
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    return-object v1
.end method

.method protected log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "message",
            "throwable"
        }
    .end annotation

    .line 286
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    .line 286
    const-string v2, "{} {} {}: {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 288
    .local v0, "m":Lorg/apache/logging/log4j/message/Message;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1, p1, v0, p3}, Lorg/apache/logging/log4j/Logger;->log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 289
    return-void
.end method

.method protected logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 292
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 296
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method

.method protected logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 300
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->close()V

    .line 248
    return-void
.end method

.method protected releaseSub(JLjava/util/concurrent/TimeUnit;)Z
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

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
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

    .line 110
    const/4 v0, 0x1

    .line 111
    .local v0, "stopped":Z
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :try_start_0
    iget v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->count:I

    .line 114
    if-gtz v1, :cond_0

    .line 115
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->MAP:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Shutting down {} {}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->releaseSub(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    move v0, v1

    .line 118
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Shut down {} {}, all resources released: {}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    nop

    .line 123
    return v0

    .line 121
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public updateData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 167
    return-void
.end method
