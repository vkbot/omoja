.class public abstract Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public f(DDI)D
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lb4/a;->g(DI)D

    move-result-wide v4

    const-wide v6, 0x358dee7a4ad4b81fL    # 1.0E-50

    invoke-static {v4, v5, v6, v7}, Lz4/d;->a(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    move-wide v4, v6

    :cond_0
    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    move-wide v11, v9

    move v10, v8

    move-wide v8, v4

    :goto_0
    if-ge v10, v3, :cond_6

    invoke-virtual {v0, v1, v2, v10}, Lb4/a;->g(DI)D

    move-result-wide v13

    invoke-virtual {v0, v1, v2, v10}, Lb4/a;->h(DI)D

    move-result-wide v15

    mul-double/2addr v11, v15

    add-double/2addr v11, v13

    invoke-static {v11, v12, v6, v7}, Lz4/d;->a(DD)Z

    move-result v17

    if-eqz v17, :cond_1

    move-wide v11, v6

    :cond_1
    div-double/2addr v15, v4

    add-double v4, v15, v13

    invoke-static {v4, v5, v6, v7}, Lz4/d;->a(DD)Z

    move-result v13

    if-eqz v13, :cond_2

    move-wide v4, v6

    :cond_2
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v11, v13, v11

    mul-double v15, v4, v11

    mul-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v17

    if-nez v17, :cond_4

    sub-double/2addr v15, v13

    invoke-static/range {v15 .. v16}, Lz4/b;->a(D)D

    move-result-wide v13

    cmpg-double v13, v13, p3

    if-gez v13, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lp4/a;

    sget-object v3, Lq4/c;->d1:Lq4/c;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lp4/a;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    new-instance v0, Lp4/a;

    sget-object v3, Lq4/c;->c1:Lq4/c;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lp4/a;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    :goto_1
    if-ge v10, v3, :cond_7

    return-wide v8

    :cond_7
    new-instance v0, Lp4/h;

    sget-object v4, Lq4/c;->q1:Lq4/c;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v4, v3, v1}, Lp4/h;-><init>(Lq4/c;Ljava/lang/Integer;[Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract g(DI)D
.end method

.method public abstract h(DI)D
.end method

.method public hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
