.class public Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;
.source "NoOpTriggeringPolicy.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "NoOpTriggeringPolicy"
    printObject = true
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;->INSTANCE:Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    return-void
.end method

.method public static createPolicy()Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 37
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;->INSTANCE:Lorg/apache/logging/log4j/core/appender/rolling/NoOpTriggeringPolicy;

    return-object v0
.end method


# virtual methods
.method public initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .line 43
    return-void
.end method

.method public isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 1
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method
