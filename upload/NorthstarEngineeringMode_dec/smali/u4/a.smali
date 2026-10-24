.class public final Lu4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lu4/a;->b:[I

    const/4 p1, 0x0

    iput p1, p0, Lu4/a;->a:I

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([D[D)D
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_7

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-wide v7, v2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    :goto_0
    array-length v4, v0

    if-ge v6, v4, :cond_1

    aget-wide v4, v0, v6

    aget-wide v19, v1, v6

    cmp-long v21, v7, v2

    if-nez v21, :cond_0

    :goto_1
    move-wide v9, v4

    move-wide/from16 v11, v19

    goto :goto_2

    :cond_0
    long-to-double v2, v7

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v22, v2, v22

    div-double v2, v2, v22

    sub-double/2addr v4, v9

    sub-double v19, v19, v11

    mul-double v24, v4, v4

    mul-double v24, v24, v2

    add-double v13, v24, v13

    mul-double v24, v19, v19

    mul-double v24, v24, v2

    add-double v15, v24, v15

    mul-double v24, v4, v19

    mul-double v24, v24, v2

    add-double v17, v24, v17

    div-double v4, v4, v22

    add-double/2addr v4, v9

    div-double v19, v19, v22

    add-double v19, v19, v11

    goto :goto_1

    :goto_2
    const-wide/16 v2, 0x1

    add-long/2addr v7, v2

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, v7, v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-gez v0, :cond_2

    :goto_3
    move-wide v3, v1

    goto :goto_4

    :cond_2
    invoke-static {v13, v14}, Lz4/b;->a(D)D

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    div-double v3, v17, v13

    :goto_4
    if-gez v0, :cond_4

    goto :goto_5

    :cond_4
    move-wide v1, v15

    :goto_5
    mul-double v17, v17, v17

    div-double v17, v17, v13

    sub-double v5, v15, v17

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Lz4/b;->i(DD)D

    move-result-wide v5

    sub-double v5, v1, v5

    div-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpg-double v2, v3, v7

    if-gez v2, :cond_5

    neg-double v0, v0

    :cond_5
    return-wide v0

    :cond_6
    new-instance v1, Lp4/d;

    sget-object v2, Lq4/c;->m1:Lq4/c;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    new-instance v2, Lp4/b;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lp4/b;-><init>(II)V

    throw v2
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lu4/a;->b:[I

    iget v1, p0, Lu4/a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lu4/a;->a:I

    aget p0, v0, v1

    return p0
.end method

.method public final c(I)V
    .locals 4

    iget v0, p0, Lu4/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lu4/a;->b:[I

    if-nez v1, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lu4/a;->b:[I

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-gt v2, v0, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lu4/a;->b:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lu4/a;->b:[I

    iget v1, p0, Lu4/a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu4/a;->a:I

    aput p1, v0, v1

    return-void
.end method
