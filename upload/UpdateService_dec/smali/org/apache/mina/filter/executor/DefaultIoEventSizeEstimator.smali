.class public Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultIoEventSizeEstimator.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventSizeEstimator;


# instance fields
.field private final class2size:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private static align(I)I
    .locals 1
    .param p0, "size"    # I

    .line 149
    rem-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    .line 150
    div-int/lit8 p0, p0, 0x8

    .line 151
    add-int/lit8 p0, p0, 0x1

    .line 152
    mul-int/lit8 p0, p0, 0x8

    .line 155
    :cond_0
    return p0
.end method

.method private estimateSize(Ljava/lang/Class;Ljava/util/Set;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)I"
        }
    .end annotation

    .line 102
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, "objectSize":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 108
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 109
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    return v1

    .line 113
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object p2, v2

    .line 116
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const/16 v2, 0x8

    .line 120
    .local v2, "answer":I
    move-object v3, p1

    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 121
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 123
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 124
    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 126
    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v8

    add-int/2addr v2, v8

    .line 123
    .end local v7    # "f":Ljava/lang/reflect/Field;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 133
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result v1

    .line 139
    .end local v2    # "answer":I
    .local v1, "answer":I
    iget-object v2, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 141
    .local v2, "tmpAnswer":Ljava/lang/Integer;
    if-eqz v2, :cond_6

    .line 142
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    :cond_6
    return v1
.end method


# virtual methods
.method public estimateSize(Ljava/lang/Object;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 80
    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 81
    return v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v1, v0

    .line 86
    .local v1, "answer":I
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 88
    :cond_1
    instance-of v0, p1, Lorg/apache/mina/core/write/WriteRequest;

    if-eqz v0, :cond_2

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 90
    :cond_2
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    goto :goto_1

    .line 92
    :cond_3
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "m":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 95
    .end local v2    # "m":Ljava/lang/Object;
    goto :goto_0

    .line 98
    :cond_4
    :goto_1
    invoke-static {v1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result v0

    return v0
.end method

.method public estimateSize(Lorg/apache/mina/core/session/IoEvent;)I
    .locals 2
    .param p1, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
