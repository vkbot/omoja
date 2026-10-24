.class public Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;
.super Ljavax/management/NotificationBroadcasterSupport;
.source "StatusLoggerAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/status/StatusListener;
.implements Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdminMBean;


# instance fields
.field private final contextName:Ljava/lang/String;

.field private level:Lorg/apache/logging/log4j/Level;

.field private final objectName:Ljavax/management/ObjectName;

.field private final sequenceNo:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "executor"
        }
    .end annotation

    .line 58
    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/management/MBeanNotificationInfo;

    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->createNotificationInfo()Ljavax/management/MBeanNotificationInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p2, v1}, Ljavax/management/NotificationBroadcasterSupport;-><init>(Ljava/util/concurrent/Executor;[Ljavax/management/MBeanNotificationInfo;)V

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->sequenceNo:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    sget-object v1, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->level:Lorg/apache/logging/log4j/Level;

    .line 59
    iput-object p1, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->contextName:Ljava/lang/String;

    .line 61
    :try_start_0
    const-string v1, "org.apache.logging.log4j2:type=%s,component=StatusLogger"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "mbeanName":Ljava/lang/String;
    new-instance v1, Ljavax/management/ObjectName;

    invoke-direct {v1, v0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "mbeanName":Ljava/lang/String;
    nop

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->removeListeners(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->registerListener(Lorg/apache/logging/log4j/status/StatusListener;)V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createNotificationInfo()Ljavax/management/MBeanNotificationInfo;
    .locals 5

    .line 90
    const-string v0, "com.apache.logging.log4j.core.jmx.statuslogger.data"

    const-string v1, "com.apache.logging.log4j.core.jmx.statuslogger.message"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "notifTypes":[Ljava/lang/String;
    const-class v1, Ljavax/management/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "name":Ljava/lang/String;
    const-string v2, "StatusLogger has logged an event"

    .line 95
    .local v2, "description":Ljava/lang/String;
    new-instance v3, Ljavax/management/MBeanNotificationInfo;

    const-string v4, "StatusLogger has logged an event"

    invoke-direct {v3, v0, v1, v4}, Ljavax/management/MBeanNotificationInfo;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private nextSeqNo()J
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->sequenceNo:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method private nowMillis()J
    .locals 2

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private removeListeners(Ljava/lang/String;)V
    .locals 6
    .param p1, "ctxName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ctxName"
        }
    .end annotation

    .line 76
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    .line 77
    .local v0, "logger":Lorg/apache/logging/log4j/status/StatusLogger;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/status/StatusLogger;->getListeners()Ljava/lang/Iterable;

    move-result-object v1

    .line 79
    .local v1, "listeners":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/logging/log4j/status/StatusListener;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/status/StatusListener;

    .line 80
    .local v3, "statusListener":Lorg/apache/logging/log4j/status/StatusListener;
    instance-of v4, v3, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;

    if-eqz v4, :cond_0

    .line 81
    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;

    .line 82
    .local v4, "adminListener":Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;
    if-eqz p1, :cond_0

    iget-object v5, v4, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->contextName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->removeListener(Lorg/apache/logging/log4j/status/StatusListener;)V

    .line 86
    .end local v3    # "statusListener":Lorg/apache/logging/log4j/status/StatusListener;
    .end local v4    # "adminListener":Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;
    :cond_0
    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public getContextName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->contextName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public getStatusData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/status/StatusLogger;->getStatusData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusDataHistory()[Ljava/lang/String;
    .locals 4

    .line 100
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->getStatusData()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/status/StatusData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 102
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/status/StatusData;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/status/StatusData;->getFormattedStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getStatusLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public log(Lorg/apache/logging/log4j/status/StatusData;)V
    .locals 9
    .param p1, "data"    # Lorg/apache/logging/log4j/status/StatusData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 142
    new-instance v8, Ljavax/management/Notification;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->nextSeqNo()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->nowMillis()J

    move-result-wide v5

    .line 143
    invoke-virtual {p1}, Lorg/apache/logging/log4j/status/StatusData;->getFormattedStatus()Ljava/lang/String;

    move-result-object v7

    const-string v1, "com.apache.logging.log4j.core.jmx.statuslogger.message"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljavax/management/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;)V

    .line 144
    .local v0, "notifMsg":Ljavax/management/Notification;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->sendNotification(Ljavax/management/Notification;)V

    .line 146
    new-instance v8, Ljavax/management/Notification;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->nextSeqNo()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->nowMillis()J

    move-result-wide v6

    const-string v2, "com.apache.logging.log4j.core.jmx.statuslogger.data"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ljavax/management/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 147
    .local v1, "notifData":Ljavax/management/Notification;
    invoke-virtual {v1, p1}, Ljavax/management/Notification;->setUserData(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->sendNotification(Ljavax/management/Notification;)V

    .line 149
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 125
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdmin;->level:Lorg/apache/logging/log4j/Level;

    .line 126
    return-void
.end method
