.class public final Lt4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lt4/c;->a:[D

    return-void

    :array_0
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        -0x4102df75a56ed1ceL    # -2.777777777777778E-5
        0x3e754ded3ddad442L    # 7.936507936507937E-8
        -0x41fb8c3af7d1c398L    # -5.952380952380953E-10
        0x3da282a2cf083a98L
        -0x42b5036195bc49f6L    # -1.917526917518546E-13
        0x3cfcde85bfe7ab89L    # 6.410256405103255E-15
        -0x434ab4ddf135a5f4L
        0x3c74b6258b42ee9bL    # 1.7964371635940225E-17
        -0x43c65119190af537L    # -1.3922896466162779E-18
        0x3c03beedcf2f631eL    # 1.338028550140209E-19
        -0x442dca334d9339b1L    # -1.542460098679661E-20
        0x3ba2ac241095f5ffL    # 1.9770199298095743E-21
        -0x448e5082f787f436L
        0x3b34b6f6d66e9efaL    # 1.713480149663986E-23
    .end array-data
.end method

.method public static a(DD)D
    .locals 16

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    cmpl-double v0, p0, p2

    if-gtz v0, :cond_3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, p2, v2

    const/4 v4, 0x1

    if-ltz v0, :cond_2

    div-double v5, p0, p2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double v9, v5, v7

    div-double/2addr v5, v9

    div-double v9, v7, v9

    mul-double v11, v9, v9

    const/16 v0, 0xf

    new-array v13, v0, [D

    aput-wide v7, v13, v1

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v1, v4, -0x1

    aget-wide v14, v13, v1

    mul-double/2addr v14, v11

    add-double/2addr v14, v9

    add-double/2addr v14, v7

    aput-wide v14, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    div-double v2, v2, p2

    mul-double/2addr v2, v2

    sget-object v0, Lt4/c;->a:[D

    const/16 v1, 0xe

    aget-wide v7, v0, v1

    aget-wide v9, v13, v1

    mul-double/2addr v7, v9

    const/16 v1, 0xd

    :goto_1
    if-ltz v1, :cond_1

    mul-double/2addr v7, v2

    aget-wide v9, v0, v1

    aget-wide v11, v13, v1

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    mul-double/2addr v7, v5

    div-double v7, v7, p2

    return-wide v7

    :cond_2
    new-instance v0, Lp4/m;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lp4/m;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    :cond_3
    new-instance v0, Lp4/n;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lp4/n;-><init>(Ljava/lang/Double;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static b(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_2

    cmpg-double v0, p0, p2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-gtz v0, :cond_0

    sub-double v0, p0, v1

    add-double/2addr v0, p2

    invoke-static {p0, p1, p2, p3}, Lt4/c;->a(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    sub-double v0, p2, v1

    add-double/2addr v0, p0

    invoke-static {p2, p3, p0, p1}, Lt4/c;->a(DD)D

    move-result-wide v2

    :goto_0
    div-double v4, p0, p2

    invoke-static {v4, v5}, Lz4/b;->h(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lz4/b;->g(D[D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v0

    mul-double/2addr p2, p0

    cmpg-double p0, v4, p2

    if-gtz p0, :cond_1

    sub-double/2addr v2, v4

    sub-double/2addr v2, p2

    goto :goto_1

    :cond_1
    sub-double/2addr v2, p2

    sub-double/2addr v2, v4

    :goto_1
    return-wide v2

    :cond_2
    new-instance p0, Lp4/m;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Lp4/m;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_3
    new-instance p2, Lp4/m;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p0, p1, v3}, Lp4/m;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public static c(DD)D
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    cmpg-double v3, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    if-ltz v3, :cond_3

    cmpl-double v3, p0, v4

    if-gtz v3, :cond_3

    cmpg-double v3, p2, v0

    if-ltz v3, :cond_2

    cmpl-double v3, p2, v4

    if-gtz v3, :cond_2

    sub-double/2addr p0, v0

    sub-double/2addr p2, v0

    add-double/2addr p2, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, p2, p0

    if-gtz p0, :cond_0

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Lt4/e;->e(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x3ff8000000000000L    # 1.5

    cmpg-double p0, p2, p0

    if-gtz p0, :cond_1

    invoke-static {p2, p3}, Lt4/e;->e(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lz4/b;->h(D)D

    move-result-wide p2

    add-double/2addr p2, p0

    return-wide p2

    :cond_1
    sub-double p0, p2, v0

    invoke-static {p0, p1}, Lt4/e;->e(D)D

    move-result-wide p0

    add-double/2addr v0, p2

    mul-double/2addr v0, p2

    const/4 p2, 0x0

    invoke-static {v0, v1, p2}, Lz4/b;->g(D[D)D

    move-result-wide p2

    add-double/2addr p2, p0

    return-wide p2

    :cond_2
    new-instance p0, Lp4/n;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lp4/n;-><init>(Ljava/lang/Double;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_3
    new-instance p2, Lp4/n;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0, v2, v6}, Lp4/n;-><init>(Ljava/lang/Double;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public static d(DDD)D
    .locals 27

    move-wide/from16 v1, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1c

    const-wide/16 v13, 0x0

    cmpg-double v0, v1, v13

    if-ltz v0, :cond_1c

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v1, v15

    if-gtz v0, :cond_1c

    cmpg-double v0, v4, v13

    if-lez v0, :cond_1c

    cmpg-double v3, v6, v13

    if-gtz v3, :cond_0

    goto/16 :goto_c

    :cond_0
    add-double v17, v4, v15

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    add-double v21, v6, v19

    add-double v21, v21, v4

    div-double v17, v17, v21

    cmpl-double v17, v1, v17

    if-lez v17, :cond_1

    sub-double v17, v15, v1

    add-double v23, v6, v15

    div-double v23, v23, v21

    cmpg-double v21, v17, v23

    if-gtz v21, :cond_1

    move-wide/from16 v0, v17

    move-wide/from16 v2, p4

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lt4/c;->d(DDD)D

    move-result-wide v0

    sub-double v11, v15, v0

    goto/16 :goto_d

    :cond_1
    new-instance v11, Lt4/b;

    invoke-direct {v11, v6, v7, v4, v5}, Lt4/b;-><init>(DD)V

    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Lz4/b;->g(D[D)D

    move-result-wide v21

    mul-double v21, v21, v4

    neg-double v8, v1

    invoke-static {v8, v9}, Lz4/b;->h(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double v8, v8, v21

    invoke-static {v4, v5, v12}, Lz4/b;->g(D[D)D

    move-result-wide v21

    sub-double v8, v8, v21

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-nez v21, :cond_2

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-nez v21, :cond_2

    if-lez v0, :cond_2

    if-gtz v3, :cond_3

    :cond_2
    move-object v0, v11

    goto/16 :goto_a

    :cond_3
    cmpl-double v0, v4, v6

    const-wide/high16 v21, -0x8000000000000000L

    if-lez v0, :cond_5

    :cond_4
    move-object v0, v11

    move-wide v10, v6

    goto :goto_1

    :cond_5
    cmpg-double v3, v4, v6

    if-gez v3, :cond_6

    :goto_0
    move-object v0, v11

    move-wide v10, v4

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    move-object v0, v11

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_7
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v25

    cmp-long v0, v25, v21

    if-nez v0, :cond_4

    goto :goto_0

    :goto_1
    invoke-static/range {p2 .. p5}, Lz4/b;->i(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpl-double v7, v10, v5

    if-ltz v7, :cond_10

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    cmpg-double v19, v10, v5

    const/4 v13, 0x1

    if-ltz v19, :cond_f

    cmpg-double v14, v3, v5

    if-ltz v14, :cond_e

    cmpl-double v7, v10, v3

    if-lez v7, :cond_9

    :cond_8
    move-wide v13, v3

    goto :goto_3

    :cond_9
    cmpg-double v13, v10, v3

    if-gez v13, :cond_a

    :goto_2
    move-wide v13, v10

    goto :goto_3

    :cond_a
    if-eqz v7, :cond_b

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    goto :goto_3

    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v13

    cmp-long v7, v13, v21

    if-nez v7, :cond_8

    goto :goto_2

    :goto_3
    invoke-static {v10, v11, v3, v4}, Lz4/b;->i(DD)D

    move-result-wide v1

    div-double/2addr v5, v13

    mul-double/2addr v5, v5

    sget-object v7, Lt4/c;->a:[D

    const/16 v17, 0xe

    aget-wide v17, v7, v17

    const/16 v19, 0xd

    :goto_4
    if-ltz v19, :cond_c

    mul-double v17, v17, v5

    aget-wide v20, v7, v19

    add-double v17, v17, v20

    add-int/lit8 v19, v19, -0x1

    goto :goto_4

    :cond_c
    div-double v17, v17, v13

    invoke-static {v13, v14, v1, v2}, Lt4/c;->a(DD)D

    move-result-wide v1

    add-double v1, v1, v17

    div-double v5, v10, v3

    add-double v13, v5, v15

    div-double v13, v5, v13

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    sub-double v10, v10, v17

    neg-double v10, v10

    invoke-static {v13, v14, v12}, Lz4/b;->g(D[D)D

    move-result-wide v13

    mul-double/2addr v13, v10

    invoke-static {v5, v6}, Lz4/b;->h(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    cmpg-double v7, v13, v5

    const-wide v10, 0x3fed67f1c864beb4L    # 0.9189385332046727

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    if-gtz v7, :cond_d

    invoke-static {v3, v4, v12}, Lz4/b;->g(D[D)D

    move-result-wide v3

    mul-double v3, v3, v17

    add-double/2addr v3, v10

    add-double/2addr v3, v1

    sub-double/2addr v3, v13

    sub-double v11, v3, v5

    goto/16 :goto_b

    :cond_d
    invoke-static {v3, v4, v12}, Lz4/b;->g(D[D)D

    move-result-wide v3

    mul-double v3, v3, v17

    add-double/2addr v3, v10

    add-double/2addr v3, v1

    sub-double/2addr v3, v5

    sub-double v11, v3, v13

    goto/16 :goto_b

    :cond_e
    new-instance v0, Lp4/m;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v7, v13}, Lp4/m;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    :cond_f
    new-instance v0, Lp4/m;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v7, v13}, Lp4/m;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    :cond_10
    cmpl-double v1, v10, v19

    if-lez v1, :cond_16

    const-wide v1, 0x408f400000000000L    # 1000.0

    cmpl-double v1, v3, v1

    if-lez v1, :cond_12

    sub-double v1, v10, v15

    invoke-static {v1, v2}, Lz4/b;->f(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    move-wide v5, v15

    :goto_5
    if-ge v2, v1, :cond_11

    sub-double/2addr v10, v15

    div-double v13, v10, v3

    add-double/2addr v13, v15

    div-double v13, v10, v13

    mul-double/2addr v5, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    invoke-static {v5, v6, v12}, Lz4/b;->g(D[D)D

    move-result-wide v5

    int-to-double v1, v1

    invoke-static {v3, v4, v12}, Lz4/b;->g(D[D)D

    move-result-wide v12

    mul-double/2addr v12, v1

    sub-double/2addr v5, v12

    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v1

    invoke-static {v10, v11, v3, v4}, Lt4/c;->b(DD)D

    move-result-wide v3

    add-double/2addr v3, v1

    add-double v11, v3, v5

    goto/16 :goto_b

    :cond_12
    move-wide v1, v15

    :goto_6
    cmpl-double v7, v10, v19

    if-lez v7, :cond_13

    sub-double/2addr v10, v15

    div-double v13, v10, v3

    add-double v17, v13, v15

    div-double v13, v13, v17

    mul-double/2addr v1, v13

    goto :goto_6

    :cond_13
    cmpg-double v5, v3, v5

    if-gez v5, :cond_15

    move-wide v5, v15

    :goto_7
    cmpl-double v7, v3, v19

    if-lez v7, :cond_14

    sub-double/2addr v3, v15

    add-double v13, v10, v3

    div-double v13, v3, v13

    mul-double/2addr v5, v13

    goto :goto_7

    :cond_14
    invoke-static {v1, v2, v12}, Lz4/b;->g(D[D)D

    move-result-wide v1

    invoke-static {v5, v6, v12}, Lz4/b;->g(D[D)D

    move-result-wide v5

    add-double/2addr v5, v1

    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Lt4/e;->d(D)D

    move-result-wide v12

    invoke-static {v10, v11, v3, v4}, Lt4/c;->c(DD)D

    move-result-wide v3

    sub-double/2addr v12, v3

    add-double/2addr v12, v1

    add-double v11, v12, v5

    goto/16 :goto_b

    :cond_15
    invoke-static {v1, v2, v12}, Lz4/b;->g(D[D)D

    move-result-wide v1

    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v5

    add-double/2addr v5, v1

    invoke-static {v10, v11, v3, v4}, Lt4/c;->b(DD)D

    move-result-wide v1

    add-double v11, v1, v5

    goto/16 :goto_b

    :cond_16
    cmpl-double v1, v10, v15

    if-ltz v1, :cond_1a

    cmpl-double v1, v3, v19

    if-lez v1, :cond_19

    cmpg-double v1, v3, v5

    if-gez v1, :cond_18

    move-wide v1, v15

    :goto_8
    cmpl-double v5, v3, v19

    if-lez v5, :cond_17

    sub-double/2addr v3, v15

    add-double v5, v10, v3

    div-double v5, v3, v5

    mul-double/2addr v1, v5

    goto :goto_8

    :cond_17
    invoke-static {v1, v2, v12}, Lz4/b;->g(D[D)D

    move-result-wide v1

    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Lt4/e;->d(D)D

    move-result-wide v12

    invoke-static {v10, v11, v3, v4}, Lt4/c;->c(DD)D

    move-result-wide v3

    sub-double/2addr v12, v3

    add-double/2addr v12, v5

    add-double v11, v12, v1

    goto :goto_b

    :cond_18
    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v1

    invoke-static {v10, v11, v3, v4}, Lt4/c;->b(DD)D

    move-result-wide v3

    :goto_9
    add-double v11, v3, v1

    goto :goto_b

    :cond_19
    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Lt4/e;->d(D)D

    move-result-wide v5

    add-double/2addr v5, v1

    invoke-static {v10, v11, v3, v4}, Lt4/c;->c(DD)D

    move-result-wide v1

    sub-double v11, v5, v1

    goto :goto_b

    :cond_1a
    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1b

    invoke-static {v10, v11}, Lt4/e;->d(D)D

    move-result-wide v1

    invoke-static {v10, v11, v3, v4}, Lt4/c;->b(DD)D

    move-result-wide v3

    goto :goto_9

    :cond_1b
    invoke-static {v10, v11}, Lt4/e;->a(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Lt4/e;->a(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    add-double/2addr v10, v3

    invoke-static {v10, v11}, Lt4/e;->a(D)D

    move-result-wide v1

    div-double/2addr v5, v1

    invoke-static {v5, v6, v12}, Lz4/b;->g(D[D)D

    move-result-wide v11

    goto :goto_b

    :goto_a
    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    :goto_b
    sub-double/2addr v8, v11

    const-wide/16 v1, 0x0

    invoke-static {v8, v9, v1, v2}, Lz4/b;->e(DD)D

    move-result-wide v1

    mul-double v6, v1, v15

    move-wide/from16 v1, p0

    const-wide v3, 0x3d06849b86a12b9bL    # 1.0E-14

    const v5, 0x7fffffff

    invoke-virtual/range {v0 .. v5}, Lb4/a;->f(DDI)D

    move-result-wide v0

    div-double v11, v6, v0

    goto :goto_d

    :cond_1c
    :goto_c
    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    :goto_d
    return-wide v11
.end method
