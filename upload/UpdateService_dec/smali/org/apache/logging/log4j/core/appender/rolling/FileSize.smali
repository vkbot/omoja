.class public final Lorg/apache/logging/log4j/core/appender/rolling/FileSize;
.super Ljava/lang/Object;
.source "FileSize.java"


# static fields
.field private static final GB:J = 0x40000000L

.field private static final KB:J = 0x400L

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MB:J = 0x100000L

.field private static final TB:J = 0x10000000000L

.field private static final VALUE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 44
    nop

    .line 45
    const-string v0, "([0-9]+([.,][0-9]+)?)\\s*(|K|M|G|T)B?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->VALUE_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;J)J
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "string",
            "defaultValue"
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->VALUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 62
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "quantityString":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 68
    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 73
    .local v2, "quantity":D
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "unit":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    mul-double/2addr v5, v2

    double-to-long v5, v5

    return-wide v5

    .line 80
    :cond_1
    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v5, v2

    double-to-long v5, v5

    return-wide v5

    .line 82
    :cond_2
    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v5, v2

    double-to-long v5, v5

    return-wide v5

    .line 84
    :cond_3
    const-string v5, "T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    const-wide/high16 v5, 0x4270000000000000L    # 1.099511627776E12

    mul-double/2addr v5, v2

    double-to-long v5, v5

    return-wide v5

    .line 87
    :cond_4
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileSize units not recognized: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-wide p1

    .line 77
    :cond_5
    :goto_0
    double-to-long v5, v2

    return-wide v5

    .line 91
    .end local v1    # "quantityString":Ljava/lang/String;
    .end local v2    # "quantity":D
    .end local v4    # "unit":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "error":Ljava/text/ParseException;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileSize unable to parse numeric part: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-wide p1

    .line 98
    .end local v1    # "error":Ljava/text/ParseException;
    :cond_6
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileSize unable to parse bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 99
    return-wide p1
.end method
