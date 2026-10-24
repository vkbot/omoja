.class public Lorg/apache/mina/util/CircularQueue;
.super Ljava/util/AbstractList;
.source "CircularQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x4

.field private static final serialVersionUID:J = 0x376b7b7c7e9dd720L


# instance fields
.field private first:I

.field private full:Z

.field private final initialCapacity:I

.field private volatile items:[Ljava/lang/Object;

.field private last:I

.field private mask:I

.field private shrinkThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/CircularQueue;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 72
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 54
    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 73
    invoke-static {p1}, Lorg/apache/mina/util/CircularQueue;->normalizeCapacity(I)I

    move-result v1

    .line 74
    .local v1, "actualCapacity":I
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    .line 75
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    .line 76
    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    .line 77
    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    .line 78
    return-void
.end method

.method private checkIndex(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 210
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 213
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decreaseSize()V
    .locals 2

    .line 225
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    .line 227
    return-void
.end method

.method private expandIfNeeded()V
    .locals 7

    .line 230
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    .line 233
    .local v0, "oldLen":I
    shl-int/lit8 v1, v0, 0x1

    .line 234
    .local v1, "newLen":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 236
    .local v2, "tmp":[Ljava/lang/Object;
    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 237
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v6, v4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v6, v0, v4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v4, v0, v4

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :goto_0
    iput v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 244
    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 245
    iput-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    .line 246
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    .line 248
    ushr-int/lit8 v3, v1, 0x3

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-le v3, v4, :cond_1

    .line 249
    ushr-int/lit8 v3, v1, 0x3

    iput v3, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    .line 252
    .end local v0    # "oldLen":I
    .end local v1    # "newLen":I
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private getRealIndex(I)I
    .locals 2
    .param p1, "idx"    # I

    .line 216
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private increaseSize()V
    .locals 3

    .line 220
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 221
    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    .line 222
    return-void
.end method

.method private static normalizeCapacity(I)I
    .locals 1
    .param p0, "initialCapacity"    # I

    .line 84
    const/4 v0, 0x1

    .line 86
    .local v0, "actualCapacity":I
    :cond_0
    if-ge v0, p0, :cond_1

    .line 87
    shl-int/lit8 v0, v0, 0x1

    .line 88
    if-gez v0, :cond_0

    .line 89
    const/high16 v0, 0x40000000    # 2.0f

    .line 93
    :cond_1
    return v0
.end method

.method private shrinkIfNeeded()V
    .locals 8

    .line 255
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    .line 257
    .local v0, "size":I
    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    if-gt v0, v1, :cond_6

    .line 259
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    .line 260
    .local v1, "oldLen":I
    invoke-static {v0}, Lorg/apache/mina/util/CircularQueue;->normalizeCapacity(I)I

    move-result v2

    .line 262
    .local v2, "newLen":I
    if-ne v0, v2, :cond_0

    .line 263
    shl-int/lit8 v2, v2, 0x1

    .line 266
    :cond_0
    if-lt v2, v1, :cond_1

    .line 267
    return-void

    .line 270
    :cond_1
    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-ge v2, v3, :cond_3

    .line 271
    if-ne v1, v3, :cond_2

    .line 272
    return-void

    .line 275
    :cond_2
    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    .line 278
    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 281
    .local v3, "tmp":[Ljava/lang/Object;
    const/4 v4, 0x0

    if-lez v0, :cond_5

    .line 282
    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v5, v6, :cond_4

    .line 283
    iget-object v5, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v7, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v7, v6

    invoke-static {v5, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 285
    :cond_4
    iget-object v5, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v7, v1, v6

    invoke-static {v5, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v5, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v6, v1, v6

    iget v7, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v5, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    :cond_5
    :goto_0
    iput v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 291
    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 292
    iput-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    .line 293
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    .line 294
    iput v4, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    .line 296
    .end local v1    # "oldLen":I
    .end local v2    # "newLen":I
    .end local v3    # "tmp":[Ljava/lang/Object;
    :cond_6
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p2, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 326
    invoke-virtual {p0, p2}, Lorg/apache/mina/util/CircularQueue;->offer(Ljava/lang/Object;)Z

    .line 327
    return-void

    .line 330
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 331
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->expandIfNeeded()V

    .line 333
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v0

    .line 336
    .local v0, "realIdx":I
    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v1, v2, :cond_1

    .line 337
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 339
    :cond_1
    if-lt v0, v1, :cond_2

    .line 340
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    .line 342
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v5

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 349
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->increaseSize()V

    .line 350
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/CircularQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 100
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 108
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 111
    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 112
    iput-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    .line 115
    :cond_0
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 174
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 182
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->expandIfNeeded()V

    .line 149
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    aput-object p1, v0, v1

    .line 150
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->increaseSize()V

    .line 151
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    return-object v1

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aget-object v0, v0, v2

    .line 128
    .local v0, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aput-object v1, v2, v3

    .line 129
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->decreaseSize()V

    .line 131
    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v1, v2, :cond_1

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 135
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    .line 136
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    if-nez p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 364
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v0

    .line 365
    .local v0, "realIdx":I
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 368
    .local v1, "removed":Ljava/lang/Object;
    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v2, v3, :cond_1

    .line 369
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v6, v5, 0x1

    sub-int v5, v0, v5

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 371
    :cond_1
    if-lt v0, v2, :cond_2

    .line 372
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v6, v5, 0x1

    sub-int v5, v0, v5

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v6, v6

    sub-int/2addr v6, v5

    aget-object v3, v3, v6

    aput-object v3, v2, v4

    .line 376
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/2addr v6, v5

    iget-object v7, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v7, v7

    iget v8, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v5

    invoke-static {v2, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 381
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->decreaseSize()V

    .line 383
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    .line 384
    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p2, "o":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 314
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v0

    .line 315
    .local v0, "realIdx":I
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 316
    .local v1, "old":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 317
    return-object v1
.end method

.method public size()I
    .locals 2

    .line 190
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->capacity()I

    move-result v0

    return v0

    .line 194
    :cond_0
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-lt v0, v1, :cond_1

    .line 195
    sub-int/2addr v0, v1

    return v0

    .line 198
    :cond_1
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
