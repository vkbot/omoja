.class Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;
.super Ljava/lang/Object;
.source "GarbageFreeSortedArrayThreadContextMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
.implements Lorg/apache/logging/log4j/spi/ObjectThreadContextMap;


# static fields
.field protected static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field public static final INHERITABLE_MAP:Ljava/lang/String; = "isThreadContextMapInheritable"

.field protected static final PROPERTY_NAME_INITIAL_CAPACITY:Ljava/lang/String; = "log4j2.ThreadContext.initial.capacity"

.field private static volatile inheritableMap:Z

.field private static volatile initialCapacity:I


# instance fields
.field protected final localMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 72
    invoke-static {}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->createThreadLocalMap()Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    .line 77
    return-void
.end method

.method private createThreadLocalMap()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;"
        }
    .end annotation

    .line 82
    sget-boolean v0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->inheritableMap:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap$1;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap$1;-><init>(Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;)V

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-object v0
.end method

.method private getThreadLocalMap()Lorg/apache/logging/log4j/util/StringMap;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 120
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->createStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method static init()V
    .locals 3

    .line 66
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 67
    .local v0, "properties":Lorg/apache/logging/log4j/util/PropertiesUtil;
    const-string v1, "log4j2.ThreadContext.initial.capacity"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->initialCapacity:I

    .line 68
    const-string v1, "isThreadContextMapInheritable"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->inheritableMap:Z

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 191
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->clear()V

    .line 194
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 199
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/StringMap;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected createStringMap()Lorg/apache/logging/log4j/util/StringMap;
    .locals 2

    .line 102
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    sget v1, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->initialCapacity:I

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    return-object v0
.end method

.method protected createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p1, "original"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "original"
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 250
    if-ne p0, p1, :cond_0

    .line 251
    const/4 v0, 0x1

    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 254
    return v0

    .line 256
    :cond_1
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    if-nez v1, :cond_2

    .line 257
    return v0

    .line 259
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    .line 260
    .local v0, "other":Lorg/apache/logging/log4j/spi/ThreadContextMap;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->getImmutableMapOrNull()Ljava/util/Map;

    move-result-object v1

    .line 261
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->getImmutableMapOrNull()Ljava/util/Map;

    move-result-object v2

    .line 262
    .local v2, "otherMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCopy()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 205
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->toMap()Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getImmutableMapOrNull()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 224
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getReadOnlyContextData()Lorg/apache/logging/log4j/util/StringMap;
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 214
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->createStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 218
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 167
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/StringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 5

    .line 241
    const/16 v0, 0x1f

    .line 242
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 243
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/util/StringMap;

    .line 244
    .local v2, "map":Lorg/apache/logging/log4j/util/StringMap;
    mul-int/lit8 v3, v1, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/apache/logging/log4j/util/StringMap;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 245
    .end local v1    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 230
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->getThreadLocalMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
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

    .line 139
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->getThreadLocalMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 143
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 146
    :cond_1
    return-void

    .line 140
    .end local v0    # "map":Lorg/apache/logging/log4j/util/StringMap;
    :cond_2
    :goto_1
    return-void
.end method

.method public putAllValues(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 150
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->getThreadLocalMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 154
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    goto :goto_0

    .line 157
    :cond_1
    return-void

    .line 151
    .end local v0    # "map":Lorg/apache/logging/log4j/util/StringMap;
    :cond_2
    :goto_1
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->getThreadLocalMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 173
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/StringMap;->remove(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 181
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/util/StringMap;->remove(Ljava/lang/String;)V

    .line 184
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 236
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    const-string v1, "{}"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
