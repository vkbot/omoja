.class public final Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.super Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.source "CompositeByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;
    }
.end annotation


# instance fields
.field private final bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

.field private final byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

.field private order:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V
    .locals 1
    .param p1, "byteArrayFactory"    # Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    .line 109
    invoke-direct {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;-><init>()V

    .line 83
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-direct {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .line 110
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    .line 39
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    .line 39
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    .line 39
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method private addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 3
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .line 434
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v0

    if-nez v0, :cond_2

    .line 439
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-nez v0, :cond_0

    .line 440
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 441
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add byte array with different byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add byte array that doesn\'t start from 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 132
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 133
    return-void
.end method

.method public addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .line 235
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 236
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 237
    return-void
.end method

.method public cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 336
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "index"    # I

    .line 344
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    return-object v0
.end method

.method public cursor(ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 366
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public cursor(Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 355
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public first()I
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte()I

    move-result v0

    return v0
.end method

.method public free()V
    .locals 2

    .line 255
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 257
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    .line 258
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 259
    .end local v0    # "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public get(I)B
    .locals 1
    .param p1, "index"    # I

    .line 382
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    return v0
.end method

.method public get(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 398
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 399
    return-void
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 558
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 542
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 526
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 494
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v0

    return v0
.end method

.method public getIoBuffers()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/buffer/IoBuffer;>;"
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 274
    .local v1, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 275
    .local v3, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v3    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 278
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 282
    .restart local v3    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v3    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_2

    :cond_2
    goto :goto_1

    .line 286
    :cond_3
    return-object v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 510
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 478
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result v0

    return v0
.end method

.method public getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 9

    .line 294
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 301
    .local v0, "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    return-object v1

    .line 304
    .end local v0    # "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    .line 306
    .local v0, "actualLength":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 307
    .local v1, "firstNode":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    .line 309
    .local v2, "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 310
    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    return-object v3

    .line 314
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-interface {v3, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    .line 315
    .local v3, "target":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 316
    .local v4, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v5

    .line 317
    .local v5, "cursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    invoke-interface {v5, v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 319
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v6}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 320
    iget-object v6, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v6}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v6

    .line 321
    .local v6, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v6}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v7

    .line 322
    .local v7, "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v8}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 323
    invoke-interface {v7}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    .line 324
    .end local v6    # "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .end local v7    # "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    goto :goto_0

    .line 326
    :cond_2
    iget-object v6, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v6, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 328
    return-object v4

    .line 295
    .end local v0    # "actualLength":I
    .end local v1    # "firstNode":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .end local v2    # "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v3    # "target":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v4    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "cursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get single buffer from CompositeByteArray unless it has a ByteArrayFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .line 1097
    const/16 v0, 0x11

    .line 1099
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1101
    .end local v0    # "h":I
    .local v1, "h":I
    return v1
.end method

.method public last()I
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-eqz v0, :cond_0

    .line 454
    return-object v0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte order not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 462
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    .line 465
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order(Ljava/nio/ByteOrder;)V

    .line 466
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    goto :goto_0

    .line 471
    .end local v0    # "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    :cond_1
    return-void
.end method

.method public put(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .line 390
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 391
    return-void
.end method

.method public put(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 406
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 407
    return-void
.end method

.method public putChar(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    .line 566
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 567
    return-void
.end method

.method public putDouble(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "d"    # D

    .line 550
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 551
    return-void
.end method

.method public putFloat(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "f"    # F

    .line 534
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 535
    return-void
.end method

.method public putInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "i"    # I

    .line 502
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 503
    return-void
.end method

.method public putLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "l"    # J

    .line 518
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 519
    return-void
.end method

.method public putShort(IS)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # S

    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 487
    return-void
.end method

.method public removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 142
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public removeLast()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 247
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 10
    .param p1, "index"    # I

    .line 156
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 161
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 162
    .local v0, "prefix":Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v1

    sub-int v1, p1, v1

    .line 164
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    .line 167
    .local v2, "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    if-gt v3, v1, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 170
    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    .line 176
    :cond_0
    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 179
    .local v3, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v4

    .line 182
    .local v4, "originalLimit":I
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 185
    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 188
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    .line 191
    .local v5, "bb1":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 194
    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 197
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v6

    .line 200
    .local v6, "bb2":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v7, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;

    invoke-direct {v7, p0, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 208
    .local v7, "ba1":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {v0, v7}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 209
    invoke-interface {v7}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v8

    sub-int/2addr v1, v8

    .line 212
    move-object v8, v2

    .line 213
    .local v8, "componentFinal":Lorg/apache/mina/util/byteaccess/ByteArray;
    new-instance v9, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;

    invoke-direct {v9, p0, v6, v8}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 221
    .local v9, "ba2":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {p0, v9}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 223
    .end local v2    # "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v3    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "originalLimit":I
    .end local v5    # "bb1":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v6    # "bb2":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v7    # "ba1":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v8    # "componentFinal":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v9    # "ba2":Lorg/apache/mina/util/byteaccess/ByteArray;
    :goto_1
    goto :goto_0

    .line 226
    :cond_1
    return-object v0

    .line 157
    .end local v0    # "prefix":Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .end local v1    # "remaining":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    return-object v0
.end method
