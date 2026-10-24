.class public final Lg2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg2/w;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg2/w;->h:Ljava/util/ArrayList;

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lg2/w;->e(FFFF)V

    return-void
.end method


# virtual methods
.method public final a(FFFFFF)V
    .locals 4

    new-instance v0, Lg2/s;

    invoke-direct {v0, p1, p2, p3, p4}, Lg2/s;-><init>(FFFF)V

    iput p5, v0, Lg2/s;->f:F

    iput p6, v0, Lg2/s;->g:F

    iget-object v1, p0, Lg2/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg2/q;

    invoke-direct {v1, v0}, Lg2/q;-><init>(Lg2/s;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {p0, p5}, Lg2/w;->b(F)V

    iget-object p5, p0, Lg2/w;->h:Ljava/util/ArrayList;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lg2/w;->e:F

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float/2addr p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr p3, v2

    add-float/2addr p3, p5

    iput p3, p0, Lg2/w;->c:F

    add-float p3, p2, p4

    mul-float/2addr p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p4, p1

    add-float/2addr p4, p3

    iput p4, p0, Lg2/w;->d:F

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget v0, p0, Lg2/w;->e:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lg2/s;

    iget v2, p0, Lg2/w;->c:F

    iget v3, p0, Lg2/w;->d:F

    invoke-direct {v1, v2, v3, v2, v3}, Lg2/s;-><init>(FFFF)V

    iget v2, p0, Lg2/w;->e:F

    iput v2, v1, Lg2/s;->f:F

    iput v0, v1, Lg2/s;->g:F

    iget-object v0, p0, Lg2/w;->h:Ljava/util/ArrayList;

    new-instance v2, Lg2/q;

    invoke-direct {v2, v1}, Lg2/q;-><init>(Lg2/s;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lg2/w;->e:F

    return-void
.end method

.method public final c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4

    iget-object v0, p0, Lg2/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg2/u;

    invoke-virtual {v3, p1, p2}, Lg2/u;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(FF)V
    .locals 4

    new-instance v0, Lg2/t;

    invoke-direct {v0}, Lg2/t;-><init>()V

    iput p1, v0, Lg2/t;->b:F

    iput p2, v0, Lg2/t;->c:F

    iget-object v1, p0, Lg2/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg2/r;

    iget v2, p0, Lg2/w;->c:F

    iget v3, p0, Lg2/w;->d:F

    invoke-direct {v1, v0, v2, v3}, Lg2/r;-><init>(Lg2/t;FF)V

    invoke-virtual {v1}, Lg2/r;->b()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lg2/r;->b()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p0, v0}, Lg2/w;->b(F)V

    iget-object v0, p0, Lg2/w;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lg2/w;->e:F

    iput p1, p0, Lg2/w;->c:F

    iput p2, p0, Lg2/w;->d:F

    return-void
.end method

.method public final e(FFFF)V
    .locals 0

    iput p1, p0, Lg2/w;->a:F

    iput p2, p0, Lg2/w;->b:F

    iput p1, p0, Lg2/w;->c:F

    iput p2, p0, Lg2/w;->d:F

    iput p3, p0, Lg2/w;->e:F

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    iput p3, p0, Lg2/w;->f:F

    iget-object p1, p0, Lg2/w;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lg2/w;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
