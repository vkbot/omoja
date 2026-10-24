.class public final Lr4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[D

.field public final b:[I

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Lr4/c;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lr4/b;->k()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lr4/c;->a()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lr4/c;->getData()[[D

    move-result-object v2

    iput-object v2, v0, Lr4/g;->a:[[D

    new-array v2, v1, [I

    iput-object v2, v0, Lr4/g;->b:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lr4/g;->b:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Lr4/g;->c:Z

    iput-boolean v2, v0, Lr4/g;->d:Z

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_a

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    iget-object v6, v0, Lr4/g;->a:[[D

    aget-object v6, v6, v5

    aget-wide v7, v6, v4

    move v9, v2

    :goto_3
    if-ge v9, v5, :cond_1

    aget-wide v10, v6, v9

    iget-object v12, v0, Lr4/g;->a:[[D

    aget-object v12, v12, v9

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    aput-wide v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v7, v4

    move v8, v7

    :goto_4
    if-ge v7, v1, :cond_5

    iget-object v9, v0, Lr4/g;->a:[[D

    aget-object v9, v9, v7

    aget-wide v10, v9, v4

    move v12, v2

    :goto_5
    if-ge v12, v4, :cond_3

    aget-wide v13, v9, v12

    iget-object v15, v0, Lr4/g;->a:[[D

    aget-object v15, v15, v12

    aget-wide v15, v15, v4

    mul-double/2addr v13, v15

    sub-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_3
    aput-wide v10, v9, v4

    invoke-static {v10, v11}, Lz4/b;->a(D)D

    move-result-wide v12

    cmpl-double v9, v12, v5

    if-lez v9, :cond_4

    invoke-static {v10, v11}, Lz4/b;->a(D)D

    move-result-wide v5

    move v8, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lr4/g;->a:[[D

    aget-object v5, v5, v8

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Lz4/b;->a(D)D

    move-result-wide v5

    const-wide v9, 0x3da5fd7fe1796495L    # 1.0E-11

    cmpg-double v5, v5, v9

    if-gez v5, :cond_6

    iput-boolean v3, v0, Lr4/g;->d:Z

    goto :goto_8

    :cond_6
    if-eq v8, v4, :cond_8

    iget-object v5, v0, Lr4/g;->a:[[D

    aget-object v6, v5, v8

    aget-object v5, v5, v4

    move v7, v2

    :goto_6
    if-ge v7, v1, :cond_7

    aget-wide v9, v6, v7

    aget-wide v11, v5, v7

    aput-wide v11, v6, v7

    aput-wide v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lr4/g;->b:[I

    aget v6, v5, v8

    aget v7, v5, v4

    aput v7, v5, v8

    aput v6, v5, v4

    iget-boolean v5, v0, Lr4/g;->c:Z

    xor-int/2addr v5, v3

    iput-boolean v5, v0, Lr4/g;->c:Z

    :cond_8
    iget-object v5, v0, Lr4/g;->a:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    add-int/lit8 v7, v4, 0x1

    move v8, v7

    :goto_7
    if-ge v8, v1, :cond_9

    iget-object v9, v0, Lr4/g;->a:[[D

    aget-object v9, v9, v8

    aget-wide v10, v9, v4

    div-double/2addr v10, v5

    aput-wide v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move v4, v7

    goto/16 :goto_1

    :cond_a
    :goto_8
    return-void

    :cond_b
    new-instance v0, Lr4/i;

    invoke-virtual/range {p1 .. p1}, Lr4/c;->c()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lr4/c;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lr4/i;-><init>(II)V

    throw v0
.end method
