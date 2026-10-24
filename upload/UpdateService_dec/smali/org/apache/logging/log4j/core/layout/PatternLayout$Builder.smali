.class public Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
.super Ljava/lang/Object;
.source "PatternLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/PatternLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/PatternLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private alwaysWriteExceptions:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private charset:Ljava/nio/charset/Charset;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private disableAnsi:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private footer:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private header:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private noConsoleNoAnsi:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private pattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PatternSelector"
    .end annotation
.end field

.field private regexReplacement:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Replace"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const-string v0, "%m%n"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->pattern:Ljava/lang/String;

    .line 641
    nop

    .line 642
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->charset:Ljava/nio/charset/Charset;

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->alwaysWriteExceptions:Z

    .line 647
    nop

    .line 648
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->useAnsiEscapeCodes()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->disableAnsi:Z

    .line 660
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$1;

    .line 626
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;-><init>()V

    return-void
.end method

.method private useAnsiEscapeCodes()Z
    .locals 4

    .line 663
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 664
    .local v0, "propertiesUtil":Lorg/apache/logging/log4j/util/PropertiesUtil;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->isOsWindows()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 665
    .local v1, "isPlatformSupportsAnsi":Z
    const-string v3, "log4j.skipJansi"

    invoke-virtual {v0, v3, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 666
    .local v3, "isJansiRequested":Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .locals 13

    .line 766
    new-instance v12, Lorg/apache/logging/log4j/core/layout/PatternLayout;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->regexReplacement:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->pattern:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->charset:Ljava/nio/charset/Charset;

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->alwaysWriteExceptions:Z

    iget-boolean v7, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->disableAnsi:Z

    iget-boolean v8, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->noConsoleNoAnsi:Z

    iget-object v9, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->header:Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->footer:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/layout/PatternLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternSelector;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V

    return-object v12
.end method

.method public withAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "alwaysWriteExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alwaysWriteExceptions"
        }
    .end annotation

    .line 722
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->alwaysWriteExceptions:Z

    .line 723
    return-object p0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 711
    if-eqz p1, :cond_0

    .line 712
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->charset:Ljava/nio/charset/Charset;

    .line 714
    :cond_0
    return-object p0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 693
    return-object p0
.end method

.method public withDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "disableAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "disableAnsi"
        }
    .end annotation

    .line 732
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->disableAnsi:Z

    .line 733
    return-object p0
.end method

.method public withFooter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "footer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "footer"
        }
    .end annotation

    .line 759
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->footer:Ljava/lang/String;

    .line 760
    return-object p0
.end method

.method public withHeader(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "header"
        }
    .end annotation

    .line 750
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->header:Ljava/lang/String;

    .line 751
    return-object p0
.end method

.method public withNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "noConsoleNoAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "noConsoleNoAnsi"
        }
    .end annotation

    .line 741
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->noConsoleNoAnsi:Z

    .line 742
    return-object p0
.end method

.method public withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 674
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->pattern:Ljava/lang/String;

    .line 675
    return-object p0
.end method

.method public withPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "patternSelector"
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    .line 684
    return-object p0
.end method

.method public withRegexReplacement(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;
    .locals 0
    .param p1, "regexReplacement"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regexReplacement"
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->regexReplacement:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    .line 702
    return-object p0
.end method
