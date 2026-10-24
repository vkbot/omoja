.class public abstract Ln/o;
.super Ln/m;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:Z

.field public D0:I

.field public E0:I

.field public final F0:Lo/b;

.field public G0:Lo/h;

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ln/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ln/o;->w0:I

    iput v0, p0, Ln/o;->x0:I

    iput v0, p0, Ln/o;->y0:I

    iput v0, p0, Ln/o;->z0:I

    iput v0, p0, Ln/o;->A0:I

    iput v0, p0, Ln/o;->B0:I

    iput-boolean v0, p0, Ln/o;->C0:Z

    iput v0, p0, Ln/o;->D0:I

    iput v0, p0, Ln/o;->E0:I

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    iput-object v0, p0, Ln/o;->F0:Lo/b;

    const/4 v0, 0x0

    iput-object v0, p0, Ln/o;->G0:Lo/h;

    return-void
.end method


# virtual methods
.method public abstract U(IIII)V
.end method

.method public final V(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Ln/o;->G0:Lo/h;

    if-nez v0, :cond_0

    iget-object v1, p0, Ln/f;->V:Ln/f;

    if-eqz v1, :cond_0

    check-cast v1, Ln/g;

    iget-object v0, v1, Ln/g;->y0:Lo/h;

    iput-object v0, p0, Ln/o;->G0:Lo/h;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln/o;->F0:Lo/b;

    iput-object p2, p0, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, p0, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, p0, Lo/b;->c:I

    iput p5, p0, Lo/b;->d:I

    invoke-virtual {v0, p1, p0}, Lo/h;->b(Ln/f;Lo/b;)V

    iget p2, p0, Lo/b;->e:I

    invoke-virtual {p1, p2}, Ln/f;->P(I)V

    iget p2, p0, Lo/b;->f:I

    invoke-virtual {p1, p2}, Ln/f;->M(I)V

    iget-boolean p2, p0, Lo/b;->h:Z

    iput-boolean p2, p1, Ln/f;->E:Z

    iget p0, p0, Lo/b;->g:I

    iput p0, p1, Ln/f;->c0:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, p1, Ln/f;->E:Z

    return-void
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln/m;->v0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ln/m;->u0:[Ln/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ln/f;->G:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
