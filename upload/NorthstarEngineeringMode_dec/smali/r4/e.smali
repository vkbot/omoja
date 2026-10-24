.class public final Lr4/e;
.super Lr4/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final Z:I

.field public final b1:I

.field public final r:[[D

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lr4/b;-><init>(II)V

    iput p1, p0, Lr4/e;->x:I

    iput p2, p0, Lr4/e;->y:I

    add-int/lit8 v0, p1, 0x33

    .line 2
    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lr4/e;->Z:I

    add-int/lit8 v0, p2, 0x33

    .line 3
    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lr4/e;->b1:I

    .line 4
    invoke-static {p1, p2}, Lr4/e;->t(II)[[D

    move-result-object p1

    iput-object p1, p0, Lr4/e;->r:[[D

    return-void
.end method

.method public constructor <init>(II[[D)V
    .locals 6

    .line 5
    invoke-direct {p0, p1, p2}, Lr4/b;-><init>(II)V

    iput p1, p0, Lr4/e;->x:I

    iput p2, p0, Lr4/e;->y:I

    add-int/lit8 p1, p1, 0x33

    const/16 v0, 0x34

    .line 6
    div-int/2addr p1, v0

    iput p1, p0, Lr4/e;->Z:I

    add-int/lit8 p2, p2, 0x33

    .line 7
    div-int/2addr p2, v0

    iput p2, p0, Lr4/e;->b1:I

    iput-object p3, p0, Lr4/e;->r:[[D

    const/4 p1, 0x0

    move p2, p1

    move v1, p2

    :goto_0
    iget v2, p0, Lr4/e;->Z:I

    if-ge p2, v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_0

    iget v2, p0, Lr4/e;->x:I

    mul-int/lit8 v3, p2, 0x34

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    move v3, p1

    :goto_2
    iget v4, p0, Lr4/e;->b1:I

    if-ge v3, v4, :cond_2

    .line 8
    aget-object v4, p3, v1

    array-length v4, v4

    invoke-virtual {p0, v3}, Lr4/e;->s(I)I

    move-result v5

    mul-int/2addr v5, v2

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9
    :cond_1
    new-instance p1, Lp4/b;

    aget-object p2, p3, v1

    array-length p2, p2

    invoke-virtual {p0, v3}, Lr4/e;->s(I)I

    move-result p0

    mul-int/2addr p0, v2

    invoke-direct {p1, p2, p0}, Lp4/b;-><init>(II)V

    throw p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static t(II)[[D
    .locals 10

    add-int/lit8 v0, p0, 0x33

    div-int/lit8 v0, v0, 0x34

    add-int/lit8 v1, p1, 0x33

    div-int/lit8 v1, v1, 0x34

    mul-int v2, v0, v1

    new-array v2, v2, [[D

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    sget-object v8, Lz4/b;->a:[[D

    if-gt v7, p0, :cond_0

    goto :goto_1

    :cond_0
    move v7, p0

    :goto_1
    sub-int/2addr v7, v6

    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_2

    mul-int/lit8 v8, v6, 0x34

    add-int/lit8 v9, v8, 0x34

    if-gt v9, p1, :cond_1

    goto :goto_3

    :cond_1
    move v9, p1

    :goto_3
    sub-int/2addr v9, v8

    mul-int/2addr v9, v7

    new-array v8, v9, [D

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lr4/e;->y:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lr4/e;->x:I

    return p0
.end method

.method public final d(II)D
    .locals 3

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, p2}, Lr4/h;->a(Lr4/k;I)V

    div-int/lit8 v0, p1, 0x34

    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1}, Lr4/e;->s(I)I

    move-result v2

    mul-int/2addr v2, p1

    mul-int/lit8 p1, v1, 0x34

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    iget p1, p0, Lr4/e;->b1:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    iget-object p0, p0, Lr4/e;->r:[[D

    aget-object p0, p0, v0

    aget-wide p0, p0, p2

    return-wide p0
.end method

.method public final e(IID)V
    .locals 3

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, p2}, Lr4/h;->a(Lr4/k;I)V

    div-int/lit8 v0, p1, 0x34

    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1}, Lr4/e;->s(I)I

    move-result v2

    mul-int/2addr v2, p1

    mul-int/lit8 p1, v1, 0x34

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    iget p1, p0, Lr4/e;->b1:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    iget-object p0, p0, Lr4/e;->r:[[D

    aget-object p0, p0, v0

    aput-wide p3, p0, p2

    return-void
.end method

.method public final getData()[[D
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lr4/e;->x:I

    iget v2, v0, Lr4/e;->y:I

    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iget v4, v0, Lr4/e;->b1:I

    add-int/lit8 v5, v4, -0x1

    const/16 v6, 0x34

    mul-int/2addr v5, v6

    sub-int/2addr v2, v5

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lr4/e;->Z:I

    if-ge v7, v8, :cond_3

    mul-int/lit8 v8, v7, 0x34

    add-int/lit8 v9, v8, 0x34

    sget-object v10, Lz4/b;->a:[[D

    if-gt v9, v1, :cond_0

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v12, v3, v8

    mul-int v13, v7, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v5, v4, -0x1

    iget-object v6, v0, Lr4/e;->r:[[D

    if-ge v14, v5, :cond_1

    add-int/lit8 v5, v13, 0x1

    aget-object v6, v6, v13

    const/16 v13, 0x34

    invoke-static {v6, v10, v12, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x34

    add-int/lit8 v14, v14, 0x1

    move v6, v13

    move v13, v5

    goto :goto_3

    :cond_1
    const/16 v5, 0x34

    aget-object v6, v6, v13

    invoke-static {v6, v11, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x34

    add-int/2addr v11, v2

    add-int/lit8 v8, v8, 0x1

    move v6, v5

    goto :goto_2

    :cond_2
    move v5, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public final j(II)Lr4/k;
    .locals 0

    new-instance p0, Lr4/e;

    invoke-direct {p0, p1, p2}, Lr4/e;-><init>(II)V

    return-object p0
.end method

.method public final m()Lr4/k;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lr4/e;

    iget v2, v0, Lr4/e;->y:I

    iget v3, v0, Lr4/e;->x:I

    invoke-direct {v1, v2, v3}, Lr4/e;-><init>(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Lr4/e;->b1:I

    if-ge v5, v7, :cond_5

    const/4 v8, 0x0

    :goto_1
    iget v9, v0, Lr4/e;->Z:I

    if-ge v8, v9, :cond_4

    iget-object v9, v1, Lr4/e;->r:[[D

    aget-object v9, v9, v6

    mul-int v10, v8, v7

    add-int/2addr v10, v5

    iget-object v11, v0, Lr4/e;->r:[[D

    aget-object v10, v11, v10

    mul-int/lit8 v11, v5, 0x34

    add-int/lit8 v12, v11, 0x34

    sget-object v13, Lz4/b;->a:[[D

    if-gt v12, v2, :cond_0

    goto :goto_2

    :cond_0
    move v12, v2

    :goto_2
    mul-int/lit8 v13, v8, 0x34

    add-int/lit8 v14, v13, 0x34

    if-gt v14, v3, :cond_1

    goto :goto_3

    :cond_1
    move v14, v3

    :goto_3
    move v15, v11

    const/16 v16, 0x0

    :goto_4
    if-ge v15, v12, :cond_3

    sub-int v17, v12, v11

    sub-int v18, v15, v11

    move v4, v13

    :goto_5
    if-ge v4, v14, :cond_2

    aget-wide v19, v10, v18

    aput-wide v19, v9, v16

    add-int/lit8 v16, v16, 0x1

    add-int v18, v18, v17

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public final n(Lr4/a;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v2, v3, v4}, Lr4/h;->c(Lr4/k;III)V

    invoke-virtual {v1, v3}, Lr4/a;->l(I)V

    const/4 v6, 0x0

    :goto_0
    div-int/lit8 v7, v2, 0x34

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_7

    mul-int/lit8 v7, v6, 0x34

    sget-object v8, Lz4/b;->a:[[D

    if-ltz v7, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v10, v9, 0x34

    add-int/lit8 v11, v2, 0x1

    if-gt v10, v11, :cond_1

    goto :goto_2

    :cond_1
    move v10, v11

    :goto_2
    div-int/lit8 v11, v3, 0x34

    :goto_3
    div-int/lit8 v12, v4, 0x34

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_6

    invoke-virtual {v0, v11}, Lr4/e;->s(I)I

    move-result v12

    mul-int/lit8 v13, v11, 0x34

    if-gt v3, v13, :cond_2

    move v14, v13

    goto :goto_4

    :cond_2
    move v14, v3

    :goto_4
    add-int/lit8 v15, v11, 0x1

    mul-int/lit8 v5, v15, 0x34

    add-int/lit8 v2, v4, 0x1

    if-gt v5, v2, :cond_3

    goto :goto_5

    :cond_3
    move v5, v2

    :goto_5
    iget v2, v0, Lr4/e;->b1:I

    mul-int/2addr v2, v6

    add-int/2addr v2, v11

    iget-object v11, v0, Lr4/e;->r:[[D

    aget-object v2, v11, v2

    move v11, v8

    :goto_6
    if-ge v11, v10, :cond_5

    sub-int v16, v11, v7

    mul-int v16, v16, v12

    add-int v16, v16, v14

    sub-int v16, v16, v13

    move v0, v14

    :goto_7
    if-ge v0, v5, :cond_4

    aget-wide v3, v2, v16

    invoke-virtual {v1, v11, v0, v3, v4}, Lr4/a;->m(IID)V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_7

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v11, v15

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v6, v9

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final p(Lr4/b$a;)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lr4/e;->Z:I

    if-ge v1, v3, :cond_5

    mul-int/lit8 v3, v1, 0x34

    add-int/lit8 v4, v3, 0x34

    sget-object v5, Lz4/b;->a:[[D

    iget v5, p0, Lr4/e;->x:I

    if-gt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    move v5, v0

    :goto_2
    iget v6, p0, Lr4/e;->b1:I

    if-ge v5, v6, :cond_4

    mul-int/lit8 v6, v5, 0x34

    add-int/lit8 v7, v6, 0x34

    iget v8, p0, Lr4/e;->y:I

    if-gt v7, v8, :cond_1

    goto :goto_3

    :cond_1
    move v7, v8

    :goto_3
    iget-object v8, p0, Lr4/e;->r:[[D

    aget-object v8, v8, v2

    move v10, v0

    move v9, v3

    :goto_4
    if-ge v9, v4, :cond_3

    move v11, v6

    :goto_5
    if-ge v11, v7, :cond_2

    aget-wide v12, v8, v10

    invoke-virtual {p1, v9, v11, v12, v13}, Lr4/b$a;->l(IID)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final q(Lr4/a;III)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v2, v3, v4}, Lr4/h;->c(Lr4/k;III)V

    invoke-virtual {v1, v3}, Lr4/a;->l(I)V

    const/4 v6, 0x0

    :goto_0
    div-int/lit8 v7, v2, 0x34

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_7

    mul-int/lit8 v7, v6, 0x34

    sget-object v8, Lz4/b;->a:[[D

    if-ltz v7, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v10, v9, 0x34

    add-int/lit8 v11, v2, 0x1

    if-gt v10, v11, :cond_1

    goto :goto_2

    :cond_1
    move v10, v11

    :goto_2
    if-ge v8, v10, :cond_6

    div-int/lit8 v11, v3, 0x34

    :goto_3
    div-int/lit8 v12, v4, 0x34

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_5

    invoke-virtual {v0, v11}, Lr4/e;->s(I)I

    move-result v12

    mul-int/lit8 v13, v11, 0x34

    if-gt v3, v13, :cond_2

    move v14, v13

    goto :goto_4

    :cond_2
    move v14, v3

    :goto_4
    add-int/lit8 v15, v11, 0x1

    mul-int/lit8 v5, v15, 0x34

    add-int/lit8 v2, v4, 0x1

    if-gt v5, v2, :cond_3

    goto :goto_5

    :cond_3
    move v5, v2

    :goto_5
    iget v2, v0, Lr4/e;->b1:I

    mul-int/2addr v2, v6

    add-int/2addr v2, v11

    iget-object v11, v0, Lr4/e;->r:[[D

    aget-object v2, v11, v2

    sub-int v11, v8, v7

    mul-int/2addr v11, v12

    add-int/2addr v11, v14

    sub-int/2addr v11, v13

    :goto_6
    if-ge v14, v5, :cond_4

    aget-wide v12, v2, v11

    invoke-virtual {v1, v8, v14, v12, v13}, Lr4/a;->m(IID)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_4
    move/from16 v2, p2

    move v11, v15

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    goto :goto_2

    :cond_6
    move/from16 v2, p2

    move v6, v9

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final r(Lr4/b$a;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lr4/e;->Z:I

    if-ge v1, v2, :cond_5

    mul-int/lit8 v2, v1, 0x34

    add-int/lit8 v3, v2, 0x34

    sget-object v4, Lz4/b;->a:[[D

    iget v4, p0, Lr4/e;->x:I

    if-gt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    move v5, v0

    :goto_3
    iget v6, p0, Lr4/e;->b1:I

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Lr4/e;->s(I)I

    move-result v7

    mul-int/lit8 v8, v5, 0x34

    add-int/lit8 v9, v8, 0x34

    iget v10, p0, Lr4/e;->y:I

    if-gt v9, v10, :cond_1

    goto :goto_4

    :cond_1
    move v9, v10

    :goto_4
    mul-int/2addr v6, v1

    add-int/2addr v6, v5

    iget-object v10, p0, Lr4/e;->r:[[D

    aget-object v6, v10, v6

    sub-int v10, v4, v2

    mul-int/2addr v10, v7

    :goto_5
    if-ge v8, v9, :cond_2

    aget-wide v11, v6, v10

    invoke-virtual {p1, v4, v8, v11, v12}, Lr4/b$a;->l(IID)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final s(I)I
    .locals 2

    iget v0, p0, Lr4/e;->b1:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x34

    if-ne p1, v0, :cond_0

    iget p0, p0, Lr4/e;->y:I

    mul-int/2addr p1, v1

    sub-int v1, p0, p1

    :cond_0
    return v1
.end method
