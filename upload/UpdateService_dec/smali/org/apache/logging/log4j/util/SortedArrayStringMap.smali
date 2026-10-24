.class public Lorg/apache/logging/log4j/util/SortedArrayStringMap;
.super Ljava/lang/Object;
.source "SortedArrayStringMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/IndexedStringMap;


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x4

.field private static final EMPTY:[Ljava/lang/String;

.field private static final FROZEN:Ljava/lang/String; = "Frozen collection cannot be modified"

.field private static final HASHVAL:I = 0x1f

.field private static final PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final getObjectInputFilter:Ljava/lang/reflect/Method;

.field private static final newObjectInputFilter:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J = -0x4fc8376e8c13d424L

.field private static final setObjectInputFilter:Ljava/lang/reflect/Method;


# instance fields
.field private immutable:Z

.field private transient iterating:Z

.field private transient keys:[Ljava/lang/String;

.field private transient size:I

.field private threshold:I

.field private transient values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 70
    sget-object v0, Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;->INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;

    sput-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    .line 75
    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    sput-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    .line 91
    const-class v0, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 92
    .local v0, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 93
    .local v1, "setMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 94
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    .line 95
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setObjectInputFilter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    move-object v1, v6

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getObjectInputFilter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    move-object v2, v6

    .line 94
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    :cond_2
    const/4 v3, 0x0

    .line 103
    .local v3, "newMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_4

    .line 104
    :try_start_0
    const-string v5, "org.apache.logging.log4j.util.internal.DefaultObjectInputFilter"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 105
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v0, v6

    .line 106
    array-length v6, v0

    :goto_2
    if-ge v4, v6, :cond_4

    aget-object v7, v0, v4

    .line 107
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "newInstance"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    .line 108
    move-object v3, v7

    .line 109
    goto :goto_3

    .line 106
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 113
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    goto :goto_4

    .line 115
    :cond_4
    :goto_3
    nop

    .line 116
    :goto_4
    sput-object v3, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->newObjectInputFilter:Ljava/lang/reflect/Method;

    .line 117
    sput-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->setObjectInputFilter:Ljava/lang/reflect/Method;

    .line 118
    sput-object v2, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getObjectInputFilter:Ljava/lang/reflect/Method;

    .line 119
    .end local v0    # "methods":[Ljava/lang/reflect/Method;
    .end local v1    # "setMethod":Ljava/lang/reflect/Method;
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "newMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    .line 133
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 136
    if-ltz p1, :cond_1

    .line 139
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    .line 140
    return-void

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial capacity must be at least zero but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 151
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->resize(I)V

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V
    .locals 1
    .param p1, "other"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->initFrom0(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V

    goto :goto_0

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    .line 146
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->resize(I)V

    .line 147
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 149
    :cond_1
    :goto_0
    return-void
.end method

.method private assertNoConcurrentModification()V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private assertNotFrozen()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->immutable:Z

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Frozen collection cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ceilingNextPowerOfTwo(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    .line 582
    const/16 v0, 0x20

    .line 583
    .local v0, "BITS_PER_INT":I
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    const/4 v2, 0x1

    shl-int v1, v2, v1

    return v1
.end method

.method private ensureCapacity()V
    .locals 2

    .line 348
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    if-lt v0, v1, :cond_0

    .line 349
    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->resize(I)V

    .line 351
    :cond_0
    return-void
.end method

.method private handleSerializationException(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "i"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "t",
            "i",
            "key"
        }
    .end annotation

    .line 635
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v3, v3, p2

    const-string v4, "Ignoring {} for key[{}] (\'{}\')"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    return-void
.end method

.method private static hashCode([Ljava/lang/Object;I)I
    .locals 4
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "length"
        }
    .end annotation

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 477
    mul-int/lit8 v2, v0, 0x1f

    aget-object v3, p0, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v2, v3

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private inflateTable(I)V
    .locals 1
    .param p1, "toSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "toSize"
        }
    .end annotation

    .line 370
    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    .line 371
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 372
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 373
    return-void
.end method

.method private initFrom0(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V
    .locals 4
    .param p1, "other"    # Lorg/apache/logging/log4j/util/SortedArrayStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v0, v1, :cond_0

    .line 290
    iget v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 291
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 293
    :cond_0
    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v2, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v2, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .line 297
    iget v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    .line 298
    return-void
.end method

.method private insertAt(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "index",
            "key",
            "value"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ensureCapacity()V

    .line 259
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 262
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 263
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .line 264
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/util/StringMap;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "contextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value",
            "contextData"
        }
    .end annotation

    .line 70
    invoke-interface {p2, p0, p1}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static marshall(Ljava/lang/Object;)[B
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    if-nez p0, :cond_0

    .line 538
    const/4 v0, 0x0

    return-object v0

    .line 540
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 541
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 542
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 543
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 544
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 544
    return-object v2

    .line 541
    :catchall_0
    move-exception v2

    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "obj":Ljava/lang/Object;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method private merge(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V
    .locals 9
    .param p1, "other"    # Lorg/apache/logging/log4j/util/SortedArrayStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 302
    .local v0, "myKeys":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 303
    .local v1, "myVals":[Ljava/lang/Object;
    iget v2, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/2addr v2, v3

    .line 304
    .local v2, "newSize":I
    invoke-static {v2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v3

    iput v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    .line 305
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v3, :cond_0

    .line 306
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 307
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 310
    :cond_0
    const/4 v3, 0x1

    .line 311
    .local v3, "overwrite":Z
    invoke-virtual {p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v5

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    .line 313
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v5, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v7, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v5, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v7, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget-object v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v7, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v7, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iput v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .line 322
    const/4 v3, 0x0

    goto :goto_0

    .line 324
    :cond_1
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v7, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v8, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iget-object v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v7, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v8, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    :goto_0
    iget v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 334
    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v5

    .line 335
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 336
    not-int v6, v5

    iget-object v7, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v7, v7, v4

    iget-object v8, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v8, v8, v4

    invoke-direct {p0, v6, v7, v8}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->insertAt(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 337
    :cond_2
    if-eqz v3, :cond_3

    .line 338
    iget-object v6, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v7, v6, v4

    aput-object v7, v6, v5

    .line 339
    iget-object v6, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v7, v6, v4

    aput-object v7, v6, v5

    .line 333
    .end local v5    # "index":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 343
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 344
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v4, v5, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 345
    return-void
.end method

.method private nullKeyIndex()I
    .locals 2

    .line 237
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 591
    instance-of v0, p1, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->setObjectInputFilter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readObject requires a FilteredObjectInputStream or an ObjectInputStream that accepts an ObjectInputFilter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 598
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 599
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 602
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 603
    .local v0, "capacity":I
    if-ltz v0, :cond_6

    .line 608
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 609
    .local v1, "mappings":I
    if-ltz v1, :cond_5

    .line 614
    if-lez v1, :cond_2

    .line 615
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->inflateTable(I)V

    goto :goto_1

    .line 617
    :cond_2
    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    .line 621
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 622
    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 624
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    .line 625
    .local v4, "marshalledObject":[B
    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    if-nez v4, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    invoke-static {v4, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->unmarshall([BLjava/io/ObjectInputStream;)Ljava/lang/Object;

    move-result-object v6

    :goto_3
    aput-object v6, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v4    # "marshalledObject":[B
    goto :goto_4

    .line 626
    :catch_0
    move-exception v4

    .line 627
    .local v4, "error":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v2, v5}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->handleSerializationException(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 628
    iget-object v5, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 621
    .end local v4    # "error":Ljava/lang/Throwable;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 631
    .end local v2    # "i":I
    :cond_4
    iput v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .line 632
    return-void

    .line 610
    :cond_5
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mappings count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 604
    .end local v1    # "mappings":I
    :cond_6
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newCapacity"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 355
    .local v0, "oldKeys":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 357
    .local v1, "oldValues":[Ljava/lang/Object;
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 358
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 360
    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    .line 364
    return-void
.end method

.method private static unmarshall([BLjava/io/ObjectInputStream;)Ljava/lang/Object;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "inputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "data",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 551
    .local v0, "bin":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 553
    .local v1, "allowedClasses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    instance-of v2, p1, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    if-eqz v2, :cond_0

    .line 554
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;->getAllowedClasses()Ljava/util/Collection;

    move-result-object v1

    .line 555
    new-instance v2, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/util/Collection;)V

    .local v2, "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 558
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getObjectInputFilter:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 559
    .local v2, "obj":Ljava/lang/Object;
    sget-object v4, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->newObjectInputFilter:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 560
    .local v4, "filter":Ljava/lang/Object;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 561
    .local v5, "ois":Ljava/io/ObjectInputStream;
    sget-object v7, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->setObjectInputFilter:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-virtual {v7, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    move-object v2, v5

    .line 567
    .end local v4    # "filter":Ljava/lang/Object;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 567
    return-object v3

    .line 569
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    throw v3

    .line 562
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 563
    .local v2, "ex":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "Unable to set ObjectInputFilter on stream"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 513
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 514
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    .line 516
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 520
    :goto_0
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 523
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lez v0, :cond_1

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v0, v1, :cond_1

    .line 525
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 527
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->marshall(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_2

    .line 528
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->handleSerializationException(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 530
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 524
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    .line 177
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    .line 179
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 181
    iput v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .line 182
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
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

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 444
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 445
    return v0

    .line 447
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 448
    return v2

    .line 450
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    .line 451
    .local v1, "other":Lorg/apache/logging/log4j/util/SortedArrayStringMap;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 452
    return v2

    .line 454
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 455
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 456
    return v2

    .line 458
    :cond_3
    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    iget-object v5, v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 459
    return v2

    .line 454
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    .end local v3    # "i":I
    :cond_5
    return v0
.end method

.method public forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/BiConsumer<",
            "Ljava/lang/String;",
            "-TV;>;)V"
        }
    .end annotation

    .line 419
    .local p1, "action":Lorg/apache/logging/log4j/util/BiConsumer;, "Lorg/apache/logging/log4j/util/BiConsumer<Ljava/lang/String;-TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v0, v2, :cond_0

    .line 422
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v2, v3}, Lorg/apache/logging/log4j/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    :cond_0
    iput-boolean v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    throw v0
.end method

.method public forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "-TV;TT;>;TT;)V"
        }
    .end annotation

    .line 432
    .local p1, "action":Lorg/apache/logging/log4j/util/TriConsumer;, "Lorg/apache/logging/log4j/util/TriConsumer<Ljava/lang/String;-TV;TT;>;"
    .local p2, "state":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v0, v2, :cond_0

    .line 435
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v2, v3, p2}, Lorg/apache/logging/log4j/util/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_0
    iput-boolean v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    throw v0
.end method

.method public freeze()V
    .locals 1

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->immutable:Z

    .line 202
    return-void
.end method

.method public getKeyAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .line 396
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 397
    :cond_1
    :goto_0
    const/4 v0, 0x0

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

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    return-object v1

    .line 216
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation

    .line 405
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 406
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 467
    const/16 v0, 0x25

    .line 468
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/2addr v1, v2

    .line 469
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->hashCode([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->hashCode([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 471
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public indexOfKey(Ljava/lang/String;)I
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

    .line 226
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 227
    const/4 v0, -0x1

    return v0

    .line 229
    :cond_0
    if-nez p1, :cond_1

    .line 230
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->nullKeyIndex()I

    move-result v0

    return v0

    .line 232
    :cond_1
    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v0, v2

    .line 233
    .local v0, "start":I
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v0, v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 221
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->immutable:Z

    return v0
.end method

.method public putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V
    .locals 1
    .param p1, "source"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 268
    if-eq p1, p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    .line 275
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    .line 277
    instance-of v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    if-eqz v0, :cond_2

    .line 278
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-nez v0, :cond_1

    .line 279
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->initFrom0(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V

    goto :goto_0

    .line 281
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->merge(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V

    goto :goto_0

    .line 283
    :cond_2
    if-eqz p1, :cond_3

    .line 284
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 286
    :cond_3
    :goto_0
    return-void

    .line 272
    :cond_4
    :goto_1
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

    .line 242
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    .line 243
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    .line 245
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 246
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->inflateTable(I)V

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 250
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 251
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 253
    :cond_1
    not-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->insertAt(ILjava/lang/String;Ljava/lang/Object;)V

    .line 255
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 383
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    .line 384
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    .line 386
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 389
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    add-int/lit8 v3, v2, -0x1

    aput-object v4, v1, v3

    .line 390
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    .line 392
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 413
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 192
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v1, v2, :cond_2

    .line 487
    if-lez v1, :cond_0

    .line 488
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-ne v3, p0, :cond_1

    const-string v2, "(this map)"

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
