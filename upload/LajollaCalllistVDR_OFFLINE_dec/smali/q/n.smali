.class public final Lq/n;
.super Lq/q;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Landroid/util/SparseArray;

.field public final i:Landroid/util/SparseArray;

.field public j:[F

.field public k:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1

    invoke-direct {p0}, Lq/q;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lq/n;->i:Landroid/util/SparseArray;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lq/n;->g:Ljava/lang/String;

    iput-object p2, p0, Lq/n;->h:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final b(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z
    .locals 10

    iget-object v0, p0, Lq/q;->a:Ly1/l;

    float-to-double v1, p1

    iget-object p1, p0, Lq/n;->j:[F

    invoke-virtual {v0, v1, v2, p1}, Ly1/l;->x0(D[F)V

    iget-object p1, p0, Lq/n;->j:[F

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget p1, p1, v1

    iget-wide v3, p0, Lq/q;->e:J

    sub-long v3, p2, v3

    iget v1, p0, Lq/q;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq/n;->g:Ljava/lang/String;

    invoke-virtual {p5, p4, v1}, Landroidx/appcompat/view/menu/i;->u(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p5

    iput p5, p0, Lq/q;->f:F

    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p5

    if-eqz p5, :cond_0

    iput v5, p0, Lq/q;->f:F

    :cond_0
    iget p5, p0, Lq/q;->f:F

    float-to-double v6, p5

    long-to-double v3, v3

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v3, v8

    float-to-double v8, v0

    mul-double/2addr v3, v8

    add-double/2addr v3, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v3, v6

    double-to-float p5, v3

    iput p5, p0, Lq/q;->f:F

    iput-wide p2, p0, Lq/q;->e:J

    const p2, 0x40c90fdb

    mul-float/2addr p5, p2

    float-to-double p2, p5

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    const/4 p3, 0x0

    iput-boolean p3, p0, Lq/q;->d:Z

    move p5, p3

    :goto_0
    iget-object v1, p0, Lq/n;->k:[F

    array-length v3, v1

    if-ge p5, v3, :cond_2

    iget-boolean v3, p0, Lq/q;->d:Z

    iget-object v4, p0, Lq/n;->j:[F

    aget v4, v4, p5

    float-to-double v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, p3

    :goto_1
    or-int/2addr v3, v6

    iput-boolean v3, p0, Lq/q;->d:Z

    mul-float/2addr v4, p2

    add-float/2addr v4, p1

    aput v4, v1, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lq/n;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt/b;

    iget-object p2, p0, Lq/n;->k:[F

    invoke-static {p1, p4, p2}, Ly1/l;->n1(Lt/b;Landroid/view/View;[F)V

    cmpl-float p1, v0, v5

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lq/q;->d:Z

    :cond_3
    iget-boolean p0, p0, Lq/q;->d:Z

    return p0
.end method

.method public final c(I)V
    .locals 14

    iget-object v0, p0, Lq/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/b;

    invoke-virtual {v3}, Lt/b;->c()I

    move-result v3

    new-array v4, v1, [D

    add-int/lit8 v5, v3, 0x2

    new-array v6, v5, [F

    iput-object v6, p0, Lq/n;->j:[F

    new-array v6, v3, [F

    iput-object v6, p0, Lq/n;->k:[F

    filled-new-array {v1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    move v6, v2

    :goto_0
    if-ge v6, v1, :cond_1

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt/b;

    iget-object v9, p0, Lq/n;->i:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    int-to-double v10, v7

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v10, v12

    aput-wide v10, v4, v6

    iget-object v7, p0, Lq/n;->j:[F

    invoke-virtual {v8, v7}, Lt/b;->b([F)V

    move v7, v2

    :goto_1
    iget-object v8, p0, Lq/n;->j:[F

    array-length v10, v8

    if-ge v7, v10, :cond_0

    aget-object v10, v5, v6

    aget v8, v8, v7

    float-to-double v11, v8

    aput-wide v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget-object v7, v5, v6

    aget v8, v9, v2

    float-to-double v10, v8

    aput-wide v10, v7, v3

    const/4 v8, 0x1

    add-int/lit8 v10, v3, 0x1

    aget v8, v9, v8

    float-to-double v8, v8

    aput-wide v8, v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v4, v5}, Ly1/l;->d0(I[D[[D)Ly1/l;

    move-result-object p1

    iput-object p1, p0, Lq/q;->a:Ly1/l;

    return-void
.end method
