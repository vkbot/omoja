.class public final Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;
.source "CompositeTriggeringPolicy.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "Policies"
    printObject = true
.end annotation


# instance fields
.field private final triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;


# direct methods
.method private varargs constructor <init>([Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)V
    .locals 0
    .param p1, "triggeringPolicies"    # [Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "triggeringPolicies"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 40
    return-void
.end method

.method public static varargs createPolicy([Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;
    .locals 1
    .param p0, "triggeringPolicy"    # [Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Policies"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "triggeringPolicy"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;-><init>([Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)V

    return-object v0
.end method


# virtual methods
.method public getTriggeringPolicies()[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method

.method public initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 7
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 53
    .local v3, "triggeringPolicy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Initializing triggering policy {}"

    invoke-interface {v4, v6, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-interface {v3, p1}, Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;->initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V

    .line 52
    .end local v3    # "triggeringPolicy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 66
    .local v4, "triggeringPolicy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    invoke-interface {v4, p1}, Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;->isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 65
    .end local v4    # "triggeringPolicy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return v2
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

    .line 86
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->setStopping()V

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 89
    .local v4, "triggeringPolicy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    instance-of v5, v4, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v5, :cond_0

    .line 90
    move-object v5, v4

    check-cast v5, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v5, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_1

    .line 91
    :cond_0
    instance-of v5, v4, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v5, :cond_1

    .line 92
    move-object v5, v4

    check-cast v5, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v5}, Lorg/apache/logging/log4j/core/LifeCycle;->stop()V

    .line 93
    and-int/lit8 v0, v0, 0x1

    .line 88
    .end local v4    # "triggeringPolicy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->setStopped()V

    .line 97
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompositeTriggeringPolicy(policies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CompositeTriggeringPolicy;->triggeringPolicies:[Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
