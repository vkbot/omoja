.class Lorg/apache/mina/core/buffer/IoBufferHexDumper;
.super Ljava/lang/Object;
.source "IoBufferHexDumper.java"


# static fields
.field private static final hexDigit:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->hexDigit:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHexDumpSlice(Lorg/apache/mina/core/buffer/IoBuffer;II)Ljava/lang/String;
    .locals 7
    .param p0, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 42
    if-eqz p0, :cond_3

    .line 46
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 50
    move v0, p1

    .line 51
    .local v0, "pos":I
    add-int v1, p1, p2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v0

    .line 53
    .local v1, "items":I
    if-gtz v1, :cond_0

    .line 54
    const-string v2, ""

    return-object v2

    .line 57
    :cond_0
    add-int v2, v0, v1

    .line 59
    .local v2, "lim":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v3, "out":Ljava/lang/StringBuilder;
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "pos":I
    .local v4, "pos":I
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 63
    .local v0, "byteValue":I
    sget-object v5, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->hexDigit:[C

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    sget-object v5, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->hexDigit:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    if-ge v4, v2, :cond_1

    .line 67
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .end local v0    # "byteValue":I
    move v0, v4

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    .end local v1    # "items":I
    .end local v2    # "lim":I
    .end local v3    # "out":Ljava/lang/StringBuilder;
    .end local v4    # "pos":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final getPrettyHexDumpSlice(Lorg/apache/mina/core/buffer/IoBuffer;II)Ljava/lang/String;
    .locals 6
    .param p0, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 87
    if-eqz p0, :cond_2

    .line 91
    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 96
    .local v0, "len":I
    new-array v1, v0, [B

    .line 98
    .local v1, "bytes":[B
    move v2, p1

    .line 100
    .local v2, "o":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 101
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "o":I
    .local v4, "o":I
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    aput-byte v2, v1, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    .end local v4    # "o":I
    .restart local v2    # "o":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, " showing index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v4, " through "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int v4, p1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->toPrettyHexDump([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 92
    .end local v0    # "len":I
    .end local v1    # "bytes":[B
    .end local v2    # "o":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final toHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # B

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [C

    sget-object v1, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->hexDigit:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 232
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static final toPrettyHexDump([BII)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 131
    if-eqz p0, :cond_3

    .line 135
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "b":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "c":I
    const/16 v3, 0x10

    .local v3, "line":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%06d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int v4, p1, p2

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {p0, v1, v4, v5, v3}, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->toPrettyHexDumpLine([BIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int v4, v1, v3

    if-ge v4, p2, :cond_0

    .line 148
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    add-int/2addr v2, v3

    .line 143
    add-int/2addr v1, v3

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    .end local v2    # "c":I
    .end local v3    # "line":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 136
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static final toPrettyHexDumpLine([BIIII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "pos"    # I
    .param p2, "len"    # I
    .param p3, "col"    # I
    .param p4, "line"    # I

    .line 178
    const-string v0, "."

    rem-int/lit8 v1, p4, 0x2

    if-nez v1, :cond_5

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v1, "b":Ljava/lang/StringBuilder;
    move v2, p1

    .local v2, "i":I
    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, p1

    .local v3, "t":I
    :goto_0
    const-string v4, " "

    if-ge v2, v3, :cond_1

    .line 185
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, p3, :cond_0

    if-ge v2, v3, :cond_0

    .line 186
    aget-byte v6, p0, v2

    invoke-static {v6}, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->toHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    .end local v5    # "x":I
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    .end local v3    # "t":I
    :cond_1
    mul-int/lit8 v2, p4, 0x3

    div-int v3, p4, p3

    add-int/2addr v2, v3

    .line 195
    .local v2, "cl":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 199
    :goto_2
    if-lez v2, :cond_2

    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 206
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/String;

    array-length v4, p0

    sub-int/2addr v4, p1

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, "Cp1252"

    invoke-direct {v3, p0, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v4, "\r\n"

    const-string v5, ".."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    .line 207
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 211
    .local v3, "ch":[C
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 212
    aget-char v5, v3, v4

    const/16 v6, 0x20

    if-ge v5, v6, :cond_3

    .line 213
    const/16 v5, 0x2e

    aput-char v5, v3, v4

    .line 211
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 217
    .end local v4    # "m":I
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    nop

    .end local v0    # "p":Ljava/lang/String;
    .end local v3    # "ch":[C
    goto :goto_4

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 222
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    .end local v1    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "cl":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be multiple of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
