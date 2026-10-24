.class public final Lorg/apache/logging/log4j/core/layout/HtmlLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "HtmlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;,
        Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "HtmlLayout"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/html"

.field private static final DEFAULT_DATE_PATTERN:Ljava/lang/String; = "JVM_ELAPSE_TIME"

.field public static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "arial,sans-serif"

.field private static final DEFAULT_TITLE:Ljava/lang/String; = "Log4j Log Messages"

.field private static final REGEXP:Ljava/lang/String;

.field private static final TRACE_PREFIX:Ljava/lang/String; = "<br />&nbsp;&nbsp;&nbsp;&nbsp;"


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final datePatternConverter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

.field private final font:Ljava/lang/String;

.field private final fontSize:Ljava/lang/String;

.field private final headerSize:Ljava/lang/String;

.field private final jvmStartTime:J

.field private final locationInfo:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->REGEXP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "locationInfo"    # Z
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "font"    # Ljava/lang/String;
    .param p6, "fontSize"    # Ljava/lang/String;
    .param p7, "headerSize"    # Ljava/lang/String;
    .param p8, "datePattern"    # Ljava/lang/String;
    .param p9, "timezone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "locationInfo",
            "title",
            "contentType",
            "charset",
            "font",
            "fontSize",
            "headerSize",
            "datePattern",
            "timezone"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Ljava/nio/charset/Charset;)V

    .line 65
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->jvmStartTime:J

    .line 108
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->locationInfo:Z

    .line 109
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->title:Ljava/lang/String;

    .line 110
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->addCharsetToContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->contentType:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->font:Ljava/lang/String;

    .line 112
    iput-object p6, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->fontSize:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->headerSize:Ljava/lang/String;

    .line 114
    const-string v0, "JVM_ELAPSE_TIME"

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p8, v0, v1

    const/4 v1, 0x1

    aput-object p9, v0, v1

    .line 115
    invoke-static {v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->datePatternConverter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/HtmlLayout$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/nio/charset/Charset;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Lorg/apache/logging/log4j/core/layout/HtmlLayout$1;

    .line 52
    invoke-direct/range {p0 .. p9}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addCharsetToContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contentType"
        }
    .end annotation

    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/html; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    const-string v0, "charset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "sbuilder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sbuilder",
            "s"
        }
    .end annotation

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    return-object p1
.end method

.method private appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sbuilder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sbuilder",
            "s"
        }
    .end annotation

    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    return-object p1
.end method

