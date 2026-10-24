.class public Lorg/apache/logging/log4j/core/impl/ContextDataFactory;
.super Ljava/lang/Object;
.source "ContextDataFactory.java"


# static fields
.field private static final CACHED_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final DEFAULT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING_MAP:Lorg/apache/logging/log4j/util/StringMap;

.field private static final INITIAL_CAPACITY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.ContextData"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->CLASS_NAME:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createCachedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->CACHED_CLASS:Ljava/lang/Class;

    .line 58
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->DEFAULT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 59
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->CACHED_CLASS:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createInitialCapacityConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->INITIAL_CAPACITY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData(I)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->EMPTY_STRING_MAP:Lorg/apache/logging/log4j/util/StringMap;

    .line 64
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCachedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 69
    return-object v0

    .line 72
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "any":Ljava/lang/Exception;
    return-object v0
.end method

.method public static createContextData()Lorg/apache/logging/log4j/util/StringMap;
    .locals 2

    .line 101
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->DEFAULT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>()V

    return-object v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/IndexedStringMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    .local v0, "ignored":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>()V

    return-object v1
.end method

.method public static createContextData(I)Lorg/apache/logging/log4j/util/StringMap;
    .locals 4
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 112
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->INITIAL_CAPACITY_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    return-object v0

    .line 116
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/IndexedStringMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "ignored":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    return-object v1
.end method

.method public static createContextData(Ljava/util/Map;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/util/StringMap;"
        }
    .end annotation

    .line 123
    .local p0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData(I)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 124
    .local v0, "contextData":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 125
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 127
    :cond_0
    return-object v0
.end method

.method public static createContextData(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p0, "readOnlyStringMap"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "readOnlyStringMap"
        }
    .end annotation

    .line 131
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData(I)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 132
    .local v0, "contextData":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 133
    return-object v0
.end method

.method private static createDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cachedClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 79
    .local p0, "cachedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/util/StringMap;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 80
    return-object v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ignored":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static createInitialCapacityConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cachedClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 90
    .local p0, "cachedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/util/StringMap;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 91
    return-object v0

    .line 94
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ignored":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static emptyFrozenContextData()Lorg/apache/logging/log4j/util/StringMap;
    .locals 1

    .line 142
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->EMPTY_STRING_MAP:Lorg/apache/logging/log4j/util/StringMap;

    return-object v0
.end method
