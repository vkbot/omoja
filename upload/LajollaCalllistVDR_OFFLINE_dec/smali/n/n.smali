.class public final Ln/n;
.super Ln/o;
.source "SourceFile"


# virtual methods
.method public final U(IIII)V
    .locals 5

    iget v0, p0, Ln/o;->A0:I

    iget v1, p0, Ln/o;->B0:I

    iget v2, p0, Ln/o;->w0:I

    iget v3, p0, Ln/o;->x0:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    add-int/2addr v0, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Ln/m;->v0:I

    if-lez v3, :cond_0

    iget-object v3, p0, Ln/m;->u0:[Ln/f;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ln/f;->s()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Ln/m;->u0:[Ln/f;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ln/f;->m()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget v3, p0, Ln/f;->d0:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, p0, Ln/f;->e0:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    if-ne p3, v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne p3, v3, :cond_5

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    move p4, v2

    goto :goto_1

    :cond_6
    move p4, v1

    :goto_1
    iput p2, p0, Ln/o;->D0:I

    iput p4, p0, Ln/o;->E0:I

    invoke-virtual {p0, p2}, Ln/f;->P(I)V

    invoke-virtual {p0, p4}, Ln/f;->M(I)V

    iget p1, p0, Ln/m;->v0:I

    if-lez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Ln/o;->C0:Z

    return-void
.end method

.method public final c(Ll/e;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Ln/f;->c(Ll/e;Z)V

    iget p1, p0, Ln/m;->v0:I

    if-lez p1, :cond_0

    iget-object p1, p0, Ln/m;->u0:[Ln/f;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ln/f;->F()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p1, Ln/f;->g0:F

    iput v0, p1, Ln/f;->f0:F

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0, p0, v0, p2}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0, p0, v0, p2}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0, p0, v0, p2}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0, p0, v0, p2}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :cond_0
    return-void
.end method
