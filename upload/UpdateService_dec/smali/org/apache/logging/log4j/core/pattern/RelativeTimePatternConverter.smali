.class public Lorg/apache/logging/log4j/core/pattern/RelativeTimePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "RelativeTimePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "RelativeTimePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "r",
        "relative"
    }
.end annotation


# instance fields
.field private final startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    const-string v0, "Time"

    const-string v1, "time"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/RelativeTimePatternConverter;->startTime:J

    .line 39
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/RelativeTimePatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/RelativeTimePatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/RelativeTimePatternConverter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "toAppendTo"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "timestamp":J
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/pattern/RelativeTimePatternConverter;->startTime:J

    sub-long v2, v0, v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method
