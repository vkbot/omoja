.class final Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;
.super Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternFormatter"
.end annotation


# instance fields
.field private final cachedBuffer:Ljava/lang/StringBuilder;

.field private final fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;)V
    .locals 2
    .param p1, "fastDateFormat"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fastDateFormat"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->cachedBuffer:Ljava/lang/StringBuilder;

    .line 63
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    .line 64
    return-void
.end method


# virtual methods
.method format(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;
    .locals 3
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochMillisecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method formatToBuffer(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .param p2, "destination"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instant",
            "destination"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochMillisecond()J

    move-result-wide v0

    .line 74
    .local v0, "timeMillis":J
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->previousTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->cachedBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->cachedBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->format(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    .line 78
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->cachedBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 79
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;->fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