.method private appendThrowableAsHtml(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "sbuf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "throwable",
            "sbuf"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 243
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 245
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 249
    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 250
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 251
    .local v2, "reader":Ljava/io/LineNumberReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v3, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    .line 255
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    goto :goto_1

    .line 263
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 258
    :catch_1
    move-exception v4

    .line 259
    .local v4, "ex":Ljava/io/IOException;
    instance-of v5, v4, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_1

    .line 260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_1
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_2
    const/4 v4, 0x1

    .line 265
    .local v4, "first":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 266
    .local v6, "line":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 267
    const-string v7, "<br />&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 269
    :cond_2
    const/4 v4, 0x0

    .line 271
    :goto_4
    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    sget-object v7, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v6    # "line":Ljava/lang/String;
    goto :goto_3

    .line 274
    :cond_3
    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/HtmlLayout;
    .locals 1

    .line 377
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/HtmlLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createLayout(ZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout;
    .locals 16
    .param p0, "locationInfo"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "locationInfo"
        .end annotation
    .end param
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "Log4j Log Messages"
            value = "title"
        .end annotation
    .end param
    .param p2, "contentType"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "contentType"
        .end annotation
    .end param
    .param p3, "charset"    # Ljava/nio/charset/Charset;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "UTF-8"
            value = "charset"
        .end annotation
    .end param
    .param p4, "fontSize"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "fontSize"
        .end annotation
    .end param
    .param p5, "font"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "arial,sans-serif"
            value = "fontName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10,
            0x0,
            0x10
        }
        names = {
            "locationInfo",
            "title",
            "contentType",
            "charset",
            "fontSize",
            "font"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 361
    invoke-static/range {p4 .. p4}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->getFontSize(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    move-result-object v0

    .line 362
    .local v0, "fs":Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->getFontSize()Ljava/lang/String;

    move-result-object v11

    .line 363
    .end local p4    # "fontSize":Ljava/lang/String;
    .local v11, "fontSize":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->larger()Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->getFontSize()Ljava/lang/String;

    move-result-object v12

    .line 364
    .local v12, "headerSize":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text/html; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local p2    # "contentType":Ljava/lang/String;
    .local v1, "contentType":Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v1    # "contentType":Ljava/lang/String;
    .restart local p2    # "contentType":Ljava/lang/String;
    :cond_0
    move-object/from16 v13, p3

    move-object/from16 v14, p2

    .line 367
    .end local p2    # "contentType":Ljava/lang/String;
    .local v14, "contentType":Ljava/lang/String;
    :goto_0
    new-instance v15, Lorg/apache/logging/log4j/core/layout/HtmlLayout;

    const/4 v10, 0x0

    const-string v9, "JVM_ELAPSE_TIME"

    move-object v1, v15

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v1 .. v10}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 2
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 382
    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;-><init>(Lorg/apache/logging/log4j/core/layout/HtmlLayout$1;)V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFooter()[B
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "</table>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "<br>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, "</body></html>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getHeader()[B
    .locals 3

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" "

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "\"http://www.w3.org/TR/html4/loose.dtd\">"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "<html>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "<head>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "<meta charset=\""

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "\"/>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "<title>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "</title>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "<style type=\"text/css\">"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "<!--"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "body, table {font-family:"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->font:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; font-size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->headerSize:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "th {background: #336699; color: #FFFFFF; text-align: left;}"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "-->"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "</style>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, "</head>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "<body bgcolor=\"#FFFFFF\" topmargin=\"6\" leftmargin=\"6\">"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "<hr size=\"1\" noshade=\"noshade\">"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log session start time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {p0, v0, v2}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, "<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\" bordercolor=\"#224466\" width=\"100%\">"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "<tr>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, "<th>Time</th>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "<th>Thread</th>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, "<th>Level</th>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, "<th>Logger</th>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->locationInfo:Z

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "<th>File:Line</th>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_0
    const-string v1, "<th>Message</th>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, "</tr>"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendLs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationInfo()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->locationInfo:Z

    return v0
.end method

.method public requiresLocation()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->locationInfo:Z

    return v0
.end method

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

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 152
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "<td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->datePatternConverter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    if-nez v2, :cond_0

    .line 159
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->jvmStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v2, p1, v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 163
    :goto_0
    const-string v2, "</td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "escapedThread":Ljava/lang/String;
    const-string v4, "<td title=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " thread\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v5, "<td title=\"Level\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v5

    sget-object v6, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/Level;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    const-string v5, "<font color=\"#339933\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v5, "</font>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v5

    sget-object v6, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/Level;->isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    const-string v5, "<font color=\"#993300\"><strong>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v5, "</strong></font>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    :cond_2
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "escapedLogger":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    const-string v5, "root"

    .line 188
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " logger\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->locationInfo:Z

    if-eqz v4, :cond_4

    .line 193
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 194
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_4
    const-string v1, "<td title=\"Message\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->REGEXP:Ljava/lang/String;

    const-string v6, "<br />"

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "</tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v1

    const-string v2, ";\" colspan=\"6\" "

    const-string v4, "<tr><td bgcolor=\"#EEEEEE\" style=\"font-size : "

    const-string v6, "</td></tr>"

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 207
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "title=\"Nested Diagnostic Context\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "NDC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_5
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "title=\"Mapped Diagnostic Context\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "MDC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Transform;->escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_6
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    .line 223
    .local v1, "throwable":Ljava/lang/Throwable;
    if-eqz v1, :cond_7

    .line 224
    const-string v2, "<tr><td bgcolor=\"#993300\" style=\"color:White; font-size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->fontSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, ";\" colspan=\"6\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->appendThrowableAsHtml(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 227
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
