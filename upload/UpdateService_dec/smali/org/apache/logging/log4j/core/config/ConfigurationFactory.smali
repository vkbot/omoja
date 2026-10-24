.class public abstract Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.super Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilderFactory;
.source "ConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_PROVIDER:Ljava/lang/String; = "authorizationProvider"

.field public static final CATEGORY:Ljava/lang/String; = "ConfigurationFactory"

.field private static final CLASS_LOADER_SCHEME:Ljava/lang/String; = "classloader"

.field private static final CLASS_PATH_SCHEME:Ljava/lang/String; = "classpath"

.field public static final CONFIGURATION_FACTORY_PROPERTY:Ljava/lang/String; = "log4j.configurationFactory"

.field public static final CONFIGURATION_FILE_PROPERTY:Ljava/lang/String; = "log4j.configurationFile"

.field protected static final DEFAULT_PREFIX:Ljava/lang/String; = "log4j2"

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final LOCK:Ljava/util/concurrent/locks/Lock;

.field public static final LOG4J1_CONFIGURATION_FILE_PROPERTY:Ljava/lang/String; = "log4j.configuration"

.field public static final LOG4J1_EXPERIMENTAL:Ljava/lang/String; = "log4j1.compatibility"

.field protected static final LOG4J1_VERSION:Ljava/lang/String; = "1"

.field protected static final LOG4J2_VERSION:Ljava/lang/String; = "2"

.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final OVERRIDE_PARAM:Ljava/lang/String; = "override"

