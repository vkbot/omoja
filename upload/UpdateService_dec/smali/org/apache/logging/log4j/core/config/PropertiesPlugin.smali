.class public final Lorg/apache/logging/log4j/core/config/PropertiesPlugin;
.super Ljava/lang/Object;
.source "PropertiesPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "properties"
    printObject = true
.end annotation


# static fields
.field private static final UNESCAPING_SUBSTITUTOR:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lorg/apache/logging/log4j/core/config/PropertiesPlugin;->createUnescapingSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin;->UNESCAPING_SUBSTITUTOR:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static configureSubstitutor([Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .locals 4
    .param p0, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Properties"
        .end annotation
    .end param
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "properties",
            "config"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 52
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    new-array v0, v0, [Lorg/apache/logging/log4j/core/config/Property;

    .line 53
    .local v0, "unescapedProperties":[Lorg/apache/logging/log4j/core/config/Property;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 54
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/logging/log4j/core/config/PropertiesPlugin;->unescape(Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/Interpolator;

    new-instance v2, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    .line 57
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>([Lorg/apache/logging/log4j/core/config/Property;Ljava/util/Map;)V

    .line 58
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getPluginPackages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/util/List;)V

    .line 56
    return-object v1
.end method

.method private static createUnescapingSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2

    .line 79
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    sget-object v1, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;->INSTANCE:Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 80
    .local v0, "substitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 81
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 82
    return-object v0
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin;->UNESCAPING_SUBSTITUTOR:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unescape(Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/config/Property;
    .locals 3
    .param p0, "input"    # Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Property;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/PropertiesPlugin;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/Property;->createProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v0

    return-object v0
.end method
