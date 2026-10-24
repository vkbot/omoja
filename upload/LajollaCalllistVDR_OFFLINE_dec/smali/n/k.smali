.class public final Ln/k;
.super Ln/f;
.source "SourceFile"


# instance fields
.field public u0:F

.field public v0:I

.field public w0:I

.field public x0:Ln/d;

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ln/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ln/k;->u0:F

    const/4 v0, -0x1

    iput v0, p0, Ln/k;->v0:I

    iput v0, p0, Ln/k;->w0:I

    iget-object v0, p0, Ln/f;->K:Ln/d;

    iput-object v0, p0, Ln/k;->x0:Ln/d;

    const/4 v0, 0x0

    iput v0, p0, Ln/k;->y0:I

    iget-object v1, p0, Ln/f;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Ln/f;->S:Ljava/util/ArrayList;

    iget-object v2, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ln/f;->R:[Ln/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ln/f;->R:[Ln/d;

    iget-object v3, p0, Ln/k;->x0:Ln/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 0

    iget-boolean p0, p0, Ln/k;->z0:Z

    return p0
.end method

.method public final D()Z
    .locals 0

    iget-boolean p0, p0, Ln/k;->z0:Z

    return p0
.end method

.method public final R(Ll/e;Z)V
    .locals 2

    iget-object p2, p0, Ln/f;->V:Ln/f;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ll/e;->n(Ln/d;)I

    move-result p1

    iget p2, p0, Ln/k;->y0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Ln/f;->a0:I

    iput v1, p0, Ln/f;->b0:I

    iget-object p1, p0, Ln/f;->V:Ln/f;

    invoke-virtual {p1}, Ln/f;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Ln/f;->M(I)V

    invoke-virtual {p0, v1}, Ln/f;->P(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Ln/f;->a0:I

    iput p1, p0, Ln/f;->b0:I

    iget-object p1, p0, Ln/f;->V:Ln/f;

    invoke-virtual {p1}, Ln/f;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Ln/f;->P(I)V

    invoke-virtual {p0, v1}, Ln/f;->M(I)V

    :goto_0
    return-void
.end method

.method public final S(I)V
    .locals 1

    iget-object v0, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {v0, p1}, Ln/d;->l(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln/k;->z0:Z

    return-void
.end method

.method public final T(I)V
    .locals 3

    iget v0, p0, Ln/k;->y0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ln/k;->y0:I

    iget-object p1, p0, Ln/f;->S:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Ln/k;->y0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln/f;->J:Ln/d;

    iput-object v0, p0, Ln/k;->x0:Ln/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ln/f;->K:Ln/d;

    iput-object v0, p0, Ln/k;->x0:Ln/d;

    :goto_0
    iget-object v0, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ln/f;->R:[Ln/d;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ln/k;->x0:Ln/d;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(Ll/e;Z)V
    .locals 7

    iget-object p2, p0, Ln/f;->V:Ln/f;

    check-cast p2, Ln/g;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v1

    iget-object v2, p0, Ln/f;->V:Ln/f;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v5, p0, Ln/k;->y0:I

    if-nez v5, :cond_3

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v1

    iget-object p2, p0, Ln/f;->V:Ln/f;

    if-eqz p2, :cond_2

    iget-object p2, p2, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v3

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, Ln/k;->z0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Ln/k;->x0:Ln/d;

    iget-boolean v6, p2, Ln/d;->c:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    iget-object v6, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {v6}, Ln/d;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Ll/e;->d(Ll/i;I)V

    iget v6, p0, Ln/k;->v0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Ln/k;->w0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Ln/k;->z0:Z

    return-void

    :cond_6
    iget p2, p0, Ln/k;->v0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {p1, p2}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    iget p0, p0, Ln/k;->v0:I

    invoke-virtual {p1, p2, v0, p0, v6}, Ll/e;->e(Ll/i;Ll/i;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v4, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Ln/k;->w0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {p1, p2}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    iget p0, p0, Ln/k;->w0:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v1, p0, v6}, Ll/e;->e(Ll/i;Ll/i;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v4, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Ln/k;->u0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Ln/k;->x0:Ln/d;

    invoke-virtual {p1, p2}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    iget p0, p0, Ln/k;->u0:F

    invoke-virtual {p1}, Ll/e;->l()Ll/c;

    move-result-object v2

    iget-object v3, v2, Ll/c;->d:Ll/b;

    invoke-interface {v3, p2, v0}, Ll/b;->e(Ll/i;F)V

    iget-object p2, v2, Ll/c;->d:Ll/b;

    invoke-interface {p2, v1, p0}, Ll/b;->e(Ll/i;F)V

    invoke-virtual {p1, v2}, Ll/e;->c(Ll/c;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Ln/f;Ljava/util/HashMap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ln/f;->h(Ln/f;Ljava/util/HashMap;)V

    check-cast p1, Ln/k;

    iget p2, p1, Ln/k;->u0:F

    iput p2, p0, Ln/k;->u0:F

    iget p2, p1, Ln/k;->v0:I

    iput p2, p0, Ln/k;->v0:I

    iget p2, p1, Ln/k;->w0:I

    iput p2, p0, Ln/k;->w0:I

    iget p1, p1, Ln/k;->y0:I

    invoke-virtual {p0, p1}, Ln/k;->T(I)V

    return-void
.end method

.method public final k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;
    .locals 2

    sget-object v0, Ln/j;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Ln/k;->y0:I

    if-nez p1, :cond_2

    iget-object p0, p0, Ln/k;->x0:Ln/d;

    return-object p0

    :cond_1
    iget p1, p0, Ln/k;->y0:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Ln/k;->x0:Ln/d;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