.field private static final PREFIXES:[Ljava/lang/String;

.field protected static final TEST_PREFIX:Ljava/lang/String; = "log4j2-test"

.field private static volatile authorizationProvider:Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

.field private static configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

.field private static volatile factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 143
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationFactory$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 147
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOCK:Ljava/util/concurrent/locks/Lock;

    .line 152
    const-string v0, "log4j2."

    const-string v1, "log4j2.Configuration."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilderFactory;-><init>()V

    .line 145
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;

    new-instance v1, Lorg/apache/logging/log4j/core/lookup/Interpolator;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/lookup/Interpolator;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/ConfigurationStrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 85
    return-void
.end method

.method private static addFactory(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "factoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationFactory;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/core/config/ConfigurationFactory;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    .local p1, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    :try_start_0
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to create instance of {}"

    invoke-interface {v1, v3, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static addFactory(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p1, "factoryClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "factoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationFactory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 229
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    :try_start_0
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->addFactory(Ljava/util/Collection;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to load class {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static authorizationProvider(Lorg/apache/logging/log4j/util/PropertiesUtil;)Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    .locals 6
    .param p0, "props"    # Lorg/apache/logging/log4j/util/PropertiesUtil;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .line 203
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->PREFIXES:[Ljava/lang/String;

    const-string v1, "authorizationProvider"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "authClass":Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "provider":Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    if-eqz v0, :cond_1

    .line 207
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 208
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

    if-eqz v3, :cond_0

    .line 209
    move-object v3, v2

    check-cast v3, Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

    move-object v1, v3

    goto :goto_0

    .line 211
    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "{} is not an AuthorizationProvider, using default"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to create {}, using default: {}"

    invoke-interface {v3, v5, v0, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 218
    new-instance v2, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;

    invoke-direct {v2, p0}, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;-><init>(Lorg/apache/logging/log4j/util/PropertiesUtil;)V

    move-object v1, v2

    .line 220
    :cond_2
    return-object v1
.end method

.method static extractClassLoaderUriPath(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getAuthorizationProvider()Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    .locals 1

    .line 224
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->authorizationProvider:Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

    return-object v0
.end method

.method static getFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationFactory;",
            ">;"
        }
    .end annotation

    .line 633
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->factories:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .locals 12

    .line 163
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->factories:Ljava/util/List;

    if-nez v0, :cond_4

    .line 164
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 166
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->factories:Ljava/util/List;

    if-nez v0, :cond_3

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    .line 169
    .local v1, "props":Lorg/apache/logging/log4j/util/PropertiesUtil;
    const-string v2, "log4j.configurationFactory"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "factoryClass":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 171
    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->addFactory(Ljava/util/Collection;Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v3, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    const-string v4, "ConfigurationFactory"

    invoke-direct {v3, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "manager":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins()V

    .line 175
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v4

    .line 176
    .local v4, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v5, "ordered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .local v7, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    goto :goto_1

    .line 180
    :catch_0
    move-exception v8

    .line 181
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Unable to add class {}"

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v9, v10, v11, v8}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .end local v7    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v8    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/config/OrderComparator;->getInstance()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 186
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    invoke-static {v0, v7}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->addFactory(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 187
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    goto :goto_2

    .line 190
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->factories:Ljava/util/List;

    .line 191
    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->authorizationProvider(Lorg/apache/logging/log4j/util/PropertiesUtil;)Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

    move-result-object v6

    sput-object v6, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->authorizationProvider:Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;"
    .end local v1    # "props":Lorg/apache/logging/log4j/util/PropertiesUtil;
    .end local v2    # "factoryClass":Ljava/lang/String;
    .end local v3    # "manager":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    .end local v4    # "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    .end local v5    # "ordered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/ConfigurationFactory;>;>;"
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 195
    goto :goto_3

    .line 194
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 198
    :cond_4
    :goto_3
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    const-string v2, "Using configurationFactory {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    return-object v0
.end method

.method static isClassLoaderUri(Ljava/net/URI;)Z
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 342
    return v0

    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "classloader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "classpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static removeConfigurationFactory(Lorg/apache/logging/log4j/core/config/ConfigurationFactory;)V
    .locals 2
    .param p0, "factory"    # Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .line 265
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    if-ne v0, p0, :cond_0

    .line 266
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationFactory$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 268
    :cond_0
    return-void
.end method

.method public static resetConfigurationFactory()V
    .locals 2

    .line 257
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationFactory$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 258
    return-void
.end method

.method public static setConfigurationFactory(Lorg/apache/logging/log4j/core/config/ConfigurationFactory;)V
    .locals 0
    .param p0, "factory"    # Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .line 249
    sput-object p0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->configFactory:Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 250
    return-void
.end method


# virtual methods
.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 2
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "name",
            "configLocation"
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return-object v1

    .line 301
    :cond_0
    if-eqz p3, :cond_1

    .line 302
    invoke-static {p3}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromUri(Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    .line 303
    .local v0, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    return-object v1

    .line 307
    .end local v0    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :cond_1
    return-object v1
.end method

.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 3
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configLocation"    # Ljava/net/URI;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "name",
            "configLocation",
            "loader"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_0
    if-nez p4, :cond_1

    .line 325
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1
    invoke-static {p3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->isClassLoaderUri(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-static {p3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->extractClassLoaderUriPath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 330
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p0, p1, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    .line 332
    .local v2, "configuration":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v2, :cond_2

    .line 333
    return-object v2

    .line 337
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "configuration":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "loggerContext",
            "source"
        }
    .end annotation
.end method

.method protected getDefaultPrefix()Ljava/lang/String;
    .locals 1

    .line 277
    const-string v0, "log4j2"

    return-object v0
.end method

.method protected getInputFromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .locals 7
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "loader"
        }
    .end annotation

    .line 360
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "url":Ljava/net/URL;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    .line 362
    .local v1, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v2

    .line 363
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 364
    new-instance v3, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    return-object v3

    .line 366
    :cond_0
    new-instance v3, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/net/URL;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 367
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "urlConnection":Ljava/net/URLConnection;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 369
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-nez v1, :cond_1

    .line 371
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v2    # "file":Ljava/io/File;
    new-instance v3, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 373
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 375
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v4, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/Logger;->catching(Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)V

    .line 378
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_1
    return-object v1
.end method

.method protected abstract getSupportedTypes()[Ljava/lang/String;
.end method

.method protected getTestPrefix()Ljava/lang/String;
    .locals 1

    .line 273
    const-string v0, "log4j2-test"

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .line 281
    const-string v0, "2"

    return-object v0
.end method

.method protected isActive()Z
    .locals 1

    .line 285
    const/4 v0, 0x1

    return v0
.end method
