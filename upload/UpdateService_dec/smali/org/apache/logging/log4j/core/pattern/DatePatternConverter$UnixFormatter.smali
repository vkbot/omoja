.class final Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixFormatter;
.super Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnixFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;

    .line 121
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method format(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;
    .locals 2
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method formatToBuffer(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .locals 2
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

    .line 130
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    return-void
.end method
