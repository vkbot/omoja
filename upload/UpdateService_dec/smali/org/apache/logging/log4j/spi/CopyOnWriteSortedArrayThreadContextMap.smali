.class Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;
.super Ljava/lang/Object;
.source "CopyOnWriteSortedArrayThreadContextMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
.implements Lorg/apache/logging/log4j/spi/ObjectThreadContextMap;
.implements Lorg/apache/logging/log4j/spi/CopyOnWrite;


# static fields
.field protected static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final EMPTY_CONTEXT_DATA:Lorg/apache/logging/log4j/util/StringMap;

.field public static final INHERITABLE_MAP:Ljava/lang/String; = "isThreadContextMapInheritable"

.field protected static final PROPERTY_NAME_INITIAL_CAPACITY:Ljava/lang/String; = "log4j2.ThreadContext.initial.capacity"

.field private static volatile inheritableMap:Z

.field private static volatile initialCapacity:I


# instance fields
.field private final localMap:Ljava/lang/ThreadLocal;
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
    .locals 2

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->EMPTY_CONTEXT_DATA:Lorg/apache/logging/log4j/util/StringMap;

    .line 72
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 73
    invoke-static {}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createThreadLocalMap()Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    .line 80
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

    .line 85
    sget-boolean v0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->inheritableMap:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap$1;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap$1;-><init>(Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;)V

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

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

    sput v1, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->initialCapacity:I

    .line 68
    const-string v1, "isThreadContextMapInheritable"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->inheritableMap:Z

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 206
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

    .line 210
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 211
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

    .line 110
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    sget v1, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->initialCapacity:I

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

    .line 123
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

    .line 258
    if-ne p0, p1, :cond_0

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 262
    return v0

    .line 264
    :cond_1
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    if-nez v1, :cond_2

    .line 265
    return v0

    .line 267
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    .line 268
    .local v0, "other":Lorg/apache/logging/log4j/spi/ThreadContextMap;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->getImmutableMapOrNull()Ljava/util/Map;

    move-result-object v1

    .line 269
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->getImmutableMapOrNull()Ljava/util/Map;

    move-result-object v2

    .line 270
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

    .line 170
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 217
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

    .line 231
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 232
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

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 226
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->EMPTY_CONTEXT_DATA:Lorg/apache/logging/log4j/util/StringMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
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

    .line 175
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 176
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

    .line 249
    const/16 v0, 0x1f

    .line 250
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 251
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/util/StringMap;

    .line 252
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

    .line 253
    .end local v1    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 238
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
    .locals 0
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

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
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

    .line 142
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 146
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 150
    :cond_2
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 151
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 152
    return-void

    .line 143
    .end local v0    # "map":Lorg/apache/logging/log4j/util/StringMap;
    :cond_3
    :goto_2
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

    .line 156
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 160
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 165
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 166
    return-void

    .line 157
    .end local v0    # "map":Lorg/apache/logging/log4j/util/StringMap;
    :cond_3
    :goto_2
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
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

    .line 133
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 134
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 135
    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 137
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 182
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    .line 184
    .local v1, "copy":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/util/StringMap;->remove(Ljava/lang/String;)V

    .line 185
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 186
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 188
    .end local v1    # "copy":Lorg/apache/logging/log4j/util/StringMap;
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 4
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

    .line 192
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 193
    .local v0, "map":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    .line 195
    .local v1, "copy":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Lorg/apache/logging/log4j/util/StringMap;->remove(Ljava/lang/String;)V

    .line 197
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    .line 199
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 201
    .end local v1    # "copy":Lorg/apache/logging/log4j/util/StringMap;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/CopyOnWriteSortedArrayThreadContextMap;->localMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 244
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
