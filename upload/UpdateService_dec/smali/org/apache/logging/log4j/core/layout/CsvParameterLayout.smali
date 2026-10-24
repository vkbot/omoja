.class public Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;
.source "CsvParameterLayout.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "CsvParameterLayout"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    .line 83
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;
    .locals 7

    .line 54
    new-instance v6, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v0, "Default"

    invoke-static {v0}, Lorg/apache/commons/csv/CSVFormat;->valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createLayout(Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;
    .locals 7
    .param p0, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 58
    new-instance v6, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createLayout(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;
    .locals 8
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p1, "format"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "Default"
            value = "format"
        .end annotation
    .end param
    .param p2, "delimiter"    # Ljava/lang/Character;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "delimiter"
        .end annotation
    .end param
    .param p3, "escape"    # Ljava/lang/Character;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "escape"
        .end annotation
    .end param
    .param p4, "quote"    # Ljava/lang/Character;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "quote"
        .end annotation
    .end param
    .param p5, "quoteMode"    # Lorg/apache/commons/csv/QuoteMode;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "quoteMode"
        .end annotation
    .end param
    .param p6, "nullString"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "nullString"
        .end annotation
    .end param
    .param p7, "recordSeparator"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "recordSeparator"
        .end annotation
    .end param
    .param p8, "charset"    # Ljava/nio/charset/Charset;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "UTF-8"
            value = "charset"
        .end annotation
    .end param
    .param p9, "header"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "header"
        .end annotation
    .end param
    .param p10, "footer"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "footer"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "format",
            "delimiter",
            "escape",
            "quote",
            "quoteMode",
            "nullString",
            "recordSeparator",
            "charset",
            "header",
            "footer"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 78
    invoke-static/range {p1 .. p7}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;->createFormat(Ljava/lang/String;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v6

    .line 79
    .local v6, "csvFormat":Lorg/apache/commons/csv/CSVFormat;
    new-instance v7, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, v6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
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

    .line 88
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 89
    .local v0, "message":Lorg/apache/logging/log4j/message/Message;
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "parameters":[Ljava/lang/Object;
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    .local v2, "buffer":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;->getFormat()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lorg/apache/commons/csv/CSVFormat;->printRecord(Ljava/lang/Appendable;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/CsvParameterLayout;->getFormat()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/csv/CSVFormat;->getCommentMarker()Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
