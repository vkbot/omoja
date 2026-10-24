.class public Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;
.super Ljava/lang/Object;
.source "LoggerConfigAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdminMBean;


# instance fields
.field private final loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

.field private final loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

.field private final objectName:Ljavax/management/ObjectName;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 5
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "loggerConfig"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "loggerContext"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/LoggerContext;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 48
    const-string v0, "loggerConfig"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "ctxName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "configName":Ljava/lang/String;
    const-string v2, "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljavax/management/ObjectName;

    invoke-direct {v3, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "ctxName":Ljava/lang/String;
    .end local v1    # "configName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    nop

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAppenderRefs()[Ljava/lang/String;
    .locals 4

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getAppenderRefs()Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "refs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderRef;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 110
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/AppenderRef;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public isAdditive()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isAdditive()Z

    move-result v0

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isIncludeLocation()Z

    move-result v0

    return v0
.end method

.method public setAdditive(Z)V
    .locals 1
    .param p1, "additive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "additive"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setAdditive(Z)V

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 94
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-static {p1}, Lorg/apache/logging/log4j/Level;->getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdmin;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->updateLoggers()V

    .line 83
    return-void
.end method
