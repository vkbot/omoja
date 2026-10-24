.class final Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;
.super Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedFormatter"
.end annotation


# instance fields
.field private final cachedBuffer:[C

.field private final fixedDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

.field private length:I


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;)V
    .locals 1
    .param p1, "fixedDateFormat"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fixedDateFormat"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V

    .line 91
    const/16 v0, 0x46

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->cachedBuffer:[C

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->length:I

    .line 95
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->fixedDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    .line 96
    return-void
.end method


# virtual methods
.method format(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;
    .locals 1
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->fixedDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->formatInstant(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method formatToBuffer(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .locals 10
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

    .line 105
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochSecond()J

    move-result-wide v7

    .line 106
    .local v7, "epochSecond":J
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getNanoOfSecond()I

    move-result v9

    .line 107
    .local v9, "nanoOfSecond":I
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->fixedDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->previousTime:J

    iget v3, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->nanos:I

    move-wide v4, v7

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->isEquivalent(JIJI)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->fixedDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->cachedBuffer:[C

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->formatInstant(Lorg/apache/logging/log4j/core/time/Instant;[CI)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->length:I

    .line 109
    iput-wide v7, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->previousTime:J

    .line 110
    iput v9, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->nanos:I

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->cachedBuffer:[C

    iget v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->length:I

    invoke-virtual {p2, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 113
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;->fixedDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
