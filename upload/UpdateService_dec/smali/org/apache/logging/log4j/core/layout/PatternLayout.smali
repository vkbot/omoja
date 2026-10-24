.class public final Lorg/apache/logging/log4j/core/layout/PatternLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "PatternLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;,
        Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;,
        Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;,
        Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;,
        Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;,
        Lorg/apache/logging/log4j/core/layout/PatternLayout$NoFormatPatternSerializer;,
        Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "PatternLayout"
    printObject = true
.end annotation


# static fields
.field public static final DEFAULT_CONVERSION_PATTERN:Ljava/lang/String; = "%m%n"

.field public static final KEY:Ljava/lang/String; = "Converter"

.field public static final SIMPLE_CONVERSION_PATTERN:Ljava/lang/String; = "%d [%t] %p %c - %m%n"

.field public static final TTCC_CONVERSION_PATTERN:Ljava/lang/String; = "%r [%t] %p %c %notEmpty{%x }- %m%n"


# instance fields
.field private final conversionPattern:Ljava/lang/String;

.field private final eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

.field private final patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternSelector;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "replace"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .param p3, "eventPattern"    # Ljava/lang/String;
    .param p4, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "alwaysWriteExceptions"    # Z
    .param p7, "disableAnsi"    # Z
    .param p8, "noConsoleNoAnsi"    # Z
    .param p9, "headerPattern"    # Ljava/lang/String;
    .param p10, "footerPattern"    # Ljava/lang/String;
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
            0x10
        }
        names = {
            "config",
            "replace",
            "eventPattern",
            "patternSelector",
            "charset",
            "alwaysWriteExceptions",
            "disableAnsi",
            "noConsoleNoAnsi",
            "headerPattern",
            "footerPattern"
        }
    .end annotation

    .line 109
    nop

    .line 110
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setReplace(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p7}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p8}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p9}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v0

    .line 119
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setReplace(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v1, p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, p6}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p7}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p8}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1, p10}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    .line 109
    invoke-direct {p0, p1, p5, v0, v1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)V

    .line 128
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->conversionPattern:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    .line 130
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setReplace(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p7}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p8}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 138
    const-string v1, "%m%n"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternSelector;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .param p5, "x4"    # Ljava/nio/charset/Charset;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$1;

    .line 60
    invoke-direct/range {p0 .. p10}, Lorg/apache/logging/log4j/core/layout/PatternLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternSelector;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .locals 1

    .line 597
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultLayout(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .locals 1
    .param p0, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 610
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createLayout(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternSelector;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Ljava/nio/charset/Charset;ZZLjava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "%m%n"
            value = "pattern"
        .end annotation
    .end param
    .param p1, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PatternSelector"
        .end annotation
    .end param
    .param p2, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p3, "replace"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Replace"
        .end annotation
    .end param
    .param p4, "charset"    # Ljava/nio/charset/Charset;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "charset"
        .end annotation
    .end param
    .param p5, "alwaysWriteExceptions"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "alwaysWriteExceptions"
        .end annotation
    .end param
    .param p6, "noConsoleNoAnsi"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "noConsoleNoAnsi"
        .end annotation
    .end param
    .param p7, "headerPattern"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "header"
        .end annotation
    .end param
    .param p8, "footerPattern"    # Ljava/lang/String;
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
            0x10
        }
        names = {
            "pattern",
            "patternSelector",
            "config",
            "replace",
            "charset",
            "alwaysWriteExceptions",
            "noConsoleNoAnsi",
            "headerPattern",
            "footerPattern"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 303
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withRegexReplacement(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p7}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withHeader(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0, p8}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withFooter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method public static createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .locals 4
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 249
    const-string v0, "Converter"

    if-nez p0, :cond_0

    .line 250
    new-instance v1, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    const-class v2, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1

    .line 252
    :cond_0
    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    .line 253
    .local v1, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    if-nez v1, :cond_1

    .line 254
    new-instance v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    const-class v3, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-direct {v2, p0, v0, v3}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;)V

    move-object v1, v2

    .line 255
    invoke-interface {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/Configuration;->addComponent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    .line 258
    :cond_1
    return-object v1
.end method

.method public static createSerializer(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternSelector;ZZ)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 2
    .param p0, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "replace"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "defaultPattern"    # Ljava/lang/String;
    .param p4, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .param p5, "alwaysWriteExceptions"    # Z
    .param p6, "noConsoleNoAnsi"    # Z
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
            "configuration",
            "replace",
            "pattern",
            "defaultPattern",
            "patternSelector",
            "alwaysWriteExceptions",
            "noConsoleNoAnsi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    .line 170
    .local v0, "builder":Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 171
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 172
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 173
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 174
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 175
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 176
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setReplace(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    .line 177
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    return-object v1
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 2
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 620
    new-instance v0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;-><init>(Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V

    return-object v0
.end method

.method public static newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 1

    .line 143
    new-instance v0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;-><init>()V

    return-object v0
.end method

.method private toText(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "serializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p3, "destination"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "serializer",
            "event",
            "destination"
        }
    .end annotation

    .line 240
    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "event",
            "destination"
        }
    .end annotation

    .line 59
    check-cast p1, Lorg/apache/logging/log4j/core/LogEvent;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    return-void
.end method

.method public encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "destination"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->toText(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->getStringBuilderEncoder()Lorg/apache/logging/log4j/core/layout/Encoder;

    move-result-object v1

    .line 227
    .local v1, "encoder":Lorg/apache/logging/log4j/core/layout/Encoder;, "Lorg/apache/logging/log4j/core/layout/Encoder<Ljava/lang/StringBuilder;>;"
    invoke-interface {v1, v0, p2}, Lorg/apache/logging/log4j/core/layout/Encoder;->encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 228
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    .line 229
    return-void
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "structured"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "formatType"

    const-string v2, "conversion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->conversionPattern:Ljava/lang/String;

    const-string v2, "format"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object v0
.end method

.method public getConversionPattern()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->conversionPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    return-object v0
.end method

.method public requiresLocation()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/impl/LocationAware;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "event",
            "stringBuilder"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 221
    return-void
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

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->eventSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout;->conversionPattern:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
