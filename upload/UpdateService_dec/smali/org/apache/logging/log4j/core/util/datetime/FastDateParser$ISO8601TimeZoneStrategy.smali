.class Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final ISO_8601_1_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final ISO_8601_2_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final ISO_8601_3_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 929
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 930
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 931
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V

    .line 914
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->createPattern(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    .locals 1

    .line 906
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0
.end method

.method static getStrategy(I)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    .locals 2
    .param p0, "tokenLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tokenLen"
        }
    .end annotation

    .line 941
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 947
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 949
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid number of X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 943
    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0
.end method


# virtual methods
.method setCalendar(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 2
    .param p1, "parser"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parser",
            "cal",
            "value"
        }
    .end annotation

    .line 922
    const-string v0, "Z"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 925
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 927
    :goto_0
    return-void
.end method
