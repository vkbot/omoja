.class public Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "MessagePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;,
        Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;,
        Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "MessagePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "m",
        "msg",
        "message"
    }
.end annotation


# static fields
.field private static final LOOKUPS:Ljava/lang/String; = "lookups"

.field private static final NOLOOKUPS:Ljava/lang/String; = "nolookups"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 48
    const-string v0, "Message"

    const-string v1, "message"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$1;

    .line 42
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;-><init>()V

    return-void
.end method

.method private static loadMessageRenderer([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .locals 10
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 53
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    .line 54
    .local v4, "option":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x1ebb43

    const/4 v9, 0x1

    if-eq v7, v8, :cond_2

    const v8, 0x21ffab

    if-eq v7, v8, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v7, "HTML"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v9

    goto :goto_1

    :cond_2
    const-string v7, "ANSI"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v2

    :goto_1
    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    .line 53
    .end local v4    # "option":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .restart local v4    # "option":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/HtmlTextRenderer;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/HtmlTextRenderer;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_4
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->isJansiAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->DefaultMessageStyleMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;-><init>([Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 59
    :cond_5
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    .line 60
    const-string v2, "You requested ANSI message rendering but JANSI is not on the classpath."

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;)V

    .line 61
    return-object v0

    .line 67
    .end local v4    # "option":Ljava/lang/String;
    :cond_6
    return-object v0
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
    .locals 4
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

    .line 80
    invoke-static {p1}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;->withoutLookupOptions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "formats":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;->loadMessageRenderer([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    move-result-object v1

    .line 82
    .local v1, "textRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;

    invoke-direct {v2, v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;-><init>([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;->access$000()Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;

    move-result-object v2

    .line 85
    .local v2, "result":Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
    :goto_1
    if-eqz v1, :cond_2

    .line 86
    new-instance v3, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;

    invoke-direct {v3, v2, v1}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    move-object v2, v3

    .line 88
    :cond_2
    return-object v2
.end method

.method private static withoutLookupOptions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 92
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 97
    .local v3, "option":Ljava/lang/String;
    const-string v4, "lookups"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "nolookups"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    :cond_2
    :goto_1
    sget-object v4, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "The {} option will be ignored. Message Lookups are no longer supported."

    invoke-interface {v4, v5, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .end local v3    # "option":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_3
    sget-object v1, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 93
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    return-object p0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "toAppendTo"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
