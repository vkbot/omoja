.class public abstract Lm/o;
.super Lm/m;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:Z

.field public D0:I

.field public E0:I

.field public final F0:Ln/b;

.field public G0:Ln/h;

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm/o;->w0:I

    iput v0, p0, Lm/o;->x0:I

    iput v0, p0, Lm/o;->y0:I

    iput v0, p0, Lm/o;->z0:I

    iput v0, p0, Lm/o;->A0:I

    iput v0, p0, Lm/o;->B0:I

    iput-boolean v0, p0, Lm/o;->C0:Z

    iput v0, p0, Lm/o;->D0:I

    iput v0, p0, Lm/o;->E0:I

    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Lm/o;->F0:Ln/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lm/o;->G0:Ln/h;

    return-void
.end method


# virtual methods
.method public abstract U(IIII)V
.end method

.method public final V(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lm/o;->G0:Ln/h;

    if-nez v0, :cond_0

    iget-object v1, p0, Lm/f;->V:Lm/f;

    if-eqz v1, :cond_0

    check-cast v1, Lm/g;

    iget-object v0, v1, Lm/g;->y0:Ln/h;

    iput-object v0, p0, Lm/o;->G0:Ln/h;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm/o;->F0:Ln/b;

    iput-object p2, v1, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, v1, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, v1, Ln/b;->c:I

    iput p5, v1, Ln/b;->d:I

    invoke-virtual {v0, p1, v1}, Ln/h;->b(Lm/f;Ln/b;)V

    iget p2, v1, Ln/b;->e:I

    invoke-virtual {p1, p2}, Lm/f;->P(I)V

    iget p2, v1, Ln/b;->f:I

    invoke-virtual {p1, p2}, Lm/f;->M(I)V

    iget-boolean p2, v1, Ln/b;->h:Z

    iput-boolean p2, p1, Lm/f;->E:Z

    iget p2, v1, Ln/b;->g:I

    iput p2, p1, Lm/f;->c0:I

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p1, Lm/f;->E:Z

    return-void
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lm/m;->v0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lm/m;->u0:[Lm/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lm/f;->G:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
