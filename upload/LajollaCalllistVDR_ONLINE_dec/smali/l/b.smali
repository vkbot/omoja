.class public final Ll/b;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final x:[D

.field public final y:[Ll/a;


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/slider/h;-><init>()V

    iput-object v1, v0, Ll/b;->x:[D

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Ll/a;

    iput-object v2, v0, Ll/b;->y:[Ll/a;

    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    iget-object v7, v0, Ll/b;->y:[Ll/a;

    array-length v8, v7

    if-ge v4, v8, :cond_4

    aget v8, p1, v4

    const/4 v9, 0x3

    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_2

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v3, :cond_2

    :cond_1
    move v5, v10

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v9

    :goto_2
    new-instance v22, Ll/a;

    aget-wide v10, v1, v4

    add-int/lit8 v23, v4, 0x1

    aget-wide v12, v1, v23

    aget-object v8, p3, v4

    aget-wide v14, v8, v2

    aget-wide v16, v8, v3

    aget-object v8, p3, v23

    aget-wide v18, v8, v2

    aget-wide v20, v8, v3

    move-object/from16 v8, v22

    move v9, v6

    invoke-direct/range {v8 .. v21}, Ll/a;-><init>(IDDDDDD)V

    aput-object v22, v7, v4

    move/from16 v4, v23

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final s0(D)D
    .locals 6

    iget-object v0, p0, Ll/b;->y:[Ll/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v3, v2, Ll/a;->c:D

    cmpg-double v5, p1, v3

    if-gez v5, :cond_1

    sub-double/2addr p1, v3

    iget-boolean v5, v2, Ll/a;->r:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Ll/a;->c(D)D

    move-result-wide v2

    aget-object v0, v0, v1

    iget-wide v0, v0, Ll/a;->l:D

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    return-wide p1

    :cond_0
    invoke-virtual {v2, v3, v4}, Ll/a;->g(D)V

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ll/a;->e()D

    move-result-wide v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ll/a;->a()D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    return-wide v0

    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget-wide v1, v1, Ll/a;->d:D

    sub-double/2addr p1, v1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v4, v0, v3

    invoke-virtual {v4, v1, v2}, Ll/a;->c(D)D

    move-result-wide v1

    aget-object v0, v0, v3

    iget-wide v3, v0, Ll/a;->l:D

    mul-double/2addr p1, v3

    add-double/2addr p1, v1

    return-wide p1

    :cond_2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    iget-wide v3, v2, Ll/a;->d:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_4

    iget-boolean v3, v2, Ll/a;->r:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, p1, p2}, Ll/a;->c(D)D

    move-result-wide p1

    return-wide p1

    :cond_3
    invoke-virtual {v2, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v1

    invoke-virtual {p1}, Ll/a;->e()D

    move-result-wide p1

    return-wide p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public final t0(D[D)V
    .locals 11

    iget-object v0, p0, Ll/b;->y:[Ll/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v3, v2, Ll/a;->c:D

    cmpg-double v5, p1, v3

    const/4 v6, 0x1

    if-gez v5, :cond_1

    sub-double/2addr p1, v3

    iget-boolean v5, v2, Ll/a;->r:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Ll/a;->c(D)D

    move-result-wide v7

    aget-object v2, v0, v1

    iget-wide v9, v2, Ll/a;->l:D

    mul-double/2addr v9, p1

    add-double/2addr v9, v7

    aput-wide v9, p3, v1

    invoke-virtual {v2, v3, v4}, Ll/a;->d(D)D

    move-result-wide v2

    aget-object v0, v0, v1

    iget-wide v0, v0, Ll/a;->m:D

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    aput-wide p1, p3, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v4}, Ll/a;->g(D)V

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ll/a;->e()D

    move-result-wide v2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ll/a;->a()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    aput-wide v4, p3, v1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ll/a;->f()D

    move-result-wide v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ll/a;->b()D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    aput-wide v0, p3, v6

    :goto_0
    return-void

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    sub-double v4, p1, v2

    array-length v7, v0

    sub-int/2addr v7, v6

    aget-object v8, v0, v7

    iget-boolean v9, v8, Ll/a;->r:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8, v2, v3}, Ll/a;->c(D)D

    move-result-wide p1

    aget-object v8, v0, v7

    iget-wide v9, v8, Ll/a;->l:D

    mul-double/2addr v9, v4

    add-double/2addr v9, p1

    aput-wide v9, p3, v1

    invoke-virtual {v8, v2, v3}, Ll/a;->d(D)D

    move-result-wide p1

    aget-object v0, v0, v7

    iget-wide v0, v0, Ll/a;->m:D

    mul-double/2addr v4, v0

    add-double/2addr v4, p1

    aput-wide v4, p3, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v8, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v7

    invoke-virtual {p1}, Ll/a;->e()D

    move-result-wide p1

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ll/a;->a()D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v2, p1

    aput-wide v2, p3, v1

    aget-object p1, v0, v7

    invoke-virtual {p1}, Ll/a;->f()D

    move-result-wide p1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ll/a;->b()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, p1

    aput-wide v0, p3, v6

    :goto_1
    return-void

    :cond_3
    move v2, v1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_6

    aget-object v3, v0, v2

    iget-wide v4, v3, Ll/a;->d:D

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_5

    iget-boolean v4, v3, Ll/a;->r:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3, p1, p2}, Ll/a;->c(D)D

    move-result-wide v3

    aput-wide v3, p3, v1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Ll/a;->d(D)D

    move-result-wide p1

    aput-wide p1, p3, v6

    return-void

    :cond_4
    invoke-virtual {v3, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ll/a;->e()D

    move-result-wide p1

    aput-wide p1, p3, v1

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ll/a;->f()D

    move-result-wide p1

    aput-wide p1, p3, v6

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final u0(D[F)V
    .locals 11

    iget-object v0, p0, Ll/b;->y:[Ll/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v3, v2, Ll/a;->c:D

    cmpg-double v5, p1, v3

    const/4 v6, 0x1

    if-gez v5, :cond_1

    sub-double/2addr p1, v3

    iget-boolean v5, v2, Ll/a;->r:Z

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Ll/a;->c(D)D

    move-result-wide v7

    aget-object v2, v0, v1

    iget-wide v9, v2, Ll/a;->l:D

    mul-double/2addr v9, p1

    add-double/2addr v9, v7

    double-to-float v5, v9

    aput v5, p3, v1

    invoke-virtual {v2, v3, v4}, Ll/a;->d(D)D

    move-result-wide v2

    aget-object v0, v0, v1

    iget-wide v0, v0, Ll/a;->m:D

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    double-to-float p1, p1

    aput p1, p3, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v4}, Ll/a;->g(D)V

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ll/a;->e()D

    move-result-wide v2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ll/a;->a()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    double-to-float v2, v4

    aput v2, p3, v1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ll/a;->f()D

    move-result-wide v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ll/a;->b()D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    aput p1, p3, v6

    :goto_0
    return-void

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    sub-double v4, p1, v2

    array-length v7, v0

    sub-int/2addr v7, v6

    aget-object v8, v0, v7

    iget-boolean v9, v8, Ll/a;->r:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8, v2, v3}, Ll/a;->c(D)D

    move-result-wide p1

    aget-object v8, v0, v7

    iget-wide v9, v8, Ll/a;->l:D

    mul-double/2addr v9, v4

    add-double/2addr v9, p1

    double-to-float p1, v9

    aput p1, p3, v1

    invoke-virtual {v8, v2, v3}, Ll/a;->d(D)D

    move-result-wide p1

    aget-object v0, v0, v7

    iget-wide v0, v0, Ll/a;->m:D

    mul-double/2addr v4, v0

    add-double/2addr v4, p1

    double-to-float p1, v4

    aput p1, p3, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v8, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v7

    invoke-virtual {p1}, Ll/a;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    aget-object p1, v0, v7

    invoke-virtual {p1}, Ll/a;->f()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v6

    :goto_1
    return-void

    :cond_3
    move v2, v1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_6

    aget-object v3, v0, v2

    iget-wide v4, v3, Ll/a;->d:D

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_5

    iget-boolean v4, v3, Ll/a;->r:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3, p1, p2}, Ll/a;->c(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Ll/a;->d(D)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v6

    return-void

    :cond_4
    invoke-virtual {v3, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ll/a;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ll/a;->f()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v6

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final v0(D)D
    .locals 5

    iget-object v0, p0, Ll/b;->y:[Ll/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Ll/a;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-wide p1, p1, Ll/a;->d:D

    :cond_1
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    iget-wide v3, v2, Ll/a;->d:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_3

    iget-boolean v3, v2, Ll/a;->r:Z

    if-eqz v3, :cond_2

    iget-wide p1, v2, Ll/a;->l:D

    return-wide p1

    :cond_2
    invoke-virtual {v2, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v1

    invoke-virtual {p1}, Ll/a;->a()D

    move-result-wide p1

    return-wide p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public final w0(D[D)V
    .locals 8

    iget-object v0, p0, Ll/b;->y:[Ll/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Ll/a;->c:D

    cmpg-double v4, p1, v2

    const/4 v5, 0x1

    if-gez v4, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v5

    aget-object v2, v0, v2

    iget-wide v2, v2, Ll/a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    array-length p1, v0

    sub-int/2addr p1, v5

    aget-object p1, v0, p1

    iget-wide p1, p1, Ll/a;->d:D

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    iget-wide v6, v3, Ll/a;->d:D

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_3

    iget-boolean v4, v3, Ll/a;->r:Z

    if-eqz v4, :cond_2

    iget-wide p1, v3, Ll/a;->l:D

    aput-wide p1, p3, v1

    iget-wide p1, v3, Ll/a;->m:D

    aput-wide p1, p3, v5

    return-void

    :cond_2
    invoke-virtual {v3, p1, p2}, Ll/a;->g(D)V

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ll/a;->a()D

    move-result-wide p1

    aput-wide p1, p3, v1

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ll/a;->b()D

    move-result-wide p1

    aput-wide p1, p3, v5

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final y0()[D
    .locals 1

    iget-object v0, p0, Ll/b;->x:[D

    return-object v0
.end method
