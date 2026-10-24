.class public Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;
.super Ljava/lang/Object;
.source "TypeConverterRegistry.java"


# static fields
.field private static volatile INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final registry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "TypeConverterRegistry initializing."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    const-string v1, "TypeConverter"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "manager":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins()V

    .line 112
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->loadKnownTypeConverters(Ljava/util/Collection;)V

    .line 113
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerPrimitiveTypes()V

    .line 114
    return-void
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;
    .locals 3

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;

    .line 55
    .local v0, "result":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;
    if-nez v0, :cond_1

    .line 56
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;

    move-object v0, v2

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;-><init>()V

    move-object v0, v2

    sput-object v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;

    .line 61
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 63
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getTypeConverterSupportedType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeConverterClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 174
    .local p0, "typeConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 175
    .local v4, "type":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_0

    .line 176
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 177
    .local v5, "pType":Ljava/lang/reflect/ParameterizedType;
    const-class v6, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    return-object v0

    .line 174
    .end local v4    # "type":Ljava/lang/reflect/Type;
    .end local v5    # "pType":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private loadKnownTypeConverters(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "knownTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;)V"
        }
    .end annotation

    .line 117
    .local p1, "knownTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 118
    .local v1, "knownType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v2

    .line 119
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-class v3, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 122
    .local v3, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;>;"
    invoke-static {v3}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->getTypeConverterSupportedType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 123
    .local v4, "conversionType":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/ReflectionUtil;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    .line 124
    .local v5, "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    invoke-direct {p0, v4, v5}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerConverter(Ljava/lang/reflect/Type;Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;)Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    .line 126
    .end local v1    # "knownType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;>;"
    .end local v4    # "conversionType":Ljava/lang/reflect/Type;
    .end local v5    # "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method private registerConverter(Ljava/lang/reflect/Type;Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;)Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;
    .locals 5
    .param p1, "conversionType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "conversionType",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
            "*>;"
        }
    .end annotation

    .line 139
    .local p2, "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    .line 140
    .local v0, "conflictingConverter":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    if-eqz v0, :cond_5

    .line 142
    instance-of v1, p2, Ljava/lang/Comparable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 144
    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    .line 146
    .local v1, "comparableConverter":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;>;"
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v1, v2

    .line 147
    .local v1, "overridable":Z
    goto :goto_2

    .end local v1    # "overridable":Z
    :cond_1
    instance-of v1, v0, Ljava/lang/Comparable;

    if-eqz v1, :cond_3

    .line 149
    move-object v1, v0

    check-cast v1, Ljava/lang/Comparable;

    .line 151
    .local v1, "comparableConflictingConverter":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;>;"
    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v1, v2

    .line 152
    .local v1, "overridable":Z
    goto :goto_2

    .line 153
    .end local v1    # "overridable":Z
    :cond_3
    const/4 v1, 0x0

    .line 155
    .restart local v1    # "overridable":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 156
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Replacing TypeConverter [{}] for type [{}] with [{}] after comparison."

    invoke-interface {v2, v3, v0, p1, p2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object p2

    .line 162
    :cond_4
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Ignoring TypeConverter [{}] for type [{}] that conflicts with [{}], since they are not comparable."

    invoke-interface {v2, v3, p2, p1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    return-object v0

    .line 168
    .end local v1    # "overridable":Z
    :cond_5
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-object p2
.end method

.method private registerPrimitiveTypes()V
    .locals 2

    .line 187
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 188
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 189
    const-class v0, Ljava/lang/Character;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 190
    const-class v0, Ljava/lang/Double;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 191
    const-class v0, Ljava/lang/Float;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 192
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 193
    const-class v0, Ljava/lang/Long;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 194
    const-class v0, Ljava/lang/Short;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 195
    return-void
.end method

.method private registerTypeAlias(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "knownType"    # Ljava/lang/reflect/Type;
    .param p2, "aliasType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "knownType",
            "aliasType"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method


# virtual methods
.method public findCompatibleConverter(Ljava/lang/reflect/Type;)Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
            "*>;"
        }
    .end annotation

    .line 77
    const-string v0, "No type was provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    .line 80
    .local v0, "primary":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 84
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    .line 86
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v2, Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;

    const-class v3, Ljava/lang/Enum;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;-><init>(Ljava/lang/Class;)V

    .line 89
    .local v2, "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter<+Ljava/lang/Enum;>;"
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    invoke-direct {p0, p1, v2}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerConverter(Ljava/lang/reflect/Type;Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;)Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 91
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 95
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter<+Ljava/lang/Enum;>;"
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Type;Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 97
    .local v3, "key":Ljava/lang/reflect/Type;
    invoke-static {p1, v3}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Found compatible TypeConverter<{}> for type [{}]."

    invoke-interface {v1, v4, v3, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    .line 100
    .local v4, "value":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 101
    :try_start_1
    invoke-direct {p0, p1, v4}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->registerConverter(Ljava/lang/reflect/Type;Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;)Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    move-result-object v1

    monitor-exit v5

    return-object v1

    .line 102
    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 104
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Type;Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;>;"
    .end local v3    # "key":Ljava/lang/reflect/Type;
    .end local v4    # "value":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<*>;"
    :cond_2
    goto :goto_0

    .line 105
    :cond_3
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
