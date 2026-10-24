.class Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "BufferByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/BufferByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorImpl"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;I)V
    .locals 0
    .param p2, "index"    # I

    .line 277
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-virtual {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    .line 279
    return-void
.end method


# virtual methods
.method public get()B
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(I)B

    move-result v0

    .line 348
    .local v0, "b":B
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 349
    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 366
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 367
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(ILorg/apache/mina/core/buffer/IoBuffer;)V

    .line 368
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 369
    return-void
.end method

.method public getChar()C
    .locals 2

    .line 481
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getChar(I)C

    move-result v0

    .line 482
    .local v0, "c":C
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 483
    return v0
.end method

.method public getDouble()D
    .locals 3

    .line 462
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getDouble(I)D

    move-result-wide v0

    .line 463
    .local v0, "d":D
    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 464
    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    .line 443
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getFloat(I)F

    move-result v0

    .line 444
    .local v0, "f":F
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 445
    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 302
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 2

    .line 405
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getInt(I)I

    move-result v0

    .line 406
    .local v0, "i":I
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 407
    return v0
.end method

.method public getLong()J
    .locals 3

    .line 424
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getLong(I)J

    move-result-wide v0

    .line 425
    .local v0, "l":J
    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 426
    return-wide v0
.end method

.method public getRemaining()I
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShort()S
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getShort(I)S

    move-result v0

    .line 387
    .local v0, "s":S
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 388
    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .line 294
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .line 357
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(IB)V

    .line 358
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 359
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 376
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 377
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(ILorg/apache/mina/core/buffer/IoBuffer;)V

    .line 378
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 379
    return-void
.end method

.method public putChar(C)V
    .locals 2
    .param p1, "c"    # C

    .line 491
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putChar(IC)V

    .line 492
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 493
    return-void
.end method

.method public putDouble(D)V
    .locals 2
    .param p1, "d"    # D

    .line 472
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putDouble(ID)V

    .line 473
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 474
    return-void
.end method

.method public putFloat(F)V
    .locals 2
    .param p1, "f"    # F

    .line 453
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putFloat(IF)V

    .line 454
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 455
    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "i"    # I

    .line 415
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putInt(II)V

    .line 416
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 417
    return-void
.end method

.method public putLong(J)V
    .locals 2
    .param p1, "l"    # J

    .line 434
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putLong(IJ)V

    .line 435
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 436
    return-void
.end method

.method public putShort(S)V
    .locals 2
    .param p1, "s"    # S

    .line 396
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putShort(IS)V

    .line 397
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 398
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 310
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 313
    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 314
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .line 321
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    .line 322
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2
    .param p1, "length"    # I

    .line 329
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 330
    .local v0, "slice":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 331
    return-object v0
.end method
