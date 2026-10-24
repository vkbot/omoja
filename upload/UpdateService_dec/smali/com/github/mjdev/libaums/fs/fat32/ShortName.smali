.class public final Lcom/github/mjdev/libaums/fs/fat32/ShortName;
.super Ljava/lang/Object;
.source "ShortName.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/fat32/ShortName$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortName.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortName.kt\ncom/github/mjdev/libaums/fs/fat32/ShortName\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,176:1\n45#2:177\n17#2,22:178\n45#2:200\n17#2,22:201\n*E\n*S KotlinDebug\n*F\n+ 1 ShortName.kt\ncom/github/mjdev/libaums/fs/fat32/ShortName\n*L\n69#1:177\n69#1,22:178\n70#1:200\n70#1,22:201\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/ShortName;",
        "",
        "name",
        "",
        "extension",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "data",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)V",
        "string",
        "getString",
        "()Ljava/lang/String;",
        "calculateCheckSum",
        "",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "serialize",
        "",
        "buffer",
        "toString",
        "Companion",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/mjdev/libaums/fs/fat32/ShortName$Companion;

.field private static final SIZE:I = 0xb


# instance fields
.field private data:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/ShortName$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/ShortName$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->Companion:Lcom/github/mjdev/libaums/fs/fat32/ShortName$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 87
    .local v0, "tmp":[B
    const/16 v1, 0x20

    int-to-byte v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91
    .local v1, "length":I
    const-string v3, "ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "Charset.forName(\"ASCII\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v6, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v4, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 92
    invoke-static {v3, v7, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    aget-byte v2, v0, v7

    const/16 v3, 0xe5

    int-to-byte v3, v3

    if-ne v2, v3, :cond_0

    .line 98
    const/4 v2, 0x5

    aput-byte v2, v0, v7

    .line 101
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "ByteBuffer.wrap(tmp)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    .end local v0    # "tmp":[B
    .end local v1    # "length":I
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 40
    invoke-direct {p0, p1}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final calculateCheckSum()B
    .locals 6

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "sum":I
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 139
    .local v2, "i":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x80

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    and-int/lit16 v5, v0, 0xff

    shr-int/2addr v5, v4

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int v0, v3, v5

    .line 138
    nop

    .end local v2    # "i":I
    add-int/2addr v2, v4

    goto :goto_0

    .line 142
    :cond_1
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 146
    instance-of v0, p1, Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    iget-object v1, v1, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 17

    .line 51
    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [C

    .line 52
    .local v1, "name":[C
    const/4 v2, 0x3

    new-array v2, v2, [C

    .line 54
    .local v2, "extension":[C
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xff

    const/4 v6, 0x1

    const/4 v7, 0x7

    if-gt v4, v7, :cond_0

    .line 55
    .local v4, "i":I
    iget-object v7, v0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-byte v5, v5

    and-int/2addr v5, v7

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v1, v4

    .line 54
    nop

    .end local v4    # "i":I
    add-int/2addr v4, v6

    goto :goto_0

    .line 60
    :cond_0
    iget-object v4, v0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_1

    .line 62
    const/16 v4, 0xe5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 65
    :cond_1
    const/4 v4, 0x2

    move v7, v3

    :goto_1
    if-gt v7, v4, :cond_2

    .line 66
    .local v7, "i":I
    iget-object v8, v0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v7, 0x8

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    int-to-byte v9, v5

    and-int/2addr v8, v9

    int-to-byte v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 65
    nop

    .end local v7    # "i":I
    add-int/2addr v7, v6

    goto :goto_1

    .line 69
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    .local v4, "$this$trim$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 177
    .local v5, "$i$f$trim":I
    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    .local v7, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 178
    .local v8, "$i$f$trim":I
    const/4 v9, 0x0

    .line 179
    .local v9, "startIndex$iv$iv":I
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v6

    .line 180
    .local v10, "endIndex$iv$iv":I
    const/4 v11, 0x0

    .line 182
    .local v11, "startFound$iv$iv":Z
    :goto_2
    const/16 v12, 0x20

    if-gt v9, v10, :cond_8

    .line 183
    if-nez v11, :cond_3

    move v13, v9

    goto :goto_3

    :cond_3
    move v13, v10

    .line 184
    .local v13, "index$iv$iv":I
    :goto_3
    invoke-interface {v7, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .local v14, "it":C
    const/4 v15, 0x0

    .line 69
    .local v15, "$i$a$-trim-ShortName$string$strName$1":I
    if-gt v14, v12, :cond_4

    move v14, v6

    goto :goto_4

    :cond_4
    move v14, v3

    .line 186
    .end local v15    # "$i$a$-trim-ShortName$string$strName$1":I
    .local v14, "match$iv$iv":Z
    :goto_4
    if-nez v11, :cond_6

    .line 187
    if-nez v14, :cond_5

    .line 188
    const/4 v11, 0x1

    goto :goto_5

    .line 190
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 192
    :cond_6
    if-nez v14, :cond_7

    .line 193
    goto :goto_6

    .line 195
    :cond_7
    add-int/lit8 v10, v10, -0x1

    .line 196
    .end local v13    # "index$iv$iv":I
    .end local v14    # "match$iv$iv":Z
    :goto_5
    nop

    .line 182
    goto :goto_2

    .line 199
    :cond_8
    :goto_6
    add-int/lit8 v13, v10, 0x1

    invoke-interface {v7, v9, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 177
    .end local v7    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v8    # "$i$f$trim":I
    .end local v9    # "startIndex$iv$iv":I
    .end local v10    # "endIndex$iv$iv":I
    .end local v11    # "startFound$iv$iv":Z
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .end local v4    # "$this$trim$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trim":I
    nop

    .line 70
    .local v4, "strName":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    .local v5, "$this$trim$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 200
    .local v7, "$i$f$trim":I
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    .local v8, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 201
    .local v9, "$i$f$trim":I
    const/4 v10, 0x0

    .line 202
    .local v10, "startIndex$iv$iv":I
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int/2addr v11, v6

    .line 203
    .local v11, "endIndex$iv$iv":I
    const/4 v13, 0x0

    .line 205
    .local v13, "startFound$iv$iv":Z
    :goto_7
    if-gt v10, v11, :cond_e

    .line 206
    if-nez v13, :cond_9

    move v14, v10

    goto :goto_8

    :cond_9
    move v14, v11

    .line 207
    .local v14, "index$iv$iv":I
    :goto_8
    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .local v15, "it":C
    const/16 v16, 0x0

    .line 70
    .local v16, "$i$a$-trim-ShortName$string$strExt$1":I
    if-gt v15, v12, :cond_a

    move v15, v6

    goto :goto_9

    :cond_a
    move v15, v3

    .line 209
    .end local v16    # "$i$a$-trim-ShortName$string$strExt$1":I
    .local v15, "match$iv$iv":Z
    :goto_9
    if-nez v13, :cond_c

    .line 210
    if-nez v15, :cond_b

    .line 211
    const/4 v13, 0x1

    goto :goto_a

    .line 213
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 215
    :cond_c
    if-nez v15, :cond_d

    .line 216
    goto :goto_b

    .line 218
    :cond_d
    add-int/lit8 v11, v11, -0x1

    .line 219
    .end local v14    # "index$iv$iv":I
    .end local v15    # "match$iv$iv":Z
    :goto_a
    nop

    .line 205
    goto :goto_7

    .line 222
    :cond_e
    :goto_b
    add-int/lit8 v12, v11, 0x1

    invoke-interface {v8, v10, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 200
    .end local v8    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v9    # "$i$f$trim":I
    .end local v10    # "startIndex$iv$iv":I
    .end local v11    # "endIndex$iv$iv":I
    .end local v13    # "startFound$iv$iv":Z
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    .end local v5    # "$this$trim$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trim":I
    nop

    .line 72
    .local v5, "strExt":Ljava/lang/String;
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_f

    move v3, v6

    :cond_f
    if-eqz v3, :cond_10

    move-object v3, v4

    goto :goto_c

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_c
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
