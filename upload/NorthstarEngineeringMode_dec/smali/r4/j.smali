.class public final Lr4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[D

.field public final b:[D

.field public final c:D


# direct methods
.method public constructor <init>(Lr4/c;D)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lr4/j;->c:D

    invoke-virtual/range {p1 .. p1}, Lr4/c;->c()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lr4/c;->a()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lr4/b;->m()Lr4/k;

    move-result-object v3

    invoke-interface {v3}, Lr4/k;->getData()[[D

    move-result-object v3

    iput-object v3, v0, Lr4/j;->a:[[D

    sget-object v4, Lz4/b;->a:[[D

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-array v1, v1, [D

    iput-object v1, v0, Lr4/j;->b:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v4, v3

    aget-object v5, v3, v1

    array-length v5, v5

    sget-object v6, Lz4/b;->a:[[D

    if-gt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    if-ge v2, v4, :cond_7

    aget-object v4, v3, v2

    const-wide/16 v5, 0x0

    move v7, v2

    move-wide v8, v5

    :goto_3
    array-length v10, v4

    if-ge v7, v10, :cond_2

    aget-wide v10, v4, v7

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    aget-wide v10, v4, v2

    cmpl-double v7, v10, v5

    if-lez v7, :cond_3

    sget-object v7, Lz4/b;->a:[[D

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    goto :goto_4

    :cond_3
    sget-object v7, Lz4/b;->a:[[D

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    :goto_4
    iget-object v9, v0, Lr4/j;->b:[D

    aput-wide v7, v9, v2

    cmpl-double v9, v7, v5

    if-eqz v9, :cond_6

    aget-wide v9, v4, v2

    sub-double/2addr v9, v7

    aput-wide v9, v4, v2

    add-int/lit8 v9, v2, 0x1

    :goto_5
    array-length v10, v3

    if-ge v9, v10, :cond_6

    aget-object v10, v3, v9

    move v11, v2

    move-wide v12, v5

    :goto_6
    array-length v14, v10

    if-ge v11, v14, :cond_4

    aget-wide v14, v10, v11

    aget-wide v16, v4, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_4
    aget-wide v14, v4, v2

    mul-double/2addr v14, v7

    div-double/2addr v12, v14

    move v11, v2

    :goto_7
    array-length v14, v10

    if-ge v11, v14, :cond_5

    aget-wide v14, v10, v11

    aget-wide v16, v4, v11

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
