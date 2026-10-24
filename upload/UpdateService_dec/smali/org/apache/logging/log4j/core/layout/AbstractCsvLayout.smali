.class public abstract Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "AbstractCsvLayout.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "text/csv"

.field protected static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final DEFAULT_FORMAT:Ljava/lang/String; = "Default"


# instance fields
.field private final format:Lorg/apache/commons/csv/CSVFormat;


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "csvFormat"    # Lorg/apache/commons/csv/CSVFormat;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "footer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "charset",
            "csvFormat",
            "header",
            "footer"
        }
    .end annotation

    .line 70
    nop

    .line 71
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v0

    .line 72
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    .line 70
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)V

    .line 73
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;->format:Lorg/apache/commons/csv/CSVFormat;

    .line 74
    return-void
.end method

.method protected static createFormat(Ljava/lang/String;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/Character;
    .param p2, "escape"    # Ljava/lang/Character;
    .param p3, "quote"    # Ljava/lang/Character;
    .param p4, "quoteMode"    # Lorg/apache/commons/csv/QuoteMode;
    .param p5, "nullString"    # Ljava/lang/String;
    .param p6, "recordSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "format",
            "delimiter",
            "escape",
            "quote",
            "quoteMode",
            "nullString",
            "recordSeparator"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lorg/apache/commons/csv/CSVFormat;->valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 41
    .local v0, "csvFormat":Lorg/apache/commons/csv/CSVFormat;
    invoke-static {p1}, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;->isNotNul(Ljava/lang/Character;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 44
    :cond_0
    invoke-static {p2}, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;->isNotNul(Ljava/lang/Character;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0, p2}, Lorg/apache/commons/csv/CSVFormat;->withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 47
    :cond_1
    invoke-static {p3}, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;->isNotNul(Ljava/lang/Character;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v0, p3}, Lorg/apache/commons/csv/CSVFormat;->withQuote(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 50
    :cond_2
    if-eqz p4, :cond_3

    .line 51
    invoke-virtual {v0, p4}, Lorg/apache/commons/csv/CSVFormat;->withQuoteMode(Lorg/apache/commons/csv/QuoteMode;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 53
    :cond_3
    if-eqz p5, :cond_4

    .line 54
    invoke-virtual {v0, p5}, Lorg/apache/commons/csv/CSVFormat;->withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 56
    :cond_4
    if-eqz p6, :cond_5

    .line 57
    invoke-virtual {v0, p6}, Lorg/apache/commons/csv/CSVFormat;->withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    .line 59
    :cond_5
    return-object v0
.end method

.method private static isNotNul(Ljava/lang/Character;)Z
    .locals 1
    .param p0, "character"    # Ljava/lang/Character;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "character"
        }
    .end annotation

    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/csv; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;->format:Lorg/apache/commons/csv/CSVFormat;

    return-object v0
.end method
