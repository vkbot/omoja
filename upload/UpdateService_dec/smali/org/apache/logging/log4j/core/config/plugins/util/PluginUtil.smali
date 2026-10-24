.class public final Lorg/apache/logging/log4j/core/config/plugins/util/PluginUtil;
.super Ljava/lang/Object;
.source "PluginUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectPluginsByCategory(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "category"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;"
        }
    .end annotation

    .line 42
    const-string v0, "category"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginUtil;->collectPluginsByCategoryAndPackage(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static collectPluginsByCategoryAndPackage(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "category",
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;>;"
        }
    .end annotation

    .line 52
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "category"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    const-string v0, "packages"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "pluginManager":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 56
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static findPluginFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pluginClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 83
    .local p0, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "pluginClass"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    .local v3, "method":Ljava/lang/reflect/Method;
    const-class v4, Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    .line 86
    .local v4, "methodAnnotated":Z
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    .line 88
    .local v5, "methodStatic":Z
    if-eqz v5, :cond_0

    .line 89
    return-object v3

    .line 84
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodAnnotated":Z
    .end local v5    # "methodStatic":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no factory method found for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static instantiatePlugin(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 64
    .local p0, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const-string v0, "pluginClass"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginUtil;->findPluginFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    .local v0, "pluginFactoryMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .local v1, "instance":Ljava/lang/Object;, "TV;"
    return-object v1

    .line 70
    .end local v1    # "instance":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 71
    .local v1, "error":Ljava/lang/ReflectiveOperationException;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v2, "failed to instantiate plugin of type %s using the factory method %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
