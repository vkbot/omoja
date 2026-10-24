.class public final Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
.super Ljava/lang/Object;
.source "RegexReplacement.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "replace"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;

.field private final substitution:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "substitution"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "substitution"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->pattern:Ljava/util/regex/Pattern;

    .line 48
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->substitution:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static createRegexReplacement(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .locals 2
    .param p0, "regex"    # Ljava/util/regex/Pattern;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "regex"
        .end annotation
    .end param
    .param p1, "replacement"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "replacement"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "regex",
            "replacement"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 75
    if-nez p0, :cond_0

    .line 76
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "A regular expression is required for replacement"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "A replacement string is required to perform replacement"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 83
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
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

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->substitution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace(regex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", replacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->substitution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
