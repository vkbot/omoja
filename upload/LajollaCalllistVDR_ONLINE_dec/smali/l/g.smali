.class public final Ll/g;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final x:[D

.field public final y:[[D

.field public final z:[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    array-length v0, p1

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    new-array v2, v1, [D

    iput-object v2, p0, Ll/g;->z:[D

    iput-object p1, p0, Ll/g;->x:[D

    iput-object p2, p0, Ll/g;->y:[[D

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p2, v3

    aget-wide v5, v4, v0

    if-lez v3, :cond_0

    sub-double v1, v5, v1

    invoke-static {v1, v2, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v5

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final s0(D)D
    .locals 11

    iget-object v0, p0, Ll/g;->x:[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    iget-object v6, p0, Ll/g;->y:[[D

    if-gtz v5, :cond_0

    aget-object v0, v6, v2

    aget-wide v1, v0, v2

    sub-double/2addr p1, v3

    invoke-virtual {p0, v3, v4}, Ll/g;->v0(D)D

    move-result-wide v3

    :goto_0
    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    return-wide v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-wide v3, v0, v1

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_1

    aget-object v0, v6, v1

    aget-wide v1, v0, v2

    sub-double/2addr p1, v3

    invoke-virtual {p0, v3, v4}, Ll/g;->v0(D)D

    move-result-wide v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-wide v4, v0, v3

    cmpl-double v7, p1, v4

    if-nez v7, :cond_2

    aget-object p1, v6, v3

    aget-wide v0, p1, v2

    return-wide v0

    :cond_2
    add-int/lit8 v7, v3, 0x1

    aget-wide v8, v0, v7

    cmpg-double v10, p1, v8

    if-gez v10, :cond_3

    sub-double/2addr v8, v4

    sub-double/2addr p1, v4

    div-double/2addr p1, v8

    aget-object v0, v6, v3

    aget-wide v3, v0, v2

    aget-object v0, v6, v7

    aget-wide v1, v0, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double/2addr v5, v3

    mul-double/2addr v1, p1

    add-double/2addr v1, v5

    return-wide v1

    :cond_3
    move v3, v7

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final t0(D[D)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Ll/g;->x:[D

    array-length v2, v1

    iget-object v3, v0, Ll/g;->y:[[D

    const/4 v4, 0x0

    aget-object v5, v3, v4

    array-length v5, v5

    aget-wide v6, v1, v4

    cmpg-double v8, p1, v6

    iget-object v9, v0, Ll/g;->z:[D

    if-gtz v8, :cond_1

    invoke-virtual {p0, v6, v7, v9}, Ll/g;->w0(D[D)V

    move v2, v4

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v3, v4

    aget-wide v7, v6, v2

    aget-wide v10, v1, v4

    sub-double v10, p1, v10

    aget-wide v12, v9, v2

    mul-double/2addr v10, v12

    add-double/2addr v10, v7

    aput-wide v10, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v6, v2, -0x1

    aget-wide v7, v1, v6

    cmpl-double v10, p1, v7

    if-ltz v10, :cond_3

    invoke-virtual {p0, v7, v8, v9}, Ll/g;->w0(D[D)V

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v6

    aget-wide v7, v2, v4

    aget-wide v10, v1, v6

    sub-double v10, p1, v10

    aget-wide v12, v9, v4

    mul-double/2addr v10, v12

    add-double/2addr v10, v7

    aput-wide v10, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v6, v4

    :goto_2
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_7

    aget-wide v7, v1, v6

    cmpl-double v7, p1, v7

    if-nez v7, :cond_4

    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_4

    aget-object v8, v3, v6

    aget-wide v9, v8, v7

    aput-wide v9, p3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v6, 0x1

    aget-wide v8, v1, v7

    cmpg-double v10, p1, v8

    if-gez v10, :cond_6

    aget-wide v10, v1, v6

    sub-double/2addr v8, v10

    sub-double v1, p1, v10

    div-double/2addr v1, v8

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v8, v3, v6

    aget-wide v9, v8, v4

    aget-object v8, v3, v7

    aget-wide v11, v8, v4

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v1

    mul-double/2addr v13, v9

    mul-double/2addr v11, v1

    add-double/2addr v11, v13

    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final u0(D[F)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Ll/g;->x:[D

    array-length v2, v1

    iget-object v3, v0, Ll/g;->y:[[D

    const/4 v4, 0x0

    aget-object v5, v3, v4

    array-length v5, v5

    aget-wide v6, v1, v4

    cmpg-double v8, p1, v6

    iget-object v9, v0, Ll/g;->z:[D

    if-gtz v8, :cond_1

    invoke-virtual {p0, v6, v7, v9}, Ll/g;->w0(D[D)V

    move v2, v4

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v3, v4

    aget-wide v7, v6, v2

    aget-wide v10, v1, v4

    sub-double v10, p1, v10

    aget-wide v12, v9, v2

    mul-double/2addr v10, v12

    add-double/2addr v10, v7

    double-to-float v6, v10

    aput v6, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v1, v2

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_3

    invoke-virtual {p0, v6, v7, v9}, Ll/g;->w0(D[D)V

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v3, v2

    aget-wide v7, v6, v4

    aget-wide v10, v1, v2

    sub-double v10, p1, v10

    aget-wide v12, v9, v4

    mul-double/2addr v10, v12

    add-double/2addr v10, v7

    double-to-float v6, v10

    aput v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_7

    aget-wide v7, v1, v6

    cmpl-double v7, p1, v7

    if-nez v7, :cond_4

    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_4

    aget-object v8, v3, v6

    aget-wide v9, v8, v7

    double-to-float v8, v9

    aput v8, p3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v6, 0x1

    aget-wide v8, v1, v7

    cmpg-double v10, p1, v8

    if-gez v10, :cond_6

    aget-wide v10, v1, v6

    sub-double/2addr v8, v10

    sub-double v1, p1, v10

    div-double/2addr v1, v8

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v8, v3, v6

    aget-wide v9, v8, v4

    aget-object v8, v3, v7

    aget-wide v11, v8, v4

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v1

    mul-double/2addr v13, v9

    mul-double/2addr v11, v1

    add-double/2addr v11, v13

    double-to-float v8, v11

    aput v8, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final v0(D)D
    .locals 8

    iget-object v0, p0, Ll/g;->x:[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_0

    :goto_0
    move-wide p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v0, v3

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    move v3, v2

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, v0, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_2

    aget-wide p1, v0, v3

    sub-double/2addr v5, p1

    iget-object p1, p0, Ll/g;->y:[[D

    aget-object p2, p1, v3

    aget-wide v0, p2, v2

    aget-object p1, p1, v4

    aget-wide v2, p1, v2

    sub-double/2addr v2, v0

    div-double/2addr v2, v5

    return-wide v2

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final w0(D[D)V
    .locals 11

    iget-object v0, p0, Ll/g;->x:[D

    array-length v1, v0

    iget-object v2, p0, Ll/g;->y:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v4, v4

    aget-wide v5, v0, v3

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    :goto_0
    move-wide p1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v0, v5

    cmpl-double v7, p1, v5

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    move v5, v3

    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    aget-wide v7, v0, v6

    cmpg-double v9, p1, v7

    if-gtz v9, :cond_2

    aget-wide p1, v0, v5

    sub-double/2addr v7, p1

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object p1, v2, v5

    aget-wide v0, p1, v3

    aget-object p1, v2, v6

    aget-wide v9, p1, v3

    sub-double/2addr v9, v0

    div-double/2addr v9, v7

    aput-wide v9, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final y0()[D
    .locals 1

    iget-object v0, p0, Ll/g;->x:[D

    return-object v0
.end method
