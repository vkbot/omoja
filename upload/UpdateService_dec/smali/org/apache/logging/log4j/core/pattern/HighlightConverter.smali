.class public final Lorg/apache/logging/log4j/core/pattern/HighlightConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "HighlightConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/AnsiConverter;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "highlight"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "highlight"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGBACK_STYLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STYLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final STYLE_KEY:Ljava/lang/String; = "STYLE"

.field private static final STYLE_KEY_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final STYLE_KEY_LOGBACK:Ljava/lang/String; = "LOGBACK"


# instance fields
.field private final defaultStyle:Ljava/lang/String;

.field private final levelStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final noAnsi:Z

.field private final patternFormatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->STYLES:Ljava/util/Map;

    .line 97
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BRIGHT"

    const-string v3, "RED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v4, "YELLOW"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GREEN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CYAN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BLACK"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BLINK"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLUE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    const-string v2, "DEFAULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->STYLES:Ljava/util/Map;

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGBACK_STYLES:Ljava/util/Map;

    const-string v2, "LOGBACK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Z)V
    .locals 1
    .param p3, "noAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "patternFormatters",
            "levelStyles",
            "noAnsi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 220
    .local p1, "patternFormatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .local p2, "levelStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "style"

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->patternFormatters:Ljava/util/List;

    .line 222
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->levelStyles:Ljava/util/Map;

    .line 223
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getDefaultStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->defaultStyle:Ljava/lang/String;

    .line 224
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->noAnsi:Z

    .line 225
    return-void
.end method

.method private static createLevelStyleMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 145
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p0, v0

    .line 149
    const-string v1, "disableAnsi=(true|false)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "noConsoleNoAnsi=(true|false)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "string":Ljava/lang/String;
    const-string v1, "STYLE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createMap(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 153
    .local v2, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->DEFAULT_STYLES:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 154
    .local v3, "levelStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 155
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 157
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    sget-object v8, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->STYLES:Ljava/util/Map;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 159
    .local v8, "enumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_1

    .line 160
    sget-object v9, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown level style: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Use one of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->STYLES:Ljava/util/Map;

    .line 161
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 160
    invoke-interface {v9, v10}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {v3, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 165
    .end local v8    # "enumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    goto :goto_2

    .line 166
    :cond_2
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v8

    .line 167
    .local v8, "level":Lorg/apache/logging/log4j/Level;
    if-nez v8, :cond_3

    .line 168
    sget-object v9, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Setting style for yet unknown level name {}"

    invoke-interface {v9, v10, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 171
    :cond_3
    invoke-virtual {v8}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "level":Lorg/apache/logging/log4j/Level;
    :goto_2
    goto :goto_0

    .line 175
    :cond_4
    return-object v3
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/HighlightConverter;
    .locals 7
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

    .line 187
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 188
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of options on style. Expected at least 1, received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 189
    return-object v1

    .line 191
    :cond_0
    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 192
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied on style"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 193
    return-object v1

    .line 195
    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v1

    .line 196
    .local v1, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disableAnsi=true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 198
    .local v4, "disableAnsi":Z
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "noConsoleNoAnsi=true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 199
    .local v5, "noConsoleNoAnsi":Z
    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :cond_3
    :goto_0
    move v0, v2

    .line 200
    .local v0, "hideAnsi":Z
    new-instance v2, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;

    invoke-static {p1}, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->createLevelStyleMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v2, v3, v6, v0}, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;-><init>(Ljava/util/List;Ljava/util/Map;Z)V

    return-object v2
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 6
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

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "start":I
    const/4 v1, 0x0

    .line 234
    .local v1, "end":I
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->levelStyles:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, "levelStyle":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->noAnsi:Z

    if-nez v3, :cond_1

    .line 236
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 237
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 244
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->patternFormatters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 245
    iget-object v5, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->patternFormatters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-virtual {v5, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 250
    .local v3, "empty":Z
    :goto_1
    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->noAnsi:Z

    if-nez v4, :cond_5

    .line 251
    if-eqz v3, :cond_4

    .line 252
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 253
    :cond_4
    if-eqz v2, :cond_5

    .line 254
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->defaultStyle:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_5
    :goto_2
    return-void
.end method

.method getLevelStyle(Lorg/apache/logging/log4j/Level;)Ljava/lang/String;
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->levelStyles:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public handlesThrowable()Z
    .locals 3

    .line 265
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/HighlightConverter;->patternFormatters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 266
    .local v1, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->handlesThrowable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    .end local v1    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
