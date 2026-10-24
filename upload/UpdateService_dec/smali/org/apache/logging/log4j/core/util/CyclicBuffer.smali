.class public final Lorg/apache/logging/log4j/core/util/CyclicBuffer;
.super Ljava/lang/Object;
.source "CyclicBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private first:I

.field private last:I

.field private numElems:I

.field private final ring:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 3
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "clazz",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    .line 29
    iput v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->last:I

    .line 30
    iput v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    .line 40
    if-ltz p2, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->makeArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->clazz:Ljava/lang/Class;

    .line 45
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") cannot be negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cls",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->last:I

    aput-object p1, v0, v1

    .line 59
    iget v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->last:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->last:I

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 60
    iput v2, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->last:I

    .line 63
    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 64
    iget v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    goto :goto_0

    .line 65
    :cond_1
    iget v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 66
    iput v2, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    .end local p1    # "item":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    .local p0, "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized removeAll()[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->clazz:Ljava/lang/Class;

    iget v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->makeArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 78
    .local v1, "index":I
    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    if-lez v2, :cond_1

    .line 79
    iget v2, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->numElems:I

    .line 80
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    aget-object v3, v3, v4

    aput-object v3, v0, v1

    .line 81
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 82
    iget v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I

    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->ring:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v1, v3, :cond_0

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->first:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CyclicBuffer;, "Lorg/apache/logging/log4j/core/util/CyclicBuffer<TT;>;"
    :cond_0
    move v1, v2

    goto :goto_0

    .line 86
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 75
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
