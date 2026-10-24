.class public Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;
.super Ljava/lang/Object;
.source "TimeBasedTriggeringPolicy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field private interval:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private maxRandomDelay:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private modulate:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->interval:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->modulate:Z

    .line 45
    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->maxRandomDelay:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;
    .locals 9

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->maxRandomDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 51
    .local v0, "maxRandomDelayMillis":J
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;

    iget v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->interval:I

    iget-boolean v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->modulate:Z

    const/4 v8, 0x0

    move-object v3, v2

    move-wide v6, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;-><init>(IZJLorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$1;)V

    return-object v2
.end method

.method public getInterval()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->interval:I

    return v0
.end method

.method public getMaxRandomDelay()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->maxRandomDelay:I

    return v0
.end method

.method public isModulate()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->modulate:Z

    return v0
.end method

.method public withInterval(I)Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;
    .locals 0
    .param p1, "interval"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "interval"
        }
    .end annotation

    .line 67
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->interval:I

    .line 68
    return-object p0
.end method

.method public withMaxRandomDelay(I)Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;
    .locals 0
    .param p1, "maxRandomDelay"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxRandomDelay"
        }
    .end annotation

    .line 77
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->maxRandomDelay:I

    .line 78
    return-object p0
.end method

.method public withModulate(Z)Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;
    .locals 0
    .param p1, "modulate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modulate"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->modulate:Z

    .line 73
    return-object p0
.end method
