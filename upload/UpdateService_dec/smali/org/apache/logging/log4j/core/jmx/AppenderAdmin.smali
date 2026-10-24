.class public Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;
.super Ljava/lang/Object;
.source "AppenderAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/jmx/AppenderAdminMBean;


# instance fields
.field private final appender:Lorg/apache/logging/log4j/core/Appender;

.field private final contextName:Ljava/lang/String;

.field private final objectName:Ljavax/management/ObjectName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;)V
    .locals 5
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "appender"    # Lorg/apache/logging/log4j/core/Appender;
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "contextName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->contextName:Ljava/lang/String;

    .line 45
    const-string v0, "appender"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/Appender;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->appender:Lorg/apache/logging/log4j/core/Appender;

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->contextName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "ctxName":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "configName":Ljava/lang/String;
    const-string v2, "org.apache.logging.log4j2:type=%s,component=Appenders,name=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljavax/management/ObjectName;

    invoke-direct {v3, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "ctxName":Ljava/lang/String;
    .end local v1    # "configName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    nop

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getErrorHandler()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->getHandler()Lorg/apache/logging/log4j/core/ErrorHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->appender:Lorg/apache/logging/log4j/core/Appender;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public isIgnoreExceptions()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/AppenderAdmin;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->ignoreExceptions()Z

    move-result v0

    return v0
.end method
