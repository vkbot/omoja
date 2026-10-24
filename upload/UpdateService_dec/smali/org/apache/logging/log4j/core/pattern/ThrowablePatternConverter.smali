.class public Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "ThrowablePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "ThrowablePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "ex",
        "throwable",
        "exception"
    }
.end annotation


# instance fields
.field protected final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final nonStandardLineSeparator:Z

.field protected final options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

.field private rawOption:Ljava/lang/String;

.field private final subShortOption:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "style",
            "options"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "style",
            "options",
            "config"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p3}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    .line 78
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 79
    aget-object v1, p3, v0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSuffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 82
    invoke-static {p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v1

    .line 83
    .local v1, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "parsedSuffixFormatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const/4 v3, 0x0

    .line 86
    .local v3, "hasThrowableSuffixFormatter":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 87
    .local v5, "suffixFormatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->handlesThrowable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    const/4 v3, 0x1

    .line 90
    .end local v5    # "suffixFormatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    :cond_1
    goto :goto_0

    .line 91
    :cond_2
    if-nez v3, :cond_3

    .line 92
    iput-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatters:Ljava/util/List;

    goto :goto_2

    .line 94
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, "suffixFormatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 96
    .local v6, "suffixFormatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->handlesThrowable()Z

    move-result v7

    if-nez v7, :cond_4

    .line 97
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v6    # "suffixFormatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    :cond_4
    goto :goto_1

    .line 100
    :cond_5
    iput-object v4, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatters:Ljava/util/List;

    .line 102
    .end local v1    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .end local v2    # "parsedSuffixFormatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v3    # "hasThrowableSuffixFormatter":Z
    .end local v4    # "suffixFormatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    :goto_2
    goto :goto_3

    .line 103
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatters:Ljava/util/List;

    .line 105
    :goto_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v2, "short.message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    .line 106
    const-string v3, "short.localizedMessage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    .line 107
    const-string v3, "short.fileName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    .line 108
    const-string v3, "short.lineNumber"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    .line 109
    const-string v3, "short.methodName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    .line 110
    const-string v3, "short.className"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v0, v2

    :cond_8
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->subShortOption:Z

    .line 111
    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->nonStandardLineSeparator:Z

    .line 112
    return-void
.end method

.method private formatOption(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "throwable",
            "suffix",
            "buffer"
        }
    .end annotation

    .line 189
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 190
    .local v0, "len":I
    const/16 v1, 0x20

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->allLines()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->nonStandardLineSeparator:Z

    if-nez v2, :cond_2

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;

    invoke-direct {v2, p3}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 194
    :cond_2
    :goto_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 195
    .local v2, "w":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 197
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "array":[Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    array-length v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->minLines(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 199
    .local v4, "limit":I
    invoke-static {p2}, Lorg/apache/logging/log4j/util/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    .line 200
    .local v5, "suffixNotBlank":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-gt v6, v4, :cond_5

    .line 201
    aget-object v7, v3, v6

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    if-eqz v5, :cond_3

    .line 203
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_3
    if-ge v6, v4, :cond_4

    .line 207
    iget-object v7, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 210
    .end local v2    # "w":Ljava/io/StringWriter;
    .end local v3    # "array":[Ljava/lang/String;
    .end local v4    # "limit":I
    .end local v5    # "suffixNotBlank":Z
    .end local v6    # "i":I
    :cond_5
    nop

    .line 213
    :goto_2
    return-void
.end method

.method private formatSubShortOption(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "t",
            "suffix",
            "buffer"
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    .line 146
    .local v0, "throwingMethod":Ljava/lang/StackTraceElement;
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 148
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 149
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 153
    .end local v1    # "trace":[Ljava/lang/StackTraceElement;
    :cond_0
    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    .line 154
    const-string v1, ""

    .line 156
    .local v1, "toAppend":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v3, "short.className"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v3, "short.methodName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v3, "short.lineNumber"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v3, "short.message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v3, "short.localizedMessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->rawOption:Ljava/lang/String;

    const-string v3, "short.fileName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_6
    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 176
    .local v2, "len":I
    const/16 v3, 0x20

    if-lez v2, :cond_7

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_7

    .line 177
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_7
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {p2}, Lorg/apache/logging/log4j/util/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .end local v1    # "toAppend":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_8
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;
    .locals 3
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "options"
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;

    const-string v1, "Throwable"

    const-string v2, "throwable"

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "buffer"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 133
    .local v0, "t":Ljava/lang/Throwable;
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->subShortOption:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->getSuffix(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatSubShortOption(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->anyLines()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->getSuffix(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatOption(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public getOptions()Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    return-object v0
.end method

.method protected getSuffix(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, ""

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "toAppendTo":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 232
    iget-object v3, p0, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->formatters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-virtual {v3, p1, v0}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handlesThrowable()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method
