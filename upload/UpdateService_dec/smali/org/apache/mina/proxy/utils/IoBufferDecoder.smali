.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.super Ljava/lang/Object;
.source "IoBufferDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
    }
.end annotation


# instance fields
.field private ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    .line 159
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "delimiter"    # [B

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 150
    return-void
.end method


# virtual methods
.method public decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 10
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 219
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getContentLength()I

    move-result v0

    .line 220
    .local v0, "contentLength":I
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 222
    .local v1, "decodedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    .line 225
    .local v2, "oldLimit":I
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-le v0, v4, :cond_2

    .line 226
    if-nez v1, :cond_0

    .line 227
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 231
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 232
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    .line 233
    .local v3, "readBytes":I
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 234
    iget-object v4, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v4, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 235
    iget-object v4, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 236
    const/4 v4, 0x0

    return-object v4

    .line 240
    .end local v3    # "readBytes":I
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    .line 241
    .local v3, "newLimit":I
    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 242
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 243
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 244
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 245
    iget-object v4, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    .line 247
    return-object v1

    .line 251
    .end local v3    # "newLimit":I
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 252
    .local v4, "oldPos":I
    iget-object v5, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getMatchCount()I

    move-result v5

    .line 253
    .local v5, "matchCount":I
    iget-object v6, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v6}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v6

    .line 255
    .local v6, "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 256
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v7

    .line 258
    .local v7, "b":B
    invoke-virtual {v6, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v8

    if-ne v8, v7, :cond_4

    .line 259
    add-int/lit8 v5, v5, 0x1

    .line 261
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v8

    if-ne v5, v8, :cond_5

    .line 263
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    .line 264
    .local v8, "pos":I
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 266
    invoke-virtual {p1, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 268
    if-nez v1, :cond_3

    .line 269
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v9

    invoke-static {v9}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 272
    :cond_3
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 273
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 275
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 276
    iget-object v3, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    .line 278
    return-object v1

    .line 281
    .end local v8    # "pos":I
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p1, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 282
    const/4 v5, 0x0

    .line 284
    .end local v7    # "b":B
    :cond_5
    goto :goto_0

    .line 287
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_7

    .line 288
    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 289
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 290
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 294
    :cond_7
    iget-object v3, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v3, v5}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 295
    iget-object v3, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v3, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 297
    return-object v1
.end method

.method public setContentLength(IZ)V
    .locals 3
    .param p1, "contentLength"    # I
    .param p2, "resetMatchCount"    # Z

    .line 171
    if-lez p1, :cond_1

    .line 175
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 176
    if-eqz p2, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 179
    :cond_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiter([BZ)V
    .locals 3
    .param p1, "delim"    # [B
    .param p2, "resetMatchCount"    # Z

    .line 193
    if-eqz p1, :cond_1

    .line 198
    array-length v0, p1

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 199
    .local v0, "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 200
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 202
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 203
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 207
    :cond_0
    return-void

    .line 194
    .end local v0    # "delimiter":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null delimiter not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
