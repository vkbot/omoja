.class public Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;
.source "CsvLogEventLayout.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "CsvLogEventLayout"
    printObject = true
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 74
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/layout/AbstractCsvLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;
    .locals 7

    .line 45
    new-instance v6, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;

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

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createLayout(Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;
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

    .line 49
    new-instance v6, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createLayout(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;
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

    .line 69
    invoke-static/range {p1 .. p7}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;->createFormat(Ljava/lang/String;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v6

    .line 70
    .local v6, "csvFormat":Lorg/apache/commons/csv/CSVFormat;
    new-instance v7, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, v6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

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

    .line 79
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/CsvLogEventLayout;->getFormat()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v1

    .line 82
    .local v1, "format":Lorg/apache/commons/csv/CSVFormat;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getNanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 83
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 84
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 85
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 86
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 87
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 88
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 89
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerFqcn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 90
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 91
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 92
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 93
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 94
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 95
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 96
    invoke-virtual {v1, v0}, Lorg/apache/commons/csv/CSVFormat;->println(Ljava/lang/Appendable;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVFormat;->getCommentMarker()Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
