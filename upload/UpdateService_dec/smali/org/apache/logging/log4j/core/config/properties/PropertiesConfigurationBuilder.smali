.class public Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;
.super Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilderFactory;
.source "PropertiesConfigurationBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilderFactory;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADVERTISER_KEY:Ljava/lang/String; = "advertiser"

.field private static final CONFIG_NAME:Ljava/lang/String; = "name"

.field private static final CONFIG_TYPE:Ljava/lang/String; = "type"

.field private static final DEST:Ljava/lang/String; = "dest"

.field private static final MONITOR_INTERVAL:Ljava/lang/String; = "monitorInterval"

.field private static final PACKAGES:Ljava/lang/String; = "packages"

.field private static final SHUTDOWN_HOOK:Ljava/lang/String; = "shutdownHook"

.field private static final SHUTDOWN_TIMEOUT:Ljava/lang/String; = "shutdownTimeout"

.field private static final STATUS_KEY:Ljava/lang/String; = "status"

.field private static final VERBOSE:Ljava/lang/String; = "verbose"


# instance fields
.field private final builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

.field private rootProperties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilderFactory;-><init>()V

    .line 73
    const-class v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->newConfigurationBuilder(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 74
    return-void
.end method

.method private addFiltersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;
    .locals 5
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "componentBuilder",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder<",
            "+",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;>;>(TB;",
            "Ljava/util/Properties;",
            ")TB;"
        }
    .end annotation

    .line 370
    .local p1, "componentBuilder":Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;, "TB;"
    nop

    .line 371
    const-string v0, "filter"

    invoke-static {p2, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v0

    .line 372
    .local v0, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 373
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    invoke-direct {p0, v3, v4}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createFilter(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 374
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    goto :goto_0

    .line 375
    :cond_0
    return-object p1
.end method

.method private addLoggersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;
    .locals 5
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerBuilder",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder<",
            "+",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;>;>(TB;",
            "Ljava/util/Properties;",
            ")TB;"
        }
    .end annotation

    .line 380
    .local p1, "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;, "TB;"
    nop

    .line 381
    const-string v0, "appenderRef"

    invoke-static {p2, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v0

    .line 382
    .local v0, "appenderRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 383
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    invoke-direct {p0, v3, v4}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createAppenderRef(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 384
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    goto :goto_0

    .line 385
    :cond_0
    return-object p1
.end method

.method private createAppender(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "properties"
        }
    .end annotation

    .line 217
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v2, v0, v1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newAppender(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;

    move-result-object v2

    .line 226
    .local v2, "appenderBuilder":Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    invoke-direct {p0, v2, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->addFiltersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;

    .line 227
    const-string v3, "layout"

    invoke-static {p2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    .line 228
    .local v3, "layoutProps":Ljava/util/Properties;
    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 229
    invoke-direct {p0, v0, v3}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createLayout(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;

    .line 232
    :cond_0
    invoke-static {v2, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;

    return-object v4

    .line 223
    .end local v2    # "appenderBuilder":Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    .end local v3    # "layoutProps":Ljava/util/Properties;
    :cond_1
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No type attribute provided for Appender "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name attribute provided for Appender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createAppenderRef(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "properties"
        }
    .end annotation

    .line 247
    const-string v0, "ref"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "ref":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newAppenderRef(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;

    move-result-object v1

    .line 252
    .local v1, "appenderRefBuilder":Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    const-string v2, "level"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/logging/log4j/util/Strings;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "level":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    invoke-interface {v1, v2, v3}, Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 256
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->addFiltersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;

    return-object v2

    .line 249
    .end local v1    # "appenderRefBuilder":Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    .end local v3    # "level":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ref attribute provided for AppenderRef "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parent",
            "key",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation

    .line 342
    .local p0, "parent":Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<*>;"
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "name":Ljava/lang/String;
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;->getBuilder()Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newComponent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v2

    .line 348
    .local v2, "componentBuilder":Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<TB;>;"
    invoke-static {v2, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v3

    return-object v3

    .line 345
    .end local v2    # "componentBuilder":Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<TB;>;"
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No type attribute provided for component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createFilter(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "properties"
        }
    .end annotation

    .line 236
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const-string v1, "onMatch"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, "onMatch":Ljava/lang/String;
    const-string v2, "onMismatch"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .local v2, "onMismatch":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v3, v0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;

    move-result-object v3

    .line 243
    .local v3, "filterBuilder":Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    invoke-static {v3, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;

    return-object v4

    .line 238
    .end local v1    # "onMatch":Ljava/lang/String;
    .end local v2    # "onMismatch":Ljava/lang/String;
    .end local v3    # "filterBuilder":Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No type attribute provided for Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createLayout(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;
    .locals 4
    .param p1, "appenderName"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "appenderName",
            "properties"
        }
    .end annotation

    .line 331
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newLayout(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;

    move-result-object v1

    .line 336
    .local v1, "layoutBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;
    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;

    return-object v2

    .line 333
    .end local v1    # "layoutBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No type attribute provided for Layout on Appender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createLogger(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "properties"
        }
    .end annotation

    .line 260
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "levelAndRefs":Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, "name":Ljava/lang/String;
    const-string v2, "includeLocation"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    .local v2, "location":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 266
    const-string v3, "level"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/logging/log4j/util/Strings;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "level":Ljava/lang/String;
    const-string v4, "type"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 270
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 271
    const-string v5, "asyncLogger"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 274
    .local v5, "includeLocation":Z
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v6, v1, v3, v5}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newAsyncLogger(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object v6

    .local v6, "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    goto :goto_0

    .line 276
    .end local v5    # "includeLocation":Z
    .end local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    :cond_0
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v5, v1, v3}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newAsyncLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object v6

    .restart local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    goto :goto_0

    .line 279
    .end local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    :cond_1
    new-instance v5, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Logger type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for Logger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 281
    :cond_2
    if-eqz v2, :cond_3

    .line 282
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 283
    .restart local v5    # "includeLocation":Z
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v6, v1, v3, v5}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newLogger(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object v6

    .restart local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    goto :goto_0

    .line 285
    .end local v5    # "includeLocation":Z
    .end local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    :cond_3
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v5, v1, v3}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object v6

    .line 287
    .restart local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    :goto_0
    invoke-direct {p0, v6, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->addLoggersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;

    .line 288
    invoke-direct {p0, v6, p2}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->addFiltersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;

    .line 289
    const-string v5, "additivity"

    invoke-virtual {p2, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 290
    .local v7, "additivity":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 291
    invoke-interface {v6, v5, v7}, Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 293
    :cond_4
    if-eqz v0, :cond_5

    .line 294
    const-string v5, "levelAndRefs"

    invoke-interface {v6, v5, v0}, Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 296
    :cond_5
    return-object v6

    .line 264
    .end local v3    # "level":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .end local v7    # "additivity":Ljava/lang/String;
    :cond_6
    new-instance v3, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No name attribute provided for Logger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private createRootLogger(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 300
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "levelAndRefs":Ljava/lang/String;
    const-string v1, "level"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "level":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "type":Ljava/lang/String;
    const-string v3, "includeLocation"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, "location":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 307
    const-string v4, "asyncRoot"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    if-eqz v3, :cond_0

    .line 309
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 310
    .local v4, "includeLocation":Z
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v5, v1, v4}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newAsyncRootLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;

    move-result-object v5

    .local v5, "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    goto :goto_0

    .line 312
    .end local v4    # "includeLocation":Z
    .end local v5    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    :cond_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v4, v1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newAsyncRootLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;

    move-result-object v5

    .restart local v5    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    goto :goto_0

    .line 315
    .end local v5    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    :cond_1
    new-instance v4, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Logger type for root logger"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 317
    :cond_2
    if-eqz v3, :cond_3

    .line 318
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 319
    .restart local v4    # "includeLocation":Z
    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v5, v1, v4}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newRootLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;

    move-result-object v5

    .restart local v5    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    goto :goto_0

    .line 321
    .end local v4    # "includeLocation":Z
    .end local v5    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    :cond_3
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v4, v1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newRootLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;

    move-result-object v5

    .line 323
    .restart local v5    # "loggerBuilder":Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    :goto_0
    invoke-direct {p0, v5, p1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->addLoggersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LoggableComponentBuilder;

    .line 324
    if-eqz v0, :cond_4

    .line 325
    const-string v4, "levelAndRefs"

    invoke-interface {v5, v4, v0}, Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 327
    :cond_4
    invoke-direct {p0, v5, p1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->addFiltersToComponent(Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterableComponentBuilder;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;

    return-object v4
.end method

.method private createScript(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;
    .locals 5
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 201
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    .local v0, "name":Ljava/lang/String;
    const-string v1, "language"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "language":Ljava/lang/String;
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v3, v0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;

    move-result-object v3

    .line 205
    .local v3, "scriptBuilder":Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;
    invoke-static {v3, p1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;

    return-object v4
.end method

.method private createScriptFile(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 4
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 210
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "name":Ljava/lang/String;
    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v2, v0, v1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newScriptFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;

    move-result-object v2

    .line 213
    .local v2, "scriptFileBuilder":Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    invoke-static {v2, p1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;

    return-object v3
.end method

.method private static processRemainingProperties(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 5
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;>(TB;",
            "Ljava/util/Properties;",
            ")TB;"
        }
    .end annotation

    .line 353
    .local p0, "builder":Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;, "TB;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 354
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    .local v0, "propertyName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 356
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "prefix":Ljava/lang/String;
    invoke-static {p1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    .line 359
    .local v3, "componentProperties":Ljava/util/Properties;
    invoke-static {p0, v2, v3}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;->addComponent(Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 360
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "componentProperties":Ljava/util/Properties;
    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    .line 362
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v0    # "propertyName":Ljava/lang/String;
    .end local v1    # "index":I
    :goto_1
    goto :goto_0

    .line 365
    :cond_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->build()Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;
    .locals 17

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "key":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    iget-object v4, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->addRootProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 92
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 94
    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setStatusLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 95
    const-string v3, "shutdownHook"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setShutdownHook(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 96
    const-string v3, "shutdownTimeout"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v5}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setShutdownTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 97
    const-string v3, "verbose"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 98
    const-string v3, "dest"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 99
    const-string v3, "packages"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setPackages(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 100
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setConfigurationName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 101
    const-string v3, "monitorInterval"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setMonitorInterval(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 102
    const-string v3, "advertiser"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setAdvertiser(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 104
    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    const-string v2, "property"

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 105
    .local v1, "propertyPlaceholders":Ljava/util/Properties;
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "key":Ljava/lang/String;
    iget-object v4, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 107
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 109
    :cond_2
    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 110
    const-string v3, "script"

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 109
    invoke-static {v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v2

    .line 111
    .local v2, "scripts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 112
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Properties;

    .line 113
    .local v6, "scriptProps":Ljava/util/Properties;
    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    .local v7, "type":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 117
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 118
    iget-object v8, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-direct {v0, v6}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createScript(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    goto :goto_3

    .line 120
    :cond_3
    iget-object v8, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-direct {v0, v6}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createScriptFile(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 122
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    .end local v6    # "scriptProps":Ljava/util/Properties;
    .end local v7    # "type":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 115
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    .restart local v6    # "scriptProps":Ljava/util/Properties;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_4
    new-instance v3, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    const-string v4, "No type provided for script - must be Script or ScriptFile"

    invoke-direct {v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    .end local v6    # "scriptProps":Ljava/util/Properties;
    .end local v7    # "type":Ljava/lang/String;
    :cond_5
    iget-object v3, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    const-string v4, "customLevel"

    invoke-static {v3, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    .line 125
    .local v3, "levelProps":Ljava/util/Properties;
    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 126
    invoke-virtual {v3}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    .local v5, "key":Ljava/lang/String;
    iget-object v6, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v5, v7}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->newCustomLevel(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 128
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_4

    .line 131
    :cond_6
    iget-object v4, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    const-string v5, "filters"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "filterProp":Ljava/lang/String;
    const-string v5, ","

    if-eqz v4, :cond_8

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "filterNames":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 135
    .local v10, "filterName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "name":Ljava/lang/String;
    iget-object v12, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    iget-object v13, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filter."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v13

    invoke-direct {v0, v11, v13}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createFilter(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 134
    .end local v10    # "filterName":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 138
    .end local v7    # "filterNames":[Ljava/lang/String;
    :cond_7
    goto :goto_7

    .line 140
    :cond_8
    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 141
    const-string v8, "filter"

    invoke-static {v7, v8}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v7

    .line 142
    .local v7, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 143
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    iget-object v10, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Properties;

    invoke-direct {v0, v11, v12}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createFilter(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 144
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    goto :goto_6

    .line 147
    .end local v7    # "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    :cond_9
    :goto_7
    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    const-string v8, "appenders"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "appenderProp":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 149
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "appenderNames":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_a

    aget-object v11, v8, v10

    .line 151
    .local v11, "appenderName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "name":Ljava/lang/String;
    iget-object v13, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "propertyPlaceholders":Ljava/util/Properties;
    .local v16, "propertyPlaceholders":Ljava/util/Properties;
    const-string v1, "appender."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v15, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 152
    invoke-direct {v0, v14, v1}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createAppender(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;

    move-result-object v1

    invoke-interface {v13, v1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 150
    .end local v11    # "appenderName":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    goto :goto_8

    .end local v16    # "propertyPlaceholders":Ljava/util/Properties;
    .restart local v1    # "propertyPlaceholders":Ljava/util/Properties;
    :cond_a
    move-object/from16 v16, v1

    .line 155
    .end local v1    # "propertyPlaceholders":Ljava/util/Properties;
    .end local v8    # "appenderNames":[Ljava/lang/String;
    .restart local v16    # "propertyPlaceholders":Ljava/util/Properties;
    goto :goto_a

    .line 156
    .end local v16    # "propertyPlaceholders":Ljava/util/Properties;
    .restart local v1    # "propertyPlaceholders":Ljava/util/Properties;
    :cond_b
    move-object/from16 v16, v1

    .end local v1    # "propertyPlaceholders":Ljava/util/Properties;
    .restart local v16    # "propertyPlaceholders":Ljava/util/Properties;
    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 157
    const-string v6, "appender"

    invoke-static {v1, v6}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v1

    .line 158
    .local v1, "appenders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 159
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Properties;

    invoke-direct {v0, v10, v11}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createAppender(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 160
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    goto :goto_9

    .line 163
    .end local v1    # "appenders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    :cond_c
    :goto_a
    iget-object v1, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    const-string v6, "loggers"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "loggerProp":Ljava/lang/String;
    const-string v6, "root"

    if-eqz v1, :cond_f

    .line 165
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "loggerNames":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_e

    aget-object v10, v5, v9

    .line 167
    .local v10, "loggerName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 169
    iget-object v12, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    iget-object v13, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "logger."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v13

    invoke-direct {v0, v11, v13}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createLogger(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 166
    .end local v10    # "loggerName":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 173
    .end local v5    # "loggerNames":[Ljava/lang/String;
    :cond_e
    goto :goto_d

    .line 175
    :cond_f
    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 176
    const-string v8, "logger"

    invoke-static {v5, v8}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v5, v8}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;Z)Ljava/util/Map;

    move-result-object v5

    .line 177
    .local v5, "loggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 178
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 180
    iget-object v11, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Properties;

    invoke-direct {v0, v10, v12}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createLogger(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 182
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    .end local v10    # "name":Ljava/lang/String;
    :cond_10
    goto :goto_c

    .line 185
    .end local v5    # "loggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    :cond_11
    :goto_d
    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    const-string v6, "rootLogger"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "rootProp":Ljava/lang/String;
    iget-object v8, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    invoke-static {v8, v6}, Lorg/apache/logging/log4j/util/PropertiesUtil;->extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v8

    .line 187
    .local v8, "props":Ljava/util/Properties;
    if-eqz v5, :cond_12

    .line 188
    const-string v9, ""

    invoke-virtual {v8, v9, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    invoke-virtual {v9, v6}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_12
    invoke-virtual {v8}, Ljava/util/Properties;->size()I

    move-result v6

    if-lez v6, :cond_13

    .line 192
    iget-object v6, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-direct {v0, v8}, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->createRootLogger(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 195
    :cond_13
    iget-object v6, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-interface {v6, v9}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)V

    .line 197
    iget-object v6, v0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->build(Z)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfiguration;

    return-object v6
.end method

.method public getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public setConfigurationSource(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;
    .locals 1
    .param p1, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->builder:Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;->setConfigurationSource(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    .line 83
    return-object p0
.end method

.method public setLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;
    .locals 0
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerContext"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 390
    return-object p0
.end method

.method public setRootProperties(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;
    .locals 0
    .param p1, "rootProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rootProperties"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/properties/PropertiesConfigurationBuilder;->rootProperties:Ljava/util/Properties;

    .line 78
    return-object p0
.end method
