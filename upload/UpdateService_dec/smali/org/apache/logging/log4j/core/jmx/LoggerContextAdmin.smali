.class public Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;
.super Ljavax/management/NotificationBroadcasterSupport;
.source "LoggerContextAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/jmx/LoggerContextAdminMBean;
.implements Ljava/beans/PropertyChangeListener;


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final PAGE:I = 0x1000

.field private static final TEXT_BUFFER:I = 0x10000


# instance fields
.field private final loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

.field private final objectName:Ljavax/management/ObjectName;

.field private final sequenceNo:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "executor"
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/management/MBeanNotificationInfo;

    invoke-static {}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->createNotificationInfo()Ljavax/management/MBeanNotificationInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p2, v1}, Ljavax/management/NotificationBroadcasterSupport;-><init>(Ljava/util/concurrent/Executor;[Ljavax/management/MBeanNotificationInfo;)V

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->sequenceNo:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    const-string v1, "loggerContext"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/LoggerContext;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 77
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "ctxName":Ljava/lang/String;
    const-string v2, "org.apache.logging.log4j2:type=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljavax/management/ObjectName;

    invoke-direct {v2, v0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "ctxName":Ljava/lang/String;
    nop

    .line 83
    invoke-virtual {p1, p0}, Lorg/apache/logging/log4j/core/LoggerContext;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 84
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createNotificationInfo()Ljavax/management/MBeanNotificationInfo;
    .locals 5

    .line 87
    const-string v0, "com.apache.logging.log4j.core.jmx.config.reconfigured"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "notifTypes":[Ljava/lang/String;
    const-class v1, Ljavax/management/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "name":Ljava/lang/String;
    const-string v2, "Configuration reconfigured"

    .line 90
    .local v2, "description":Ljava/lang/String;
    new-instance v3, Ljavax/management/MBeanNotificationInfo;

    const-string v4, "Configuration reconfigured"

    invoke-direct {v3, v0, v1, v4}, Ljavax/management/MBeanNotificationInfo;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getConfig()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private nextSeqNo()J
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->sequenceNo:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method private now()J
    .locals 2

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private readContents(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "in",
            "charset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v1

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v2, 0x10000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v1, "result":Ljava/lang/StringBuilder;
    const/16 v2, 0x1000

    new-array v2, v2, [C

    .line 181
    .local v2, "buff":[C
    const/4 v3, -0x1

    .line 182
    .local v3, "count":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    move v3, v4

    if-ltz v4, :cond_0

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 188
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 185
    return-object v4

    .line 187
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "buff":[C
    .end local v3    # "count":I
    :catchall_0
    move-exception v1

    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 188
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    throw v1
.end method


# virtual methods
.method public getConfigClassName()Ljava/lang/String;
    .locals 1

    .line 217
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFilter()Ljava/lang/String;
    .locals 1

    .line 222
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigLocationUri()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfigLocation()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfigName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigProperties()Ljava/util/Map;
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

    .line 227
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfig()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getConfigText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getConfigText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charsetName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    .line 158
    .local v0, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->resetInputStream()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 159
    .local v1, "copy":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 160
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->readContents(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 161
    .end local v0    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v1    # "copy":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 163
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LifeCycle$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 9
    .param p1, "evt"    # Ljava/beans/PropertyChangeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "evt"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljavax/management/Notification;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->nextSeqNo()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->now()J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v2, "com.apache.logging.log4j.core.jmx.config.reconfigured"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljavax/management/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;)V

    .line 146
    .local v0, "notif":Ljavax/management/Notification;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->sendNotification(Ljavax/management/Notification;)V

    .line 147
    return-void
.end method

.method public setConfigLocationUri(Ljava/lang/String;)V
    .locals 5
    .param p1, "configLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configLocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "---------"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote request to reconfigure using location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "configFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 127
    .local v1, "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    sget-object v2, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Opening config file {}"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    move-object v1, v2

    goto :goto_0

    .line 131
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "configURL":Ljava/net/URL;
    sget-object v3, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Opening config URL {}"

    invoke-virtual {v3, v4, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v3, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/net/URL;)V

    move-object v1, v3

    .line 135
    .end local v2    # "configURL":Ljava/net/URL;
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    .line 136
    .local v2, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v3, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 137
    sget-object v3, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Completed remote request to reconfigure."

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 138
    return-void

    .line 121
    .end local v0    # "configFile":Ljava/io/File;
    .end local v1    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing configuration location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfigText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configText"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "configText",
            "charsetName"
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "---------"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "Remote request to reconfigure from config text."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 198
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    .line 201
    .local v2, "updated":Lorg/apache/logging/log4j/core/config/Configuration;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v3, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 202
    sget-object v3, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Completed remote request to reconfigure from config text."

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "updated":Lorg/apache/logging/log4j/core/config/Configuration;
    nop

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Could not reconfigure from config text"

    .line 205
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/jmx/LoggerContextAdmin;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "Could not reconfigure from config text"

    invoke-virtual {v2, v3, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
