.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.super Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.source "CompositeByteArrayRelativeWriter.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$NopExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;
    }
.end annotation


# instance fields
.field private final autoFlush:Z

.field private final expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

.field private final flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;Z)V
    .locals 0
    .param p1, "cba"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p2, "expander"    # Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;
    .param p3, "flusher"    # Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;
    .param p4, "autoFlush"    # Z

    .line 149
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    .line 150
    iput-object p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    .line 151
    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    .line 152
    iput-boolean p4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    .line 153
    return-void
.end method

.method private prepareForAccess(I)V
    .locals 3
    .param p1, "size"    # I

    .line 156
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->last()I

    move-result v1

    sub-int/2addr v0, v1

    .line 157
    .local v0, "underflow":I
    if-lez v0, :cond_0

    .line 158
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;->expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method protected cursorPassedFirstComponent()V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    .line 167
    return-void
.end method

.method public flushTo(I)V
    .locals 2
    .param p1, "index"    # I

    .line 175
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 176
    .local v0, "removed":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    invoke-interface {v1, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;->flush(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 177
    return-void
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1

    .line 41
    invoke-super {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 1
    .param p1, "b"    # B

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 200
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 201
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 208
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 209
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 210
    return-void
.end method

.method public putChar(C)V
    .locals 1
    .param p1, "c"    # C

    .line 262
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 263
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 264
    return-void
.end method

.method public putDouble(D)V
    .locals 1
    .param p1, "d"    # D

    .line 253
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 254
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 255
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "f"    # F

    .line 244
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 245
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 246
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "i"    # I

    .line 226
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 227
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 228
    return-void
.end method

.method public putLong(J)V
    .locals 1
    .param p1, "l"    # J

    .line 235
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 236
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 237
    return-void
.end method

.method public putShort(S)V
    .locals 1
    .param p1, "s"    # S

    .line 217
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 218
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 219
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .line 184
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->skip(I)V

    .line 185
    return-void
.end method
