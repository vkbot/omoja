.class public Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;
.super Ljava/lang/Object;
.source "ContextSelectorAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdminMBean;


# instance fields
.field private final objectName:Ljavax/management/ObjectName;

.field private final selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/selector/ContextSelector;)V
    .locals 4
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "selector"    # Lorg/apache/logging/log4j/core/selector/ContextSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "selector"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "ContextSelector"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/selector/ContextSelector;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    .line 48
    :try_start_0
    const-string v0, "org.apache.logging.log4j2:type=%s,component=ContextSelector"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "mbeanName":Ljava/lang/String;
    new-instance v1, Ljavax/management/ObjectName;

    invoke-direct {v1, v0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "mbeanName":Ljava/lang/String;
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
.method public getImplementationClassName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;->selector:Lorg/apache/logging/log4j/core/selector/ContextSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/ContextSelectorAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method
