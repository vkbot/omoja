.class public Lorg/apache/logging/log4j/core/lookup/Interpolator;
.super Lorg/apache/logging/log4j/core/lookup/AbstractConfigurationAwareLookup;
.source "Interpolator.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOOKUP_KEY_DOCKER:Ljava/lang/String; = "docker"

.field private static final LOOKUP_KEY_JNDI:Ljava/lang/String; = "jndi"

.field private static final LOOKUP_KEY_JVMRUNARGS:Ljava/lang/String; = "jvmrunargs"

.field private static final LOOKUP_KEY_KUBERNETES:Ljava/lang/String; = "kubernetes"

.field private static final LOOKUP_KEY_SPRING:Ljava/lang/String; = "spring"

.field private static final LOOKUP_KEY_WEB:Ljava/lang/String; = "web"

.field public static final PREFIX_SEPARATOR:C = ':'


# instance fields
.field private final defaultLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

.field private final strLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/lookup/StrLookup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V
    .locals 1
    .param p1, "defaultLookup"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "defaultLookup"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/util/List;)V
    .locals 8
    .param p1, "defaultLookup"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "defaultLookup",
            "pluginPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/lookup/StrLookup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p2, "pluginPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractConfigurationAwareLookup;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->strLookupMap:Ljava/util/Map;

    .line 72
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->defaultLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    .line 73
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    const-string v1, "Lookup"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "manager":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 75
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v1

    .line 77
    .local v1, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 79
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/apache/logging/log4j/core/lookup/StrLookup;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 80
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/lookup/StrLookup;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.apache.logging.log4j.core.lookup.JndiLookup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiLookupEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    :cond_1
    iget-object v5, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->strLookupMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/lookup/StrLookup;>;"
    :cond_2
    goto :goto_2

    .line 83
    :catchall_0
    move-exception v4

    .line 84
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lorg/apache/logging/log4j/core/lookup/Interpolator;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_1

    .line 87
    :cond_3
    return-void
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lookupKey",
            "t"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "kubernetes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "jvmrunargs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "jndi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "web"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "spring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "docker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 138
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unable to create Lookup for {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 133
    :cond_1
    instance-of v0, p2, Ljava/lang/NoClassDefFoundError;

    if-eqz v0, :cond_6

    .line 134
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to create Kubernetes lookup due to missing dependency: {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_2
    goto :goto_2

    .line 126
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Log4j appears to be running in a Servlet environment, but there\'s no log4j-web module available. If you want better web container support, please add the log4j-web JAR to your web archive or server lib directory."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V

    .line 129
    goto :goto_2

    .line 121
    :cond_4
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JMX runtime input lookup class is not available because this JRE does not support JMX. JMX lookups will not be available, continuing configuration. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 124
    goto :goto_2

    .line 115
    :cond_5
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JNDI lookup class is not available because this JRE does not support JNDI. JNDI string lookups will not be available, continuing configuration. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 118
    nop

    .line 140
    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f1091e0 -> :sswitch_5
        -0x3562fdf3 -> :sswitch_4
        0x1cb54 -> :sswitch_3
        0x31d8c9 -> :sswitch_2
        0x153d6a27 -> :sswitch_1
        0x49c7cb46 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 7
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "var"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "event",
            "var"
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 177
    return-object v0

    .line 180
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 181
    .local v1, "prefixPos":I
    if-ltz v1, :cond_5

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "prefix":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->strLookupMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/lookup/StrLookup;

    .line 185
    .local v4, "lookup":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    instance-of v5, v4, Lorg/apache/logging/log4j/core/config/ConfigurationAware;

    if-eqz v5, :cond_1

    .line 186
    move-object v5, v4

    check-cast v5, Lorg/apache/logging/log4j/core/config/ConfigurationAware;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationAware;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 188
    :cond_1
    const/4 v5, 0x0

    .line 189
    .local v5, "value":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    if-eqz v4, :cond_3

    .line 190
    if-nez p1, :cond_2

    invoke-interface {v4, v3}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-interface {v4, p1, v3}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v6

    :goto_0
    move-object v5, v6

    .line 193
    :cond_3
    if-eqz v5, :cond_4

    .line 194
    return-object v5

    .line 196
    :cond_4
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 198
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "lookup":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .end local v5    # "value":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->defaultLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    if-eqz v2, :cond_7

    .line 199
    if-nez p1, :cond_6

    invoke-interface {v2, p2}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-interface {v2, p1, p2}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    :goto_1
    return-object v0

    .line 201
    :cond_7
    return-object v0
.end method

.method public getDefaultLookup()Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->defaultLookup:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    return-object v0
.end method

.method public getStrLookupMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/lookup/StrLookup;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->strLookupMap:Ljava/util/Map;

    return-object v0
.end method

.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "var"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "event",
            "var"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/lookup/Interpolator;->evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    .line 158
    .local v0, "result":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/lookup/LookupResult;->value()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/lookup/Interpolator;->strLookupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 208
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 209
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 211
    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 217
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
