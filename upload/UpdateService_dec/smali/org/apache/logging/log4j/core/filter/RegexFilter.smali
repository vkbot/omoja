.class public final Lorg/apache/logging/log4j/core/filter/RegexFilter;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.source "RegexFilter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "RegexFilter"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_PATTERN_FLAGS:I


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;

.field private final useRawMessage:Z


# direct methods
.method private constructor <init>(ZLjava/util/regex/Pattern;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 0
    .param p1, "raw"    # Z
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p4, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "raw",
            "pattern",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p3, p4}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 53
    iput-object p2, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->pattern:Ljava/util/regex/Pattern;

    .line 54
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->useRawMessage:Z

    .line 55
    return-void
.end method

.method public static createFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/RegexFilter;
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "regex"
        .end annotation
    .end param
    .param p1, "patternFlags"    # [Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PatternFlags"
        .end annotation
    .end param
    .param p2, "useRawMsg"    # Ljava/lang/Boolean;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "useRawMsg"
        .end annotation
    .end param
    .param p3, "match"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMatch"
        .end annotation
    .end param
    .param p4, "mismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMismatch"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "regex",
            "patternFlags",
            "useRawMsg",
            "match",
            "mismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 132
    if-nez p0, :cond_0

    .line 133
    sget-object v0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "A regular expression must be provided for RegexFilter"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/filter/RegexFilter;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1}, Lorg/apache/logging/log4j/core/filter/RegexFilter;->toPatternFlags([Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p4}, Lorg/apache/logging/log4j/core/filter/RegexFilter;-><init>(ZLjava/util/regex/Pattern;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-object v0
.end method

.method private filter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 93
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$toPatternFlags$0(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 2
    .param p0, "f1"    # Ljava/lang/reflect/Field;
    .param p1, "f2"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "f1",
            "f2"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static toPatternFlags([Ljava/lang/String;)I
    .locals 10
    .param p0, "patternFlags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "patternFlags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    const-class v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 145
    .local v1, "fields":[Ljava/lang/reflect/Field;
    sget-object v2, Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;->INSTANCE:Lorg/apache/logging/log4j/core/filter/-$$Lambda$RegexFilter$y8DjJ4VcGZig7GkmiwE0R0VGuWg;

    .line 146
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 147
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 148
    .local v3, "fieldNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 149
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .line 152
    .local v4, "flags":I
    array-length v5, p0

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, p0, v0

    .line 153
    .local v6, "test":Ljava/lang/String;
    invoke-static {v3, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 154
    .local v7, "index":I
    if-ltz v7, :cond_2

    .line 155
    aget-object v8, v1, v7

    .line 156
    .local v8, "field":Ljava/lang/reflect/Field;
    const-class v9, Ljava/util/regex/Pattern;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    or-int/2addr v4, v9

    .line 152
    .end local v6    # "test":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "field":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_3
    return v4

    .line 142
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    .end local v3    # "fieldNames":[Ljava/lang/String;
    .end local v4    # "flags":I
    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->useRawMessage:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/filter/RegexFilter;->filter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    return-object v1
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 66
    if-nez p4, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/filter/RegexFilter;->filter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "params"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/core/filter/RegexFilter;->filter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 75
    if-nez p4, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->useRawMessage:Z

    if-eqz v0, :cond_1

    invoke-interface {p4}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/filter/RegexFilter;->filter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "useRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->useRawMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/RegexFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
