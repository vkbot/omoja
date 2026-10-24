.class public Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;
.super Ljava/lang/Object;
.source "AsyncAppenderAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdminMBean;


# instance fields
.field private final asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

.field private final contextName:Ljava/lang/String;

.field private final objectName:Ljavax/management/ObjectName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/AsyncAppender;)V
    .locals 5
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "appender"    # Lorg/apache/logging/log4j/core/appender/AsyncAppender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "appender"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "contextName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->contextName:Ljava/lang/String;

    .line 44
    const-string v0, "async appender"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->contextName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "ctxName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "configName":Ljava/lang/String;
    const-string v2, "org.apache.logging.log4j2:type=%s,component=AsyncAppenders,name=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljavax/management/ObjectName;

    invoke-direct {v3, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "ctxName":Ljava/lang/String;
    .end local v1    # "configName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    nop

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAppenderRefs()[Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getAppenderRefStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getHandler()Lorg/apache/logging/log4j/core/ErrorHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorRef()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getErrorRef()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public getQueueCapacity()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getQueueCapacity()I

    move-result v0

    return v0
.end method

.method public getQueueRemainingCapacity()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getQueueRemainingCapacity()I

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isIgnoreExceptions()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->ignoreExceptions()Z

    move-result v0

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdmin;->asyncAppender:Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->isIncludeLocation()Z

    move-result v0

    return v0
.end method
