.class public final Lz1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz1/d;->a:I

    .line 3
    new-instance v0, Ln2/i;

    invoke-direct {v0}, Ln2/i;-><init>()V

    iput-object v0, p0, Lz1/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lz1/d;->a:I

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 5
    new-array p1, p1, [I

    const/4 v0, -0x1

    .line 6
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lz1/d;->b:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "depth must be bigger than 0 and not bigger than 30 but is "

    .line 8
    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lz1/d;->a:I

    iput-object p1, p0, Lz1/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ln4/d;I)Lz1/d;
    .locals 11

    if-ltz p1, :cond_d

    invoke-virtual {p0}, Ln4/e;->read()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-eqz v0, :cond_c

    invoke-static {p0, v0}, Lh4/e;->b(Ljava/io/InputStream;I)[B

    move-result-object p0

    array-length v2, p0

    if-ne v2, v0, :cond_b

    new-array v0, p1, [I

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    aget-byte v7, p0, v4

    and-int/lit16 v8, v7, 0xf0

    shr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v1

    add-int v9, v5, v8

    if-gt v9, p1, :cond_1

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v7, v1

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    add-int/lit8 v10, v5, 0x1

    aput v7, v0, v5

    add-int/lit8 v9, v9, 0x1

    move v5, v10

    goto :goto_1

    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Number of values exceeds given total number of values"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-array p0, p1, [I

    move v2, v3

    :goto_2
    if-ge v2, p1, :cond_3

    aput v2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array v2, p1, [I

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, p1, :cond_6

    move v7, v3

    :goto_4
    if-ge v7, p1, :cond_5

    aget v8, v0, v7

    if-ne v8, v4, :cond_4

    aput v4, v2, v5

    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    new-array v4, p1, [I

    add-int/lit8 v5, p1, -0x1

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_5
    if-ltz v5, :cond_8

    add-int/2addr v7, v8

    aget v10, v2, v5

    if-eq v10, v9, :cond_7

    rsub-int/lit8 v8, v10, 0x10

    shl-int v8, v1, v8

    move v9, v10

    :cond_7
    aget v10, p0, v5

    aput v7, v4, v10

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_8
    new-instance p0, Lz1/d;

    invoke-direct {p0, v6}, Lz1/d;-><init>(I)V

    move v1, v3

    :goto_6
    if-ge v1, p1, :cond_a

    aget v2, v0, v1

    if-lez v2, :cond_9

    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    move-result v5

    invoke-virtual {p0, v3, v5, v2, v1}, Lz1/d;->a(IIII)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    return-object p0

    :cond_b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "totalNumberOfValues must be bigger than 0, is "

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(IIII)V
    .locals 2

    if-nez p3, :cond_1

    iget-object p2, p0, Lz1/d;->b:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, [I

    aget p3, p3, p1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    check-cast p2, [I

    aput p4, p2, p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Tree value at index "

    const-string p4, " has already been assigned ("

    invoke-static {p3, p1, p4}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, p1

    const-string p1, ")"

    invoke-static {p3, p0, p1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object v0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x2

    aput v1, v0, p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    ushr-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lz1/d;->a(IIII)V

    :goto_0
    return-void
.end method

.method public final c(Lorg/apache/commons/compress/archivers/zip/c;)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lh4/a;->a(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    add-int v1, v4, v2

    iget-object v4, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v1

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-eq v4, v3, :cond_2

    return v4

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "The child "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of node at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not defined"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V
    .locals 1

    iget-object p0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast p0, Ln2/i;

    const-string v0, "Screen/Info/resp"

    invoke-virtual {p0, v0, p1}, Ln2/i;->a(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method

.method public final e(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reqScreenInfo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenInfoManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast p0, Ln2/i;

    const-string p1, "Screen/Info/req"

    invoke-virtual {p0, p1, v0}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    const-string/jumbo p1, "reqScreenInfo res "

    invoke-static {p1, p0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final f(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V
    .locals 1

    iget-object p0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast p0, Ln2/i;

    const-string v0, "Screen/Info/resp"

    invoke-virtual {p0, v0, p1}, Ln2/i;->h(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lz1/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lz1/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
