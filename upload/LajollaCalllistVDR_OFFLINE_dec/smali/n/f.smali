.class public Ln/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:F

.field public C:[I

.field public D:F

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public final J:Ln/d;

.field public final K:Ln/d;

.field public final L:Ln/d;

.field public final M:Ln/d;

.field public final N:Ln/d;

.field public final O:Ln/d;

.field public final P:Ln/d;

.field public final Q:Ln/d;

.field public final R:[Ln/d;

.field public final S:Ljava/util/ArrayList;

.field public final T:[Z

.field public U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public V:Ln/f;

.field public W:I

.field public X:I

.field public Y:F

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Lo/c;

.field public b0:I

.field public c:Lo/c;

.field public c0:I

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/e;

.field public d0:I

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/g;

.field public e0:I

.field public final f:[Z

.field public f0:F

.field public g:Z

.field public g0:F

.field public h:I

.field public h0:Ljava/lang/Object;

.field public i:I

.field public i0:I

.field public j:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k:Z

.field public k0:Ljava/lang/String;

.field public l:Z

.field public l0:I

.field public m:Z

.field public m0:I

.field public n:Z

.field public final n0:[F

.field public o:I

.field public final o0:[Ln/f;

.field public p:I

.field public final p0:[Ln/f;

.field public q:I

.field public q0:Ln/f;

.field public r:I

.field public r0:Ln/f;

.field public s:I

.field public s0:I

.field public final t:[I

.field public t0:I

.field public u:I

.field public v:I

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ln/f;->a:Z

    const/4 v2, 0x0

    iput-object v2, v0, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iput-object v2, v0, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    iput-object v4, v0, Ln/f;->f:[Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Ln/f;->g:Z

    const/4 v5, -0x1

    iput v5, v0, Ln/f;->h:I

    iput v5, v0, Ln/f;->i:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-boolean v1, v0, Ln/f;->k:Z

    iput-boolean v1, v0, Ln/f;->l:Z

    iput-boolean v1, v0, Ln/f;->m:Z

    iput-boolean v1, v0, Ln/f;->n:Z

    iput v5, v0, Ln/f;->o:I

    iput v5, v0, Ln/f;->p:I

    iput v1, v0, Ln/f;->q:I

    iput v1, v0, Ln/f;->r:I

    iput v1, v0, Ln/f;->s:I

    new-array v6, v3, [I

    iput-object v6, v0, Ln/f;->t:[I

    iput v1, v0, Ln/f;->u:I

    iput v1, v0, Ln/f;->v:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Ln/f;->w:F

    iput v1, v0, Ln/f;->x:I

    iput v1, v0, Ln/f;->y:I

    iput v6, v0, Ln/f;->z:F

    iput v5, v0, Ln/f;->A:I

    iput v6, v0, Ln/f;->B:F

    const v6, 0x7fffffff

    filled-new-array {v6, v6}, [I

    move-result-object v6

    iput-object v6, v0, Ln/f;->C:[I

    const/4 v6, 0x0

    iput v6, v0, Ln/f;->D:F

    iput-boolean v1, v0, Ln/f;->E:Z

    iput-boolean v1, v0, Ln/f;->G:Z

    iput v1, v0, Ln/f;->H:I

    iput v1, v0, Ln/f;->I:I

    new-instance v13, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v13, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v13, v0, Ln/f;->J:Ln/d;

    new-instance v14, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v14, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v14, v0, Ln/f;->K:Ln/d;

    new-instance v15, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v15, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v15, v0, Ln/f;->L:Ln/d;

    new-instance v12, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v12, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v12, v0, Ln/f;->M:Ln/d;

    new-instance v11, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v11, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v11, v0, Ln/f;->N:Ln/d;

    new-instance v10, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v10, v0, Ln/f;->O:Ln/d;

    new-instance v9, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v9, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v9, v0, Ln/f;->P:Ln/d;

    new-instance v8, Ln/d;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v8, v0, v7}, Ln/d;-><init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v8, v0, Ln/f;->Q:Ln/d;

    move-object v7, v13

    move-object/from16 v16, v8

    move-object v8, v15

    move-object/from16 v17, v9

    move-object v9, v14

    move-object/from16 v18, v10

    move-object v10, v12

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    filled-new-array/range {v7 .. v12}, [Ln/d;

    move-result-object v7

    iput-object v7, v0, Ln/f;->R:[Ln/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Ln/f;->S:Ljava/util/ArrayList;

    new-array v8, v3, [Z

    iput-object v8, v0, Ln/f;->T:[Z

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    filled-new-array {v8, v8}, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    iput-object v8, v0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v0, Ln/f;->V:Ln/f;

    iput v1, v0, Ln/f;->W:I

    iput v1, v0, Ln/f;->X:I

    iput v6, v0, Ln/f;->Y:F

    iput v5, v0, Ln/f;->Z:I

    iput v1, v0, Ln/f;->a0:I

    iput v1, v0, Ln/f;->b0:I

    iput v1, v0, Ln/f;->c0:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Ln/f;->f0:F

    iput v6, v0, Ln/f;->g0:F

    iput v1, v0, Ln/f;->i0:I

    iput-object v2, v0, Ln/f;->j0:Ljava/lang/String;

    iput-object v2, v0, Ln/f;->k0:Ljava/lang/String;

    iput v1, v0, Ln/f;->l0:I

    iput v1, v0, Ln/f;->m0:I

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    iput-object v6, v0, Ln/f;->n0:[F

    new-array v6, v3, [Ln/f;

    aput-object v2, v6, v1

    aput-object v2, v6, v4

    iput-object v6, v0, Ln/f;->o0:[Ln/f;

    new-array v3, v3, [Ln/f;

    aput-object v2, v3, v1

    aput-object v2, v3, v4

    iput-object v3, v0, Ln/f;->p0:[Ln/f;

    iput-object v2, v0, Ln/f;->q0:Ln/f;

    iput-object v2, v0, Ln/f;->r0:Ln/f;

    iput v5, v0, Ln/f;->s0:I

    iput v5, v0, Ln/f;->t0:I

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static I(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static J(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static q(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :  {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      size"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      min"

    invoke-static {p3, v0, p1, p0}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      max"

    const p2, 0x7fffffff

    invoke-static {p4, p2, p1, p0}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchMin"

    invoke-static {p5, v0, p1, p0}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchDef"

    invoke-static {p6, v0, p1, p0}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchPercent"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p7, p2}, Ln/f;->J(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p1, "    },\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V
    .locals 2

    iget-object v0, p2, Ln/d;->f:Ln/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : [ \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Ln/d;->f:Ln/d;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Ln/d;->h:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    iget p1, p2, Ln/d;->g:I

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Ln/d;->g:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p2, Ln/d;->h:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Ln/d;->h:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, " ] ,\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget-object v0, p0, Ln/f;->K:Ln/d;

    iget-object v1, v0, Ln/d;->f:Ln/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln/d;->f:Ln/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Ln/f;->M:Ln/d;

    iget-object v0, p0, Ln/d;->f:Ln/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ln/d;->f:Ln/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Ln/f;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ln/f;->i0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Ln/f;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ln/f;->J:Ln/d;

    iget-boolean v0, v0, Ln/d;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln/f;->L:Ln/d;

    iget-boolean p0, p0, Ln/d;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Ln/f;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ln/f;->K:Ln/d;

    iget-boolean v0, v0, Ln/d;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln/f;->M:Ln/d;

    iget-boolean p0, p0, Ln/d;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public E()V
    .locals 6

    iget-object v0, p0, Ln/f;->J:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->K:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->L:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->M:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->N:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->O:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->P:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->Q:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln/f;->V:Ln/f;

    const/4 v1, 0x0

    iput v1, p0, Ln/f;->D:F

    const/4 v2, 0x0

    iput v2, p0, Ln/f;->W:I

    iput v2, p0, Ln/f;->X:I

    iput v1, p0, Ln/f;->Y:F

    const/4 v1, -0x1

    iput v1, p0, Ln/f;->Z:I

    iput v2, p0, Ln/f;->a0:I

    iput v2, p0, Ln/f;->b0:I

    iput v2, p0, Ln/f;->c0:I

    iput v2, p0, Ln/f;->d0:I

    iput v2, p0, Ln/f;->e0:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Ln/f;->f0:F

    iput v3, p0, Ln/f;->g0:F

    iget-object v3, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Ln/f;->h0:Ljava/lang/Object;

    iput v2, p0, Ln/f;->i0:I

    iput-object v0, p0, Ln/f;->k0:Ljava/lang/String;

    iput v2, p0, Ln/f;->l0:I

    iput v2, p0, Ln/f;->m0:I

    iget-object v0, p0, Ln/f;->n0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, Ln/f;->o:I

    iput v1, p0, Ln/f;->p:I

    iget-object v0, p0, Ln/f;->C:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, Ln/f;->r:I

    iput v2, p0, Ln/f;->s:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ln/f;->w:F

    iput v0, p0, Ln/f;->z:F

    iput v3, p0, Ln/f;->v:I

    iput v3, p0, Ln/f;->y:I

    iput v2, p0, Ln/f;->u:I

    iput v2, p0, Ln/f;->x:I

    iput v1, p0, Ln/f;->A:I

    iput v0, p0, Ln/f;->B:F

    iget-object v0, p0, Ln/f;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iput-boolean v2, p0, Ln/f;->G:Z

    iget-object v0, p0, Ln/f;->T:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    iput-boolean v5, p0, Ln/f;->g:Z

    iget-object v0, p0, Ln/f;->t:[I

    aput v2, v0, v2

    aput v2, v0, v5

    iput v1, p0, Ln/f;->h:I

    iput v1, p0, Ln/f;->i:I

    return-void
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ln/g;

    if-eqz v1, :cond_0

    check-cast v0, Ln/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Ln/f;->S:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/d;

    invoke-virtual {v2}, Ln/d;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final G()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/f;->k:Z

    iput-boolean v0, p0, Ln/f;->l:Z

    iput-boolean v0, p0, Ln/f;->m:Z

    iput-boolean v0, p0, Ln/f;->n:Z

    iget-object p0, p0, Ln/f;->S:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iput-boolean v0, v3, Ln/d;->c:Z

    iput v0, v3, Ln/d;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(Ll/d;)V
    .locals 0

    iget-object p1, p0, Ln/f;->J:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p1, p0, Ln/f;->K:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p1, p0, Ln/f;->L:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p1, p0, Ln/f;->M:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p1, p0, Ln/f;->N:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p1, p0, Ln/f;->Q:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p1, p0, Ln/f;->O:Ln/d;

    invoke-virtual {p1}, Ln/d;->k()V

    iget-object p0, p0, Ln/f;->P:Ln/d;

    invoke-virtual {p0}, Ln/d;->k()V

    return-void
.end method

.method public final K(II)V
    .locals 1

    iget-boolean v0, p0, Ln/f;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln/f;->J:Ln/d;

    invoke-virtual {v0, p1}, Ln/d;->l(I)V

    iget-object v0, p0, Ln/f;->L:Ln/d;

    invoke-virtual {v0, p2}, Ln/d;->l(I)V

    iput p1, p0, Ln/f;->a0:I

    sub-int/2addr p2, p1

    iput p2, p0, Ln/f;->W:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln/f;->k:Z

    return-void
.end method

.method public final L(II)V
    .locals 1

    iget-boolean v0, p0, Ln/f;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln/f;->K:Ln/d;

    invoke-virtual {v0, p1}, Ln/d;->l(I)V

    iget-object v0, p0, Ln/f;->M:Ln/d;

    invoke-virtual {v0, p2}, Ln/d;->l(I)V

    iput p1, p0, Ln/f;->b0:I

    sub-int/2addr p2, p1

    iput p2, p0, Ln/f;->X:I

    iget-boolean p2, p0, Ln/f;->E:Z

    if-eqz p2, :cond_1

    iget p2, p0, Ln/f;->c0:I

    add-int/2addr p1, p2

    iget-object p2, p0, Ln/f;->N:Ln/d;

    invoke-virtual {p2, p1}, Ln/d;->l(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Ln/f;->l:Z

    return-void
.end method

.method public final M(I)V
    .locals 1

    iput p1, p0, Ln/f;->X:I

    iget v0, p0, Ln/f;->e0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Ln/f;->X:I

    :cond_0
    return-void
.end method

.method public final N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    iget-object p0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method public final O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    iget-object p0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method

.method public final P(I)V
    .locals 1

    iput p1, p0, Ln/f;->W:I

    iget v0, p0, Ln/f;->d0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Ln/f;->W:I

    :cond_0
    return-void
.end method

.method public Q(ZZ)V
    .locals 7

    iget-object v0, p0, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Ln/f;->a0:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Ln/f;->b0:I

    :cond_3
    iget v2, p0, Ln/f;->i0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Ln/f;->W:I

    iput v6, p0, Ln/f;->X:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v6

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v2, :cond_5

    iget p1, p0, Ln/f;->W:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Ln/f;->W:I

    iget p1, p0, Ln/f;->d0:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Ln/f;->W:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_7

    iget p1, p0, Ln/f;->X:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Ln/f;->X:I

    iget p1, p0, Ln/f;->e0:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Ln/f;->X:I

    :cond_8
    return-void
.end method

.method public R(Ll/e;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ln/f;->J:Ln/d;

    invoke-static {p1}, Ll/e;->n(Ln/d;)I

    move-result p1

    iget-object v0, p0, Ln/f;->K:Ln/d;

    invoke-static {v0}, Ll/e;->n(Ln/d;)I

    move-result v0

    iget-object v1, p0, Ln/f;->L:Ln/d;

    invoke-static {v1}, Ll/e;->n(Ln/d;)I

    move-result v1

    iget-object v2, p0, Ln/f;->M:Ln/d;

    invoke-static {v2}, Ll/e;->n(Ln/d;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, Ln/f;->a0:I

    iput v0, p0, Ln/f;->b0:I

    iget p1, p0, Ln/f;->i0:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, Ln/f;->W:I

    iput v4, p0, Ln/f;->X:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p1, v4

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_5

    iget v3, p0, Ln/f;->W:I

    if-ge v1, v3, :cond_5

    move v1, v3

    :cond_5
    const/4 v3, 0x1

    aget-object p1, p1, v3

    if-ne p1, v0, :cond_6

    iget p1, p0, Ln/f;->X:I

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    iput v1, p0, Ln/f;->W:I

    iput v2, p0, Ln/f;->X:I

    iget p1, p0, Ln/f;->e0:I

    if-ge v2, p1, :cond_7

    iput p1, p0, Ln/f;->X:I

    :cond_7
    iget p1, p0, Ln/f;->d0:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Ln/f;->W:I

    :cond_8
    iget p1, p0, Ln/f;->v:I

    if-lez p1, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_9

    iget p2, p0, Ln/f;->W:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ln/f;->W:I

    :cond_9
    iget p1, p0, Ln/f;->y:I

    if-lez p1, :cond_a

    iget-object p2, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v3

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_a

    iget p2, p0, Ln/f;->X:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ln/f;->X:I

    :cond_a
    iget p1, p0, Ln/f;->W:I

    if-eq v1, p1, :cond_b

    iput p1, p0, Ln/f;->h:I

    :cond_b
    iget p1, p0, Ln/f;->X:I

    if-eq v2, p1, :cond_c

    iput p1, p0, Ln/f;->i:I

    :cond_c
    :goto_0
    return-void
.end method

.method public final b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Ly1/l;->v(Ln/g;Ll/e;Ln/f;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Ln/g;->X(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Ln/f;->c(Ll/e;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Ln/f;->J:Ln/d;

    iget-object p5, p5, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    iget-object v1, v0, Ln/d;->d:Ln/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ln/f;->b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ln/f;->L:Ln/d;

    iget-object p0, p0, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ln/d;

    iget-object v0, p5, Ln/d;->d:Ln/f;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ln/f;->b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Ln/f;->K:Ln/d;

    iget-object p5, p5, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    iget-object v1, v0, Ln/d;->d:Ln/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ln/f;->b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Ln/f;->M:Ln/d;

    iget-object p5, p5, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    iget-object v1, v0, Ln/d;->d:Ln/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ln/f;->b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Ln/f;->N:Ln/d;

    iget-object p0, p0, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ln/d;

    iget-object v0, p5, Ln/d;->d:Ln/f;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ln/f;->b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public c(Ll/e;Z)V
    .locals 63

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Ln/f;->J:Ln/d;

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v13

    iget-object v1, v15, Ln/f;->L:Ln/d;

    invoke-virtual {v14, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v12

    iget-object v2, v15, Ln/f;->K:Ln/d;

    invoke-virtual {v14, v2}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v11

    iget-object v10, v15, Ln/f;->M:Ln/d;

    invoke-virtual {v14, v10}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v9

    iget-object v8, v15, Ln/f;->N:Ln/d;

    invoke-virtual {v14, v8}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    iget-object v3, v15, Ln/f;->V:Ln/f;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v3, v4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    aget-object v3, v3, v5

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v4, v15, Ln/f;->q:I

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move/from16 v28, v3

    move/from16 v29, v6

    goto :goto_2

    :cond_2
    move/from16 v29, v6

    const/16 v28, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    move/from16 v28, v3

    const/16 v29, 0x0

    :goto_2
    iget v3, v15, Ln/f;->i0:I

    const/16 v6, 0x8

    iget-object v4, v15, Ln/f;->T:[Z

    if-ne v3, v6, :cond_9

    iget-object v3, v15, Ln/f;->S:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->a:Ljava/util/HashSet;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v22

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_9

    const/4 v3, 0x0

    aget-boolean v5, v4, v3

    if-nez v5, :cond_9

    const/4 v3, 0x1

    aget-boolean v5, v4, v3

    if-nez v5, :cond_9

    return-void

    :cond_9
    iget-boolean v3, v15, Ln/f;->k:Z

    if-nez v3, :cond_a

    iget-boolean v5, v15, Ln/f;->l:Z

    if-eqz v5, :cond_16

    :cond_a
    if-eqz v3, :cond_e

    iget v3, v15, Ln/f;->a0:I

    invoke-virtual {v14, v13, v3}, Ll/e;->d(Ll/i;I)V

    iget v3, v15, Ln/f;->a0:I

    iget v5, v15, Ln/f;->W:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v12, v3}, Ll/e;->d(Ll/i;I)V

    if-eqz v29, :cond_e

    iget-object v3, v15, Ln/f;->V:Ln/f;

    if-eqz v3, :cond_e

    check-cast v3, Ln/g;

    iget-object v5, v3, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Ln/d;->d()I

    move-result v5

    iget-object v6, v3, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/d;

    invoke-virtual {v6}, Ln/d;->d()I

    move-result v6

    if-le v5, v6, :cond_c

    :cond_b
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    :cond_c
    iget-object v5, v3, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Ln/d;->d()I

    move-result v5

    iget-object v6, v3, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/d;

    invoke-virtual {v6}, Ln/d;->d()I

    move-result v6

    if-le v5, v6, :cond_e

    :cond_d
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-boolean v3, v15, Ln/f;->l:Z

    if-eqz v3, :cond_15

    iget v3, v15, Ln/f;->b0:I

    invoke-virtual {v14, v11, v3}, Ll/e;->d(Ll/i;I)V

    iget v3, v15, Ln/f;->b0:I

    iget v5, v15, Ln/f;->X:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v9, v3}, Ll/e;->d(Ll/i;I)V

    iget-object v3, v8, Ln/d;->a:Ljava/util/HashSet;

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_11

    iget v3, v15, Ln/f;->b0:I

    iget v5, v15, Ln/f;->c0:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v7, v3}, Ll/e;->d(Ll/i;I)V

    :cond_11
    if-eqz v28, :cond_15

    iget-object v3, v15, Ln/f;->V:Ln/f;

    if-eqz v3, :cond_15

    check-cast v3, Ln/g;

    iget-object v5, v3, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v2}, Ln/d;->d()I

    move-result v5

    iget-object v6, v3, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/d;

    invoke-virtual {v6}, Ln/d;->d()I

    move-result v6

    if-le v5, v6, :cond_13

    :cond_12
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    :cond_13
    iget-object v5, v3, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v10}, Ln/d;->d()I

    move-result v5

    iget-object v6, v3, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/d;

    invoke-virtual {v6}, Ln/d;->d()I

    move-result v6

    if-le v5, v6, :cond_15

    :cond_14
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    :cond_15
    iget-boolean v3, v15, Ln/f;->k:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v15, Ln/f;->l:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    iput-boolean v3, v15, Ln/f;->k:Z

    iput-boolean v3, v15, Ln/f;->l:Z

    return-void

    :cond_16
    iget-object v6, v15, Ln/f;->f:[Z

    if-eqz p2, :cond_19

    iget-object v3, v15, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v3, :cond_19

    iget-object v5, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-eqz v5, :cond_19

    move-object/from16 v21, v4

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-object/from16 v22, v8

    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v8, :cond_1a

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_1a

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_1a

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_1a

    iget v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v13, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v12, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v11, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v9, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/g;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v7, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_18

    if-eqz v29, :cond_17

    const/4 v0, 0x0

    aget-boolean v1, v6, v0

    if-eqz v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Ln/f;->z()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v15, Ln/f;->V:Ln/f;

    iget-object v1, v1, Ln/f;->L:Ln/d;

    invoke-virtual {v14, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v14, v1, v12, v0, v2}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_17
    if-eqz v28, :cond_18

    const/4 v0, 0x1

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Ln/f;->A()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v15, Ln/f;->V:Ln/f;

    iget-object v0, v0, Ln/f;->M:Ln/d;

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v9, v2, v1}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_9

    :cond_18
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, v15, Ln/f;->k:Z

    iput-boolean v2, v15, Ln/f;->l:Z

    return-void

    :cond_19
    move-object/from16 v21, v4

    move-object/from16 v22, v8

    :cond_1a
    iget-object v3, v15, Ln/f;->V:Ln/f;

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ln/f;->y(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v15, Ln/f;->V:Ln/f;

    check-cast v4, Ln/g;

    invoke-virtual {v4, v3, v15}, Ln/g;->T(ILn/f;)V

    const/4 v3, 0x1

    goto :goto_a

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Ln/f;->z()Z

    move-result v3

    :goto_a
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Ln/f;->y(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v15, Ln/f;->V:Ln/f;

    check-cast v5, Ln/g;

    invoke-virtual {v5, v4, v15}, Ln/g;->T(ILn/f;)V

    const/4 v4, 0x1

    goto :goto_b

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ln/f;->A()Z

    move-result v4

    :goto_b
    if-nez v3, :cond_1d

    if-eqz v29, :cond_1d

    iget v5, v15, Ln/f;->i0:I

    const/16 v8, 0x8

    if-eq v5, v8, :cond_1d

    iget-object v5, v0, Ln/d;->f:Ln/d;

    if-nez v5, :cond_1d

    iget-object v5, v1, Ln/d;->f:Ln/d;

    if-nez v5, :cond_1d

    iget-object v5, v15, Ln/f;->V:Ln/f;

    iget-object v5, v5, Ln/f;->L:Ln/d;

    invoke-virtual {v14, v5}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v5

    move/from16 v23, v3

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v14, v5, v12, v3, v8}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_c

    :cond_1d
    move/from16 v23, v3

    :goto_c
    if-nez v4, :cond_1e

    if-eqz v28, :cond_1e

    iget v3, v15, Ln/f;->i0:I

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1e

    iget-object v3, v2, Ln/d;->f:Ln/d;

    if-nez v3, :cond_1e

    iget-object v3, v10, Ln/d;->f:Ln/d;

    if-nez v3, :cond_1e

    if-nez v22, :cond_1e

    iget-object v3, v15, Ln/f;->V:Ln/f;

    iget-object v3, v3, Ln/f;->M:Ln/d;

    invoke-virtual {v14, v3}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v14, v3, v9, v8, v5}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_1e
    move/from16 v30, v4

    move/from16 v31, v23

    goto :goto_d

    :cond_1f
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_d
    iget v3, v15, Ln/f;->W:I

    iget v4, v15, Ln/f;->d0:I

    if-ge v3, v4, :cond_20

    goto :goto_e

    :cond_20
    move v4, v3

    :goto_e
    iget v5, v15, Ln/f;->X:I

    iget v8, v15, Ln/f;->e0:I

    move/from16 v23, v4

    if-ge v5, v8, :cond_21

    goto :goto_f

    :cond_21
    move v8, v5

    :goto_f
    iget-object v4, v15, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v7

    const/16 v18, 0x0

    aget-object v7, v4, v18

    move-object/from16 v32, v11

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x1

    if-eq v7, v11, :cond_22

    const/16 v24, 0x1

    goto :goto_10

    :cond_22
    const/16 v24, 0x0

    :goto_10
    aget-object v4, v4, v19

    move/from16 v26, v8

    if-eq v4, v11, :cond_23

    const/16 v25, 0x1

    goto :goto_11

    :cond_23
    const/16 v25, 0x0

    :goto_11
    iget v8, v15, Ln/f;->Z:I

    iput v8, v15, Ln/f;->A:I

    move-object/from16 v33, v9

    iget v9, v15, Ln/f;->Y:F

    iput v9, v15, Ln/f;->B:F

    move-object/from16 v34, v6

    iget v6, v15, Ln/f;->r:I

    move-object/from16 v35, v12

    iget v12, v15, Ln/f;->s:I

    const/16 v36, 0x0

    cmpl-float v36, v9, v36

    move-object/from16 v37, v13

    if-lez v36, :cond_36

    iget v13, v15, Ln/f;->i0:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_36

    if-ne v7, v11, :cond_24

    if-nez v6, :cond_24

    const/4 v6, 0x3

    :cond_24
    if-ne v4, v11, :cond_25

    if-nez v12, :cond_25

    const/4 v12, 0x3

    :cond_25
    if-ne v7, v11, :cond_30

    if-ne v4, v11, :cond_30

    const/4 v13, 0x3

    if-ne v6, v13, :cond_30

    if-ne v12, v13, :cond_30

    const/4 v13, -0x1

    if-ne v8, v13, :cond_27

    if-eqz v24, :cond_26

    if-nez v25, :cond_26

    const/4 v3, 0x0

    iput v3, v15, Ln/f;->A:I

    goto :goto_12

    :cond_26
    if-nez v24, :cond_27

    if-eqz v25, :cond_27

    const/4 v3, 0x1

    iput v3, v15, Ln/f;->A:I

    if-ne v8, v13, :cond_27

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v13, v3, v9

    iput v13, v15, Ln/f;->B:F

    :cond_27
    :goto_12
    iget v3, v15, Ln/f;->A:I

    if-nez v3, :cond_29

    invoke-virtual {v2}, Ln/d;->h()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v10}, Ln/d;->h()Z

    move-result v3

    if-nez v3, :cond_29

    :cond_28
    const/4 v3, 0x1

    iput v3, v15, Ln/f;->A:I

    goto :goto_13

    :cond_29
    const/4 v3, 0x1

    iget v4, v15, Ln/f;->A:I

    if-ne v4, v3, :cond_2b

    invoke-virtual {v0}, Ln/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ln/d;->h()Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_2a
    const/4 v3, 0x0

    iput v3, v15, Ln/f;->A:I

    :cond_2b
    :goto_13
    iget v3, v15, Ln/f;->A:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2e

    invoke-virtual {v2}, Ln/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v10}, Ln/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v0}, Ln/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Ln/d;->h()Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2c
    invoke-virtual {v2}, Ln/d;->h()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v10}, Ln/d;->h()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    iput v2, v15, Ln/f;->A:I

    goto :goto_14

    :cond_2d
    invoke-virtual {v0}, Ln/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Ln/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, v15, Ln/f;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v13, v1, v0

    iput v13, v15, Ln/f;->B:F

    const/4 v0, 0x1

    iput v0, v15, Ln/f;->A:I

    :cond_2e
    :goto_14
    iget v0, v15, Ln/f;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    iget v0, v15, Ln/f;->u:I

    if-lez v0, :cond_2f

    iget v1, v15, Ln/f;->x:I

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    iput v1, v15, Ln/f;->A:I

    goto :goto_15

    :cond_2f
    if-nez v0, :cond_34

    iget v0, v15, Ln/f;->x:I

    if-lez v0, :cond_34

    iget v0, v15, Ln/f;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v13, v1, v0

    iput v13, v15, Ln/f;->B:F

    const/4 v0, 0x1

    iput v0, v15, Ln/f;->A:I

    goto :goto_15

    :cond_30
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ne v7, v11, :cond_32

    if-ne v6, v1, :cond_32

    const/4 v2, 0x0

    iput v2, v15, Ln/f;->A:I

    int-to-float v1, v5

    mul-float/2addr v9, v1

    float-to-int v1, v9

    if-eq v4, v11, :cond_31

    move v6, v0

    move v4, v1

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_31
    move v4, v1

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_32
    if-ne v4, v11, :cond_34

    if-ne v12, v1, :cond_34

    const/4 v1, 0x1

    iput v1, v15, Ln/f;->A:I

    const/4 v1, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v8, v1, :cond_33

    div-float v1, v13, v9

    iput v1, v15, Ln/f;->B:F

    :cond_33
    iget v1, v15, Ln/f;->B:F

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v8, v1

    move/from16 v4, v23

    if-eq v7, v11, :cond_35

    goto :goto_18

    :cond_34
    :goto_15
    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v4, v23

    :goto_16
    move/from16 v8, v26

    :cond_35
    move/from16 v41, v6

    move/from16 v39, v8

    move/from16 v40, v12

    const/16 v38, 0x1

    goto :goto_19

    :cond_36
    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v4, v23

    :goto_17
    move v0, v12

    move/from16 v8, v26

    :goto_18
    move/from16 v40, v0

    move/from16 v41, v6

    move/from16 v39, v8

    const/16 v38, 0x0

    :goto_19
    iget-object v0, v15, Ln/f;->t:[I

    const/4 v1, 0x0

    aput v41, v0, v1

    const/4 v1, 0x1

    aput v40, v0, v1

    if-eqz v38, :cond_38

    iget v0, v15, Ln/f;->A:I

    const/4 v1, -0x1

    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_39

    :cond_37
    const/16 v23, 0x1

    goto :goto_1a

    :cond_38
    const/4 v1, -0x1

    :cond_39
    const/16 v23, 0x0

    :goto_1a
    if-eqz v38, :cond_3b

    iget v0, v15, Ln/f;->A:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3a

    if-ne v0, v1, :cond_3b

    :cond_3a
    const/16 v36, 0x1

    goto :goto_1b

    :cond_3b
    const/16 v36, 0x0

    :goto_1b
    iget-object v0, v15, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v14, :cond_3c

    instance-of v0, v15, Ln/g;

    if-eqz v0, :cond_3c

    const/4 v9, 0x1

    goto :goto_1c

    :cond_3c
    const/4 v9, 0x0

    :goto_1c
    if-eqz v9, :cond_3d

    const/16 v16, 0x0

    goto :goto_1d

    :cond_3d
    move/from16 v16, v4

    :goto_1d
    iget-object v12, v15, Ln/f;->Q:Ln/d;

    invoke-virtual {v12}, Ln/d;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v42, v0, 0x1

    const/4 v0, 0x0

    aget-boolean v43, v21, v0

    aget-boolean v44, v21, v1

    iget v0, v15, Ln/f;->o:I

    const/16 v45, 0x0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_45

    iget-boolean v0, v15, Ln/f;->k:Z

    if-nez v0, :cond_45

    if-eqz p2, :cond_41

    iget-object v0, v15, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v0, :cond_41

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v2, :cond_41

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v0, :cond_3e

    goto :goto_1f

    :cond_3e
    if-eqz p2, :cond_40

    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v8, p1

    move-object/from16 v7, v37

    invoke-virtual {v8, v7, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v5, v35

    invoke-virtual {v8, v5, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_3f

    if-eqz v29, :cond_3f

    const/4 v0, 0x0

    aget-boolean v1, v34, v0

    if-eqz v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Ln/f;->z()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, v15, Ln/f;->V:Ln/f;

    iget-object v1, v1, Ln/f;->L:Ln/d;

    invoke-virtual {v8, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v8, v1, v5, v0, v4}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_1e

    :cond_3f
    const/16 v4, 0x8

    :goto_1e
    move-object/from16 v58, v5

    move-object/from16 v59, v7

    move-object/from16 v55, v10

    move-object/from16 v57, v11

    move-object/from16 v60, v14

    move-object/from16 v53, v22

    move-object/from16 v52, v27

    move-object/from16 v56, v32

    move-object/from16 v54, v33

    goto/16 :goto_24

    :cond_40
    move-object/from16 v8, p1

    goto/16 :goto_23

    :cond_41
    :goto_1f
    move-object/from16 v8, p1

    move-object/from16 v5, v35

    move-object/from16 v7, v37

    const/16 v4, 0x8

    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_42

    iget-object v0, v0, Ln/f;->L:Ln/d;

    invoke-virtual {v8, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_20

    :cond_42
    move-object/from16 v17, v45

    :goto_20
    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_43

    iget-object v0, v0, Ln/f;->J:Ln/d;

    invoke-virtual {v8, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_21

    :cond_43
    move-object/from16 v18, v45

    :goto_21
    const/16 v20, 0x0

    aget-boolean v21, v34, v20

    iget-object v0, v15, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v35, v0, v20

    iget-object v3, v15, Ln/f;->J:Ln/d;

    iget-object v1, v15, Ln/f;->L:Ln/d;

    iget v2, v15, Ln/f;->a0:I

    move/from16 v37, v2

    iget v2, v15, Ln/f;->d0:I

    iget-object v4, v15, Ln/f;->C:[I

    aget v47, v4, v20

    iget v4, v15, Ln/f;->f0:F

    const/16 v19, 0x1

    aget-object v0, v0, v19

    if-ne v0, v11, :cond_44

    move/from16 v48, v19

    goto :goto_22

    :cond_44
    move/from16 v48, v20

    :goto_22
    iget v0, v15, Ln/f;->u:I

    move/from16 v24, v0

    iget v0, v15, Ln/f;->v:I

    move/from16 v25, v0

    iget v0, v15, Ln/f;->w:F

    move/from16 v26, v0

    const/4 v0, 0x1

    move/from16 v49, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v50, v1

    move-object/from16 v1, p1

    move-object/from16 v51, v3

    move/from16 v3, v29

    move/from16 v20, v4

    const/16 v46, 0x8

    move/from16 v4, v28

    move-object/from16 v19, v5

    move/from16 v5, v21

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v52, v27

    move-object/from16 v7, v17

    move-object/from16 v53, v22

    move-object/from16 v8, v35

    move-object/from16 v54, v33

    move-object/from16 v55, v10

    move-object/from16 v10, v51

    move-object/from16 v57, v11

    move-object/from16 v56, v32

    move-object/from16 v11, v50

    move-object/from16 v32, v12

    move-object/from16 v58, v19

    move/from16 v12, v37

    move-object/from16 v59, v18

    move/from16 v13, v16

    move-object/from16 v60, v14

    move/from16 v14, v49

    move/from16 v15, v47

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v18, v48

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v43

    move/from16 v22, v41

    move/from16 v23, v40

    move/from16 v27, v42

    invoke-virtual/range {v0 .. v27}, Ln/f;->e(Ll/e;ZZZZLl/i;Ll/i;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLn/d;Ln/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_25

    :cond_45
    :goto_23
    move-object/from16 v55, v10

    move-object/from16 v57, v11

    move-object/from16 v60, v14

    move-object/from16 v53, v22

    move-object/from16 v52, v27

    move-object/from16 v56, v32

    move-object/from16 v54, v33

    move-object/from16 v58, v35

    move-object/from16 v59, v37

    :goto_24
    move-object/from16 v32, v12

    :goto_25
    if-eqz p2, :cond_49

    move-object/from16 v15, p0

    iget-object v0, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-eqz v0, :cond_48

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v2, :cond_48

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v0, :cond_48

    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v56

    invoke-virtual {v14, v13, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v12, v54

    invoke-virtual {v14, v12, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/g;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v1, v52

    invoke-virtual {v14, v1, v0}, Ll/e;->d(Ll/i;I)V

    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_47

    if-nez v30, :cond_47

    if-eqz v28, :cond_47

    const/4 v11, 0x1

    aget-boolean v2, v34, v11

    if-eqz v2, :cond_46

    iget-object v0, v0, Ln/f;->M:Ln/d;

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_26

    :cond_46
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_26

    :cond_47
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_26
    move v5, v10

    goto :goto_28

    :cond_48
    move-object/from16 v14, p1

    move-object/from16 v1, v52

    move-object/from16 v12, v54

    move-object/from16 v13, v56

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_27

    :cond_49
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v52

    move-object/from16 v12, v54

    move-object/from16 v13, v56

    :goto_27
    move v5, v11

    :goto_28
    iget v0, v15, Ln/f;->p:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4a

    move v4, v10

    goto :goto_29

    :cond_4a
    move v4, v5

    :goto_29
    if-eqz v4, :cond_55

    iget-boolean v0, v15, Ln/f;->l:Z

    if-nez v0, :cond_55

    iget-object v0, v15, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v11

    move-object/from16 v3, v60

    if-ne v0, v3, :cond_4b

    instance-of v0, v15, Ln/g;

    if-eqz v0, :cond_4b

    move v9, v11

    goto :goto_2a

    :cond_4b
    move v9, v10

    :goto_2a
    if-eqz v9, :cond_4c

    move/from16 v39, v10

    :cond_4c
    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_4d

    iget-object v0, v0, Ln/f;->M:Ln/d;

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_2b

    :cond_4d
    move-object/from16 v7, v45

    :goto_2b
    iget-object v0, v15, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_4e

    iget-object v0, v0, Ln/f;->K:Ln/d;

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    move-object v6, v0

    goto :goto_2c

    :cond_4e
    move-object/from16 v6, v45

    :goto_2c
    iget v0, v15, Ln/f;->c0:I

    if-gtz v0, :cond_4f

    iget v3, v15, Ln/f;->i0:I

    if-ne v3, v2, :cond_53

    :cond_4f
    move-object/from16 v3, v53

    iget-object v4, v3, Ln/d;->f:Ln/d;

    if-eqz v4, :cond_51

    invoke-virtual {v14, v1, v13, v0, v2}, Ll/e;->e(Ll/i;Ll/i;II)V

    iget-object v0, v3, Ln/d;->f:Ln/d;

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    invoke-virtual {v3}, Ln/d;->e()I

    move-result v3

    invoke-virtual {v14, v1, v0, v3, v2}, Ll/e;->e(Ll/i;Ll/i;II)V

    if-eqz v28, :cond_50

    move-object/from16 v0, v55

    invoke-virtual {v14, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_50
    move/from16 v27, v10

    goto :goto_2e

    :cond_51
    iget v4, v15, Ln/f;->i0:I

    if-ne v4, v2, :cond_52

    invoke-virtual {v3}, Ln/d;->e()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Ll/e;->e(Ll/i;Ll/i;II)V

    goto :goto_2d

    :cond_52
    invoke-virtual {v14, v1, v13, v0, v2}, Ll/e;->e(Ll/i;Ll/i;II)V

    :cond_53
    :goto_2d
    move/from16 v27, v42

    :goto_2e
    aget-boolean v5, v34, v11

    iget-object v0, v15, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v0, v11

    iget-object v4, v15, Ln/f;->K:Ln/d;

    iget-object v3, v15, Ln/f;->M:Ln/d;

    iget v1, v15, Ln/f;->b0:I

    iget v2, v15, Ln/f;->e0:I

    iget-object v10, v15, Ln/f;->C:[I

    aget v16, v10, v11

    iget v10, v15, Ln/f;->g0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    move-object/from16 v11, v57

    if-ne v0, v11, :cond_54

    const/16 v18, 0x1

    goto :goto_2f

    :cond_54
    move/from16 v18, v17

    :goto_2f
    iget v0, v15, Ln/f;->x:I

    move/from16 v24, v0

    iget v0, v15, Ln/f;->y:I

    move/from16 v25, v0

    iget v0, v15, Ln/f;->z:F

    move/from16 v26, v0

    const/4 v0, 0x0

    move/from16 v19, v2

    move v2, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v28

    move-object/from16 v21, v4

    move/from16 v4, v29

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v61, v12

    move/from16 v12, v20

    move-object/from16 v62, v13

    move/from16 v13, v39

    move/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v36

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v44

    move/from16 v22, v40

    move/from16 v23, v41

    invoke-virtual/range {v0 .. v27}, Ln/f;->e(Ll/e;ZZZZLl/i;Ll/i;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLn/d;Ln/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_30

    :cond_55
    move-object/from16 v61, v12

    move-object/from16 v62, v13

    :goto_30
    if-eqz v38, :cond_57

    move-object/from16 v0, p0

    iget v1, v0, Ln/f;->A:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_56

    iget v1, v0, Ln/f;->B:F

    invoke-virtual/range {p1 .. p1}, Ll/e;->l()Ll/c;

    move-result-object v3

    iget-object v4, v3, Ll/c;->d:Ll/b;

    move-object/from16 v5, v61

    invoke-interface {v4, v5, v2}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v3, Ll/c;->d:Ll/b;

    move-object/from16 v4, v62

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v4, v6}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v3, Ll/c;->d:Ll/b;

    move-object/from16 v7, v58

    invoke-interface {v2, v7, v1}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v3, Ll/c;->d:Ll/b;

    neg-float v1, v1

    move-object/from16 v8, v59

    invoke-interface {v2, v8, v1}, Ll/b;->e(Ll/i;F)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v3}, Ll/e;->c(Ll/c;)V

    goto :goto_31

    :cond_56
    move-object/from16 v1, p1

    move-object/from16 v7, v58

    move-object/from16 v8, v59

    move-object/from16 v5, v61

    move-object/from16 v4, v62

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, v0, Ln/f;->B:F

    invoke-virtual/range {p1 .. p1}, Ll/e;->l()Ll/c;

    move-result-object v9

    iget-object v10, v9, Ll/c;->d:Ll/b;

    invoke-interface {v10, v7, v2}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v9, Ll/c;->d:Ll/b;

    invoke-interface {v2, v8, v6}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v9, Ll/c;->d:Ll/b;

    invoke-interface {v2, v5, v3}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v9, Ll/c;->d:Ll/b;

    neg-float v3, v3

    invoke-interface {v2, v4, v3}, Ll/b;->e(Ll/i;F)V

    invoke-virtual {v1, v9}, Ll/e;->c(Ll/c;)V

    goto :goto_31

    :cond_57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_31
    invoke-virtual/range {v32 .. v32}, Ln/d;->h()Z

    move-result v2

    if-eqz v2, :cond_58

    move-object/from16 v2, v32

    iget-object v3, v2, Ln/d;->f:Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    iget v4, v0, Ln/f;->D:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Ln/d;->e()I

    move-result v2

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v5}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v6

    invoke-virtual {v1, v6}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v7}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v8

    invoke-virtual {v1, v8}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v9}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v10

    invoke-virtual {v1, v10}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v11}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v12

    invoke-virtual {v1, v12}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v12

    invoke-virtual {v3, v5}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v5

    invoke-virtual {v1, v5}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v5

    invoke-virtual {v3, v7}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v7

    invoke-virtual {v1, v7}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    invoke-virtual {v3, v9}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v9

    invoke-virtual {v1, v9}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v9

    invoke-virtual {v3, v11}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ll/e;->l()Ll/c;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v4, v9

    move-object/from16 p2, v10

    int-to-double v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    mul-double v4, v15, v9

    double-to-float v4, v4

    iget-object v5, v11, Ll/c;->d:Ll/b;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-interface {v5, v7, v15}, Ll/b;->e(Ll/i;F)V

    iget-object v5, v11, Ll/c;->d:Ll/b;

    invoke-interface {v5, v3, v15}, Ll/b;->e(Ll/i;F)V

    iget-object v3, v11, Ll/c;->d:Ll/b;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-interface {v3, v8, v5}, Ll/b;->e(Ll/i;F)V

    iget-object v3, v11, Ll/c;->d:Ll/b;

    invoke-interface {v3, v12, v5}, Ll/b;->e(Ll/i;F)V

    neg-float v3, v4

    iput v3, v11, Ll/c;->b:F

    invoke-virtual {v1, v11}, Ll/e;->c(Ll/c;)V

    invoke-virtual/range {p1 .. p1}, Ll/e;->l()Ll/c;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v4, v7

    iget-object v7, v3, Ll/c;->d:Ll/b;

    invoke-interface {v7, v2, v15}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v3, Ll/c;->d:Ll/b;

    move-object/from16 v7, v17

    invoke-interface {v2, v7, v15}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v3, Ll/c;->d:Ll/b;

    invoke-interface {v2, v6, v5}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v3, Ll/c;->d:Ll/b;

    move-object/from16 v6, p2

    invoke-interface {v2, v6, v5}, Ll/b;->e(Ll/i;F)V

    neg-float v2, v4

    iput v2, v3, Ll/c;->b:F

    invoke-virtual {v1, v3}, Ll/e;->c(Ll/c;)V

    :cond_58
    const/4 v1, 0x0

    iput-boolean v1, v0, Ln/f;->k:Z

    iput-boolean v1, v0, Ln/f;->l:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget p0, p0, Ln/f;->i0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Ll/e;ZZZZLl/i;Ll/i;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLn/d;Ln/d;IIIIFZZZZZIIIIFZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    invoke-virtual {v10, v13}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v9

    invoke-virtual {v10, v14}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v8

    iget-object v6, v13, Ln/d;->f:Ln/d;

    invoke-virtual {v10, v6}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    iget-object v6, v14, Ln/d;->f:Ln/d;

    invoke-virtual {v10, v6}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Ln/d;->h()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Ln/d;->h()Z

    move-result v17

    iget-object v12, v0, Ln/f;->Q:Ln/d;

    invoke-virtual {v12}, Ln/d;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/16 v19, 0x3

    goto :goto_1

    :cond_2
    move/from16 v19, p22

    :goto_1
    sget-object v18, Ln/e;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v14, v18, v20

    const/4 v11, 0x1

    if-eq v14, v11, :cond_4

    const/4 v11, 0x2

    if-eq v14, v11, :cond_4

    const/4 v11, 0x3

    if-eq v14, v11, :cond_4

    const/4 v11, 0x4

    if-eq v14, v11, :cond_3

    move/from16 v14, v19

    goto :goto_2

    :cond_3
    move/from16 v14, v19

    if-eq v14, v11, :cond_5

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    move/from16 v14, v19

    const/4 v11, 0x4

    :cond_5
    :goto_2
    const/16 v19, 0x0

    :goto_3
    iget v11, v0, Ln/f;->h:I

    move-object/from16 v22, v6

    const/4 v6, -0x1

    if-eq v11, v6, :cond_6

    if-eqz p2, :cond_6

    iput v6, v0, Ln/f;->h:I

    move/from16 p13, v11

    const/16 v19, 0x0

    :cond_6
    iget v11, v0, Ln/f;->i:I

    if-eq v11, v6, :cond_7

    if-nez p2, :cond_7

    iput v6, v0, Ln/f;->i:I

    const/16 v19, 0x0

    goto :goto_4

    :cond_7
    move/from16 v11, p13

    :goto_4
    iget v6, v0, Ln/f;->i0:I

    move/from16 p13, v11

    const/16 v11, 0x8

    if-ne v6, v11, :cond_8

    const/4 v6, 0x0

    const/16 v19, 0x0

    goto :goto_5

    :cond_8
    move/from16 v6, p13

    :goto_5
    if-eqz p27, :cond_b

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v12, :cond_9

    move/from16 v11, p12

    invoke-virtual {v10, v9, v11}, Ll/e;->d(Ll/i;I)V

    goto :goto_6

    :cond_9
    if-eqz v16, :cond_a

    if-nez v17, :cond_a

    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v11

    move/from16 v24, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v11, v12}, Ll/e;->e(Ll/i;Ll/i;II)V

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v24, v12

    const/16 v12, 0x8

    goto :goto_7

    :cond_b
    move/from16 v24, v12

    move v12, v11

    :goto_7
    if-nez v19, :cond_f

    if-eqz p9, :cond_d

    const/4 v5, 0x3

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v9, v11, v5}, Ll/e;->e(Ll/i;Ll/i;II)V

    if-lez v15, :cond_c

    invoke-virtual {v10, v8, v9, v15, v12}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_c
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_e

    invoke-virtual {v10, v8, v9, v1, v12}, Ll/e;->g(Ll/i;Ll/i;II)V

    goto :goto_8

    :cond_d
    const/4 v5, 0x3

    invoke-virtual {v10, v8, v9, v6, v12}, Ll/e;->e(Ll/i;Ll/i;II)V

    :cond_e
    :goto_8
    move v1, v5

    goto/16 :goto_c

    :cond_f
    const/4 v1, 0x3

    const/4 v11, 0x2

    if-eq v2, v11, :cond_12

    if-nez p17, :cond_12

    const/4 v11, 0x1

    if-eq v14, v11, :cond_10

    if-nez v14, :cond_12

    :cond_10
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_11

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_11
    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v5, v6}, Ll/e;->e(Ll/i;Ll/i;II)V

    const/16 v19, 0x0

    goto :goto_c

    :cond_12
    const/4 v11, -0x2

    if-ne v3, v11, :cond_13

    move v3, v6

    :cond_13
    if-ne v4, v11, :cond_14

    move v4, v6

    :cond_14
    if-lez v6, :cond_15

    const/4 v11, 0x1

    if-eq v14, v11, :cond_15

    const/4 v6, 0x0

    :cond_15
    if-lez v3, :cond_16

    const/16 v11, 0x8

    invoke-virtual {v10, v8, v9, v3, v11}, Ll/e;->f(Ll/i;Ll/i;II)V

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_16
    if-lez v4, :cond_19

    if-eqz p3, :cond_17

    const/4 v11, 0x1

    if-ne v14, v11, :cond_17

    const/4 v11, 0x0

    goto :goto_9

    :cond_17
    const/4 v11, 0x1

    :goto_9
    if-eqz v11, :cond_18

    const/16 v11, 0x8

    invoke-virtual {v10, v8, v9, v4, v11}, Ll/e;->g(Ll/i;Ll/i;II)V

    goto :goto_a

    :cond_18
    const/16 v11, 0x8

    :goto_a
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_b

    :cond_19
    const/16 v11, 0x8

    :goto_b
    const/4 v12, 0x1

    if-ne v14, v12, :cond_1c

    if-eqz p3, :cond_1a

    invoke-virtual {v10, v8, v9, v6, v11}, Ll/e;->e(Ll/i;Ll/i;II)V

    goto :goto_c

    :cond_1a
    if-eqz p19, :cond_1b

    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v6, v5}, Ll/e;->e(Ll/i;Ll/i;II)V

    invoke-virtual {v10, v8, v9, v6, v11}, Ll/e;->g(Ll/i;Ll/i;II)V

    goto :goto_c

    :cond_1b
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v6, v5}, Ll/e;->e(Ll/i;Ll/i;II)V

    invoke-virtual {v10, v8, v9, v6, v11}, Ll/e;->g(Ll/i;Ll/i;II)V

    :goto_c
    move/from16 v11, p5

    move/from16 v25, v2

    :goto_d
    move v12, v3

    goto :goto_10

    :cond_1c
    const/4 v6, 0x2

    if-ne v14, v6, :cond_20

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget-object v12, v13, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v11, :cond_1e

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v1, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v1, v0, Ln/f;->V:Ln/f;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v11}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v1

    invoke-virtual {v10, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    iget-object v11, v0, Ln/f;->V:Ln/f;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v12}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v11

    invoke-virtual {v10, v11}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v11

    goto :goto_f

    :cond_1e
    :goto_e
    iget-object v1, v0, Ln/f;->V:Ln/f;

    invoke-virtual {v1, v11}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v1

    invoke-virtual {v10, v1}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v1

    iget-object v11, v0, Ln/f;->V:Ln/f;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v12}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v11

    invoke-virtual {v10, v11}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v11

    :goto_f
    invoke-virtual/range {p1 .. p1}, Ll/e;->l()Ll/c;

    move-result-object v12

    iget-object v6, v12, Ll/c;->d:Ll/b;

    move/from16 v25, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v6, v8, v2}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v12, Ll/c;->d:Ll/b;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v9, v6}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v12, Ll/c;->d:Ll/b;

    invoke-interface {v2, v11, v5}, Ll/b;->e(Ll/i;F)V

    iget-object v2, v12, Ll/c;->d:Ll/b;

    neg-float v5, v5

    invoke-interface {v2, v1, v5}, Ll/b;->e(Ll/i;F)V

    invoke-virtual {v10, v12}, Ll/e;->c(Ll/c;)V

    if-eqz p3, :cond_1f

    const/16 v19, 0x0

    :cond_1f
    move/from16 v11, p5

    goto :goto_d

    :cond_20
    move/from16 v25, v2

    move v12, v3

    const/4 v11, 0x1

    :goto_10
    if-eqz p27, :cond_5d

    if-eqz p19, :cond_21

    goto/16 :goto_33

    :cond_21
    if-nez v16, :cond_22

    if-nez v17, :cond_22

    if-nez v24, :cond_22

    move-object/from16 v6, v22

    goto :goto_12

    :cond_22
    if-eqz v16, :cond_24

    if-nez v17, :cond_24

    iget-object v0, v13, Ln/d;->f:Ln/d;

    iget-object v0, v0, Ln/d;->d:Ln/f;

    if-eqz p3, :cond_23

    instance-of v0, v0, Ln/a;

    if-eqz v0, :cond_23

    const/16 v0, 0x8

    goto :goto_11

    :cond_23
    const/4 v0, 0x5

    :goto_11
    move/from16 v21, p3

    move-object/from16 v14, p11

    move-object v2, v8

    move/from16 p5, v11

    move v11, v0

    move-object/from16 v0, v22

    goto/16 :goto_31

    :cond_24
    if-nez v16, :cond_26

    if-eqz v17, :cond_26

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v6, v22

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v6, v0, v1}, Ll/e;->e(Ll/i;Ll/i;II)V

    if-eqz p3, :cond_25

    move-object/from16 v5, p6

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {v10, v9, v5, v1, v0}, Ll/e;->f(Ll/i;Ll/i;II)V

    move-object/from16 v14, p11

    move v1, v0

    move-object v0, v6

    move-object v2, v8

    move/from16 p5, v11

    goto/16 :goto_2f

    :cond_25
    :goto_12
    move-object/from16 v14, p11

    move-object v0, v6

    move-object v2, v8

    move/from16 p5, v11

    const/4 v1, 0x5

    goto/16 :goto_2f

    :cond_26
    move-object/from16 v5, p6

    move-object/from16 v6, v22

    const/4 v1, 0x2

    if-eqz v16, :cond_25

    if-eqz v17, :cond_25

    iget-object v2, v13, Ln/d;->f:Ln/d;

    iget-object v3, v2, Ln/d;->d:Ln/f;

    move-object/from16 v2, p11

    iget-object v1, v2, Ln/d;->f:Ln/d;

    iget-object v1, v1, Ln/d;->d:Ln/f;

    iget-object v13, v0, Ln/f;->V:Ln/f;

    const/16 v16, 0x6

    if-eqz v19, :cond_3c

    if-nez v14, :cond_2b

    if-nez v4, :cond_28

    if-nez v12, :cond_28

    iget-boolean v4, v7, Ll/i;->f:Z

    if-eqz v4, :cond_27

    iget-boolean v4, v6, Ll/i;->f:Z

    if-eqz v4, :cond_27

    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {v10, v9, v7, v0, v1}, Ll/e;->e(Ll/i;Ll/i;II)V

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v8, v6, v0, v1}, Ll/e;->e(Ll/i;Ll/i;II)V

    return-void

    :cond_27
    const/16 p2, 0x8

    const/16 v17, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    goto :goto_13

    :cond_28
    const/16 p2, 0x5

    const/16 v17, 0x5

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    :goto_13
    instance-of v4, v3, Ln/a;

    if-nez v4, :cond_2a

    instance-of v4, v1, Ln/a;

    if-eqz v4, :cond_29

    goto :goto_14

    :cond_29
    move/from16 v4, p2

    move/from16 v15, v17

    move/from16 v24, v22

    move/from16 v17, v14

    move/from16 v22, v21

    move-object/from16 v14, p7

    goto/16 :goto_1e

    :cond_2a
    :goto_14
    move/from16 v17, v14

    const/4 v4, 0x4

    move/from16 v14, p2

    goto/16 :goto_1d

    :cond_2b
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2e

    instance-of v4, v3, Ln/a;

    if-nez v4, :cond_2d

    instance-of v4, v1, Ln/a;

    if-eqz v4, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v4, 0x5

    goto :goto_16

    :cond_2d
    :goto_15
    const/4 v4, 0x4

    :goto_16
    const/4 v15, 0x5

    goto :goto_17

    :cond_2e
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2f

    const/4 v4, 0x4

    const/16 v15, 0x8

    :goto_17
    move/from16 v17, v14

    move/from16 v21, v16

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v14, p7

    move/from16 v28, v15

    move v15, v4

    move/from16 v4, v28

    goto/16 :goto_23

    :cond_2f
    const/4 v15, 0x3

    if-ne v14, v15, :cond_3b

    iget v15, v0, Ln/f;->A:I

    move/from16 v17, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_32

    if-eqz p20, :cond_31

    if-eqz p3, :cond_30

    const/4 v4, 0x5

    goto :goto_18

    :cond_30
    const/4 v4, 0x4

    goto :goto_18

    :cond_31
    const/16 v4, 0x8

    :goto_18
    move-object/from16 v14, p7

    move/from16 v21, v4

    const/16 v4, 0x8

    const/4 v15, 0x5

    :goto_19
    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto/16 :goto_23

    :cond_32
    if-eqz p17, :cond_36

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_34

    const/4 v4, 0x1

    if-ne v14, v4, :cond_33

    goto :goto_1a

    :cond_33
    const/4 v4, 0x0

    goto :goto_1b

    :cond_34
    :goto_1a
    const/4 v4, 0x1

    :goto_1b
    if-nez v4, :cond_35

    const/4 v4, 0x5

    const/16 v14, 0x8

    goto :goto_1c

    :cond_35
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_1c
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    :goto_1d
    move v15, v4

    move v4, v14

    move/from16 v24, v22

    move-object/from16 v14, p7

    move/from16 v22, v21

    :goto_1e
    move/from16 v21, v16

    goto/16 :goto_23

    :cond_36
    if-lez v4, :cond_37

    const/4 v4, 0x5

    goto :goto_20

    :cond_37
    if-nez v4, :cond_3a

    if-nez v12, :cond_3a

    if-nez p20, :cond_38

    const/16 v4, 0x8

    goto :goto_20

    :cond_38
    if-eq v3, v13, :cond_39

    if-eq v1, v13, :cond_39

    const/4 v4, 0x4

    goto :goto_1f

    :cond_39
    const/4 v4, 0x5

    :goto_1f
    move-object/from16 v14, p7

    move/from16 v21, v16

    const/4 v15, 0x4

    goto :goto_19

    :cond_3a
    const/4 v4, 0x4

    :goto_20
    move-object/from16 v14, p7

    move v15, v4

    move/from16 v21, v16

    const/4 v4, 0x5

    goto :goto_19

    :cond_3b
    move/from16 v17, v14

    move-object/from16 v14, p7

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto :goto_22

    :cond_3c
    move/from16 v17, v14

    iget-boolean v4, v7, Ll/i;->f:Z

    if-eqz v4, :cond_3f

    iget-boolean v4, v6, Ll/i;->f:Z

    if-eqz v4, :cond_3f

    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v1

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v0

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v1

    move/from16 p25, v3

    invoke-virtual/range {p17 .. p25}, Ll/e;->b(Ll/i;Ll/i;IFLl/i;Ll/i;II)V

    if-eqz p3, :cond_3e

    if-eqz v11, :cond_3e

    iget-object v0, v2, Ln/d;->f:Ln/d;

    if-eqz v0, :cond_3d

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v11

    move-object/from16 v14, p7

    goto :goto_21

    :cond_3d
    move-object/from16 v14, p7

    const/4 v11, 0x0

    :goto_21
    if-eq v6, v14, :cond_3e

    const/4 v0, 0x5

    invoke-virtual {v10, v14, v8, v11, v0}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_3e
    return-void

    :cond_3f
    move-object/from16 v14, p7

    const/4 v4, 0x1

    const/4 v15, 0x1

    :goto_22
    move/from16 v22, v4

    move/from16 v23, v15

    move/from16 v21, v16

    const/4 v4, 0x5

    const/4 v15, 0x4

    const/16 v24, 0x0

    :goto_23
    if-eqz v23, :cond_40

    if-ne v7, v6, :cond_40

    if-eq v3, v13, :cond_40

    const/16 v23, 0x0

    const/16 v25, 0x0

    goto :goto_24

    :cond_40
    move/from16 v25, v23

    const/16 v23, 0x1

    :goto_24
    if-eqz v22, :cond_42

    if-nez v19, :cond_41

    if-nez p18, :cond_41

    if-nez p20, :cond_41

    if-ne v7, v5, :cond_41

    if-ne v6, v14, :cond_41

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x8

    const/16 v26, 0x0

    goto :goto_25

    :cond_41
    move/from16 v22, v4

    move/from16 v26, v23

    move/from16 v23, v21

    move/from16 v21, p3

    :goto_25
    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v4

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v27

    move/from16 p2, v15

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    move-object v11, v3

    move-object v3, v7

    move/from16 p8, v12

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p9, v6

    move-object v12, v7

    move-object v7, v8

    move-object/from16 p15, v13

    move-object v13, v8

    move/from16 v8, v27

    move-object/from16 v27, v13

    move-object v13, v9

    move/from16 v9, v23

    invoke-virtual/range {v1 .. v9}, Ll/e;->b(Ll/i;Ll/i;IFLl/i;Ll/i;II)V

    move/from16 v4, v22

    move/from16 v23, v26

    goto :goto_26

    :cond_42
    move-object v14, v2

    move-object/from16 p9, v6

    move-object/from16 v27, v8

    move/from16 p5, v11

    move/from16 p8, v12

    move-object/from16 p15, v13

    move/from16 p2, v15

    move-object v15, v1

    move-object v11, v3

    move-object v12, v7

    move-object v13, v9

    move/from16 v21, p3

    :goto_26
    iget v0, v0, Ln/f;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_45

    iget-object v0, v14, Ln/d;->a:Ljava/util/HashSet;

    if-nez v0, :cond_43

    goto :goto_27

    :cond_43
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_44

    const/4 v0, 0x1

    goto :goto_28

    :cond_44
    :goto_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_45

    return-void

    :cond_45
    if-eqz v25, :cond_48

    move-object/from16 v0, p9

    if-eqz v21, :cond_47

    if-eq v12, v0, :cond_47

    if-nez v19, :cond_47

    instance-of v1, v11, Ln/a;

    if-nez v1, :cond_46

    instance-of v1, v15, Ln/a;

    if-eqz v1, :cond_47

    :cond_46
    move/from16 v4, v16

    :cond_47
    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v1

    invoke-virtual {v10, v13, v12, v1, v4}, Ll/e;->f(Ll/i;Ll/i;II)V

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v2, v27

    invoke-virtual {v10, v2, v0, v1, v4}, Ll/e;->g(Ll/i;Ll/i;II)V

    goto :goto_29

    :cond_48
    move-object/from16 v0, p9

    move-object/from16 v2, v27

    :goto_29
    if-eqz v21, :cond_49

    if-eqz p21, :cond_49

    instance-of v1, v11, Ln/a;

    if-nez v1, :cond_49

    instance-of v1, v15, Ln/a;

    if-nez v1, :cond_49

    move-object/from16 v1, p15

    if-eq v15, v1, :cond_4a

    move/from16 v3, v16

    move v4, v3

    const/16 v20, 0x1

    goto :goto_2a

    :cond_49
    move-object/from16 v1, p15

    :cond_4a
    move/from16 v3, p2

    move/from16 v20, v23

    :goto_2a
    if-eqz v20, :cond_56

    if-eqz v24, :cond_53

    if-eqz p20, :cond_4b

    if-eqz p4, :cond_53

    :cond_4b
    if-eq v11, v1, :cond_4d

    if-ne v15, v1, :cond_4c

    goto :goto_2b

    :cond_4c
    move/from16 v16, v3

    :cond_4d
    :goto_2b
    instance-of v5, v11, Ln/k;

    if-nez v5, :cond_4e

    instance-of v5, v15, Ln/k;

    if-eqz v5, :cond_4f

    :cond_4e
    const/16 v16, 0x5

    :cond_4f
    instance-of v5, v11, Ln/a;

    if-nez v5, :cond_50

    instance-of v5, v15, Ln/a;

    if-eqz v5, :cond_51

    :cond_50
    const/16 v16, 0x5

    :cond_51
    if-eqz p20, :cond_52

    const/4 v5, 0x5

    goto :goto_2c

    :cond_52
    move/from16 v5, v16

    :goto_2c
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_53
    if-eqz v21, :cond_55

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_55

    if-nez p20, :cond_55

    if-eq v11, v1, :cond_54

    if-ne v15, v1, :cond_55

    :cond_54
    const/4 v11, 0x4

    goto :goto_2d

    :cond_55
    move v11, v3

    :goto_2d
    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v1

    invoke-virtual {v10, v13, v12, v1, v11}, Ll/e;->e(Ll/i;Ll/i;II)V

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v2, v0, v1, v11}, Ll/e;->e(Ll/i;Ll/i;II)V

    :cond_56
    if-eqz v21, :cond_58

    move-object/from16 v1, p6

    move-object v3, v12

    if-ne v1, v3, :cond_57

    invoke-virtual/range {p10 .. p10}, Ln/d;->e()I

    move-result v4

    goto :goto_2e

    :cond_57
    const/4 v4, 0x0

    :goto_2e
    if-eq v3, v1, :cond_58

    const/4 v3, 0x5

    invoke-virtual {v10, v13, v1, v4, v3}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_58
    if-eqz v21, :cond_5a

    if-eqz v19, :cond_5a

    if-nez p14, :cond_5a

    if-nez p8, :cond_5a

    if-eqz v19, :cond_59

    move/from16 v1, v17

    const/4 v3, 0x3

    if-ne v1, v3, :cond_59

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v13, v3, v1}, Ll/e;->f(Ll/i;Ll/i;II)V

    const/4 v11, 0x5

    goto :goto_31

    :cond_59
    const/4 v3, 0x0

    const/4 v1, 0x5

    invoke-virtual {v10, v2, v13, v3, v1}, Ll/e;->f(Ll/i;Ll/i;II)V

    goto :goto_30

    :cond_5a
    const/4 v1, 0x5

    goto :goto_30

    :goto_2f
    move/from16 v21, p3

    :goto_30
    move v11, v1

    :goto_31
    if-eqz v21, :cond_5c

    if-eqz p5, :cond_5c

    iget-object v1, v14, Ln/d;->f:Ln/d;

    if-eqz v1, :cond_5b

    invoke-virtual/range {p11 .. p11}, Ln/d;->e()I

    move-result v1

    move-object/from16 v3, p7

    goto :goto_32

    :cond_5b
    move-object/from16 v3, p7

    const/4 v1, 0x0

    :goto_32
    if-eq v0, v3, :cond_5c

    invoke-virtual {v10, v3, v2, v1, v11}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_5c
    return-void

    :cond_5d
    :goto_33
    move-object/from16 v1, p6

    move-object/from16 v3, p7

    move-object v2, v8

    move-object v13, v9

    move/from16 p5, v11

    move/from16 v4, v25

    const/4 v5, 0x2

    if-ge v4, v5, :cond_62

    if-eqz p3, :cond_62

    if-eqz p5, :cond_62

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v10, v13, v1, v5, v4}, Ll/e;->f(Ll/i;Ll/i;II)V

    iget-object v0, v0, Ln/f;->N:Ln/d;

    if-nez p2, :cond_5f

    iget-object v1, v0, Ln/d;->f:Ln/d;

    if-nez v1, :cond_5e

    goto :goto_34

    :cond_5e
    const/4 v11, 0x0

    goto :goto_35

    :cond_5f
    :goto_34
    const/4 v11, 0x1

    :goto_35
    if-nez p2, :cond_61

    iget-object v0, v0, Ln/d;->f:Ln/d;

    if-eqz v0, :cond_61

    iget-object v0, v0, Ln/d;->d:Ln/f;

    iget v1, v0, Ln/f;->Y:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_60

    iget-object v0, v0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v4, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v1, :cond_60

    const/4 v4, 0x1

    aget-object v0, v0, v4

    if-ne v0, v1, :cond_60

    move v11, v4

    goto :goto_36

    :cond_60
    const/4 v11, 0x0

    :cond_61
    :goto_36
    if-eqz v11, :cond_62

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {v10, v3, v2, v1, v0}, Ll/e;->f(Ll/i;Ll/i;II)V

    :cond_62
    return-void
.end method

.method public final f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .locals 8

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p3

    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p4}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ln/d;->h()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ln/d;->h()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p1, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, p4, p2, p4, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    move p1, v7

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ln/d;->h()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ln/d;->h()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v7, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v5, p2, v5, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_7
    if-eqz v7, :cond_1c

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_8
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, p1, :cond_b

    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, p4, :cond_9

    goto :goto_2

    :cond_9
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, p1, :cond_a

    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, p4, :cond_1c

    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1, p2, p3, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_b
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1, p2, p3, v1}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_e

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, v3, :cond_d

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p3

    invoke-virtual {p1, p2, v1}, Ln/d;->a(Ln/d;I)V

    invoke-virtual {p3, p2, v1}, Ln/d;->a(Ln/d;I)V

    invoke-virtual {p0, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_e
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v3, :cond_10

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, v4, :cond_f

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, v4}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Ln/d;->a(Ln/d;I)V

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Ln/d;->a(Ln/d;I)V

    invoke-virtual {p0, v3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Ln/d;->a(Ln/d;I)V

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Ln/d;->a(Ln/d;I)V

    invoke-virtual {p0, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_11
    if-ne p1, v3, :cond_12

    if-ne p3, v3, :cond_12

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Ln/d;->a(Ln/d;I)V

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Ln/d;->a(Ln/d;I)V

    invoke-virtual {p0, v3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ln/d;->a(Ln/d;I)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v1

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p2

    invoke-virtual {v1, p2}, Ln/d;->i(Ln/d;)Z

    move-result p3

    if-eqz p3, :cond_1c

    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_14

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ln/d;->j()V

    :cond_13
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ln/d;->j()V

    goto :goto_4

    :cond_14
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v4, :cond_18

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v4, :cond_15

    goto :goto_3

    :cond_15
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p3, :cond_16

    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_1b

    :cond_16
    invoke-virtual {p0, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p3

    iget-object v0, p3, Ln/d;->f:Ln/d;

    if-eq v0, p2, :cond_17

    invoke-virtual {p3}, Ln/d;->j()V

    :cond_17
    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p1}, Ln/d;->f()Ln/d;

    move-result-object p1

    invoke-virtual {p0, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p0}, Ln/d;->h()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Ln/d;->j()V

    invoke-virtual {p0}, Ln/d;->j()V

    goto :goto_4

    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Ln/d;->j()V

    :cond_19
    invoke-virtual {p0, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p3

    iget-object v0, p3, Ln/d;->f:Ln/d;

    if-eq v0, p2, :cond_1a

    invoke-virtual {p3}, Ln/d;->j()V

    :cond_1a
    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    invoke-virtual {p1}, Ln/d;->f()Ln/d;

    move-result-object p1

    invoke-virtual {p0, v3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p0}, Ln/d;->h()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Ln/d;->j()V

    invoke-virtual {p0}, Ln/d;->j()V

    :cond_1b
    :goto_4
    invoke-virtual {v1, p2, p4}, Ln/d;->a(Ln/d;I)V

    :cond_1c
    :goto_5
    return-void
.end method

.method public final g(Ln/d;Ln/d;I)V
    .locals 1

    iget-object v0, p1, Ln/d;->d:Ln/f;

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Ln/d;->d:Ln/f;

    iget-object p1, p1, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget-object p2, p2, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1, v0, p2, p3}, Ln/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :cond_0
    return-void
.end method

.method public h(Ln/f;Ljava/util/HashMap;)V
    .locals 6

    iget v0, p1, Ln/f;->o:I

    iput v0, p0, Ln/f;->o:I

    iget v0, p1, Ln/f;->p:I

    iput v0, p0, Ln/f;->p:I

    iget v0, p1, Ln/f;->r:I

    iput v0, p0, Ln/f;->r:I

    iget v0, p1, Ln/f;->s:I

    iput v0, p0, Ln/f;->s:I

    iget-object v0, p1, Ln/f;->t:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Ln/f;->t:[I

    aput v2, v3, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    aput v0, v3, v2

    iget v0, p1, Ln/f;->u:I

    iput v0, p0, Ln/f;->u:I

    iget v0, p1, Ln/f;->v:I

    iput v0, p0, Ln/f;->v:I

    iget v0, p1, Ln/f;->x:I

    iput v0, p0, Ln/f;->x:I

    iget v0, p1, Ln/f;->y:I

    iput v0, p0, Ln/f;->y:I

    iget v0, p1, Ln/f;->z:F

    iput v0, p0, Ln/f;->z:F

    iget v0, p1, Ln/f;->A:I

    iput v0, p0, Ln/f;->A:I

    iget v0, p1, Ln/f;->B:F

    iput v0, p0, Ln/f;->B:F

    iget-object v0, p1, Ln/f;->C:[I

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Ln/f;->C:[I

    iget v0, p1, Ln/f;->D:F

    iput v0, p0, Ln/f;->D:F

    iget-boolean v0, p1, Ln/f;->E:Z

    iput-boolean v0, p0, Ln/f;->E:Z

    iget-boolean v0, p1, Ln/f;->F:Z

    iput-boolean v0, p0, Ln/f;->F:Z

    iget-object v0, p0, Ln/f;->J:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->K:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->L:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->M:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->N:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->O:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->P:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->Q:Ln/d;

    invoke-virtual {v0}, Ln/d;->j()V

    iget-object v0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Ln/f;->V:Ln/f;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p1, Ln/f;->V:Ln/f;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/f;

    :goto_0
    iput-object v0, p0, Ln/f;->V:Ln/f;

    iget v0, p1, Ln/f;->W:I

    iput v0, p0, Ln/f;->W:I

    iget v0, p1, Ln/f;->X:I

    iput v0, p0, Ln/f;->X:I

    iget v0, p1, Ln/f;->Y:F

    iput v0, p0, Ln/f;->Y:F

    iget v0, p1, Ln/f;->Z:I

    iput v0, p0, Ln/f;->Z:I

    iget v0, p1, Ln/f;->a0:I

    iput v0, p0, Ln/f;->a0:I

    iget v0, p1, Ln/f;->b0:I

    iput v0, p0, Ln/f;->b0:I

    iget v0, p1, Ln/f;->c0:I

    iput v0, p0, Ln/f;->c0:I

    iget v0, p1, Ln/f;->d0:I

    iput v0, p0, Ln/f;->d0:I

    iget v0, p1, Ln/f;->e0:I

    iput v0, p0, Ln/f;->e0:I

    iget v0, p1, Ln/f;->f0:F

    iput v0, p0, Ln/f;->f0:F

    iget v0, p1, Ln/f;->g0:F

    iput v0, p0, Ln/f;->g0:F

    iget-object v0, p1, Ln/f;->h0:Ljava/lang/Object;

    iput-object v0, p0, Ln/f;->h0:Ljava/lang/Object;

    iget v0, p1, Ln/f;->i0:I

    iput v0, p0, Ln/f;->i0:I

    iget-object v0, p1, Ln/f;->j0:Ljava/lang/String;

    iput-object v0, p0, Ln/f;->j0:Ljava/lang/String;

    iget-object v0, p1, Ln/f;->k0:Ljava/lang/String;

    iput-object v0, p0, Ln/f;->k0:Ljava/lang/String;

    iget v0, p1, Ln/f;->l0:I

    iput v0, p0, Ln/f;->l0:I

    iget v0, p1, Ln/f;->m0:I

    iput v0, p0, Ln/f;->m0:I

    iget-object v0, p1, Ln/f;->n0:[F

    aget v4, v0, v1

    iget-object v5, p0, Ln/f;->n0:[F

    aput v4, v5, v1

    aget v0, v0, v2

    aput v0, v5, v2

    iget-object v0, p1, Ln/f;->o0:[Ln/f;

    aget-object v4, v0, v1

    iget-object v5, p0, Ln/f;->o0:[Ln/f;

    aput-object v4, v5, v1

    aget-object v0, v0, v2

    aput-object v0, v5, v2

    iget-object v0, p1, Ln/f;->p0:[Ln/f;

    aget-object v4, v0, v1

    iget-object v5, p0, Ln/f;->p0:[Ln/f;

    aput-object v4, v5, v1

    aget-object v0, v0, v2

    aput-object v0, v5, v2

    iget-object v0, p1, Ln/f;->q0:Ln/f;

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/f;

    :goto_1
    iput-object v0, p0, Ln/f;->q0:Ln/f;

    iget-object p1, p1, Ln/f;->r0:Ln/f;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ln/f;

    :goto_2
    iput-object v3, p0, Ln/f;->r0:Ln/f;

    return-void
.end method

.method public final i(Ll/e;)V
    .locals 1

    iget-object v0, p0, Ln/f;->J:Ln/d;

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    iget-object v0, p0, Ln/f;->K:Ln/d;

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    iget-object v0, p0, Ln/f;->L:Ln/d;

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    iget-object v0, p0, Ln/f;->M:Ln/d;

    invoke-virtual {p1, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    iget v0, p0, Ln/f;->c0:I

    if-lez v0, :cond_0

    iget-object p0, p0, Ln/f;->N:Ln/d;

    invoke-virtual {p1, p0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/e;-><init>(Ln/f;)V

    iput-object v0, p0, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    :cond_0
    iget-object v0, p0, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/g;-><init>(Ln/f;)V

    iput-object v0, p0, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    :cond_1
    return-void
.end method

.method public k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;
    .locals 2

    sget-object v0, Ln/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ln/f;->P:Ln/d;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ln/f;->O:Ln/d;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ln/f;->Q:Ln/d;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Ln/f;->N:Ln/d;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ln/f;->M:Ln/d;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Ln/f;->L:Ln/d;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Ln/f;->K:Ln/d;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Ln/f;->J:Ln/d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Ln/f;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ln/f;->X:I

    return p0
.end method

.method public final n(I)Ln/f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Ln/f;->L:Ln/d;

    iget-object p1, p0, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ln/d;->f:Ln/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ln/d;->d:Ln/f;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Ln/f;->M:Ln/d;

    iget-object p1, p0, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ln/d;->f:Ln/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ln/d;->d:Ln/f;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(I)Ln/f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Ln/f;->J:Ln/d;

    iget-object p1, p0, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ln/d;->f:Ln/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ln/d;->d:Ln/f;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Ln/f;->K:Ln/d;

    iget-object p1, p0, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Ln/d;->f:Ln/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Ln/d;->d:Ln/f;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public p(Ljava/lang/StringBuilder;)V
    .locals 12

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ln/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":{\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    actualWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ln/f;->W:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualHeight:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ln/f;->X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualLeft:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ln/f;->a0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualTop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ln/f;->b0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left"

    iget-object v2, p0, Ln/f;->J:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v1, "top"

    iget-object v2, p0, Ln/f;->K:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v1, "right"

    iget-object v2, p0, Ln/f;->L:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v1, "bottom"

    iget-object v2, p0, Ln/f;->M:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v1, "baseline"

    iget-object v2, p0, Ln/f;->N:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v1, "centerX"

    iget-object v2, p0, Ln/f;->O:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v1, "centerY"

    iget-object v2, p0, Ln/f;->P:Ln/d;

    invoke-static {p1, v1, v2}, Ln/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ln/d;)V

    const-string v2, "    width"

    iget v3, p0, Ln/f;->W:I

    iget v4, p0, Ln/f;->d0:I

    iget-object v1, p0, Ln/f;->C:[I

    const/4 v9, 0x0

    aget v5, v1, v9

    iget v6, p0, Ln/f;->u:I

    iget v7, p0, Ln/f;->r:I

    iget v8, p0, Ln/f;->w:F

    iget-object v10, p0, Ln/f;->n0:[F

    aget v1, v10, v9

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Ln/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    const-string v2, "    height"

    iget v3, p0, Ln/f;->X:I

    iget v4, p0, Ln/f;->e0:I

    iget-object v1, p0, Ln/f;->C:[I

    const/4 v5, 0x1

    aget v6, v1, v5

    iget v7, p0, Ln/f;->x:I

    iget v8, p0, Ln/f;->s:I

    iget v11, p0, Ln/f;->z:F

    aget v1, v10, v5

    move-object v1, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    invoke-static/range {v1 .. v8}, Ln/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    iget v1, p0, Ln/f;->Y:F

    iget v2, p0, Ln/f;->Z:I

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "    dimensionRatio"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :  ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p0, Ln/f;->f0:F

    const-string v2, "    horizontalBias"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p1, v2, v1, v3}, Ln/f;->J(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v1, "    verticalBias"

    iget v2, p0, Ln/f;->g0:F

    invoke-static {p1, v1, v2, v3}, Ln/f;->J(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v1, "    horizontalChainStyle"

    iget v2, p0, Ln/f;->l0:I

    invoke-static {v2, v9, v1, p1}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, "    verticalChainStyle"

    iget v0, p0, Ln/f;->m0:I

    invoke-static {v0, v9, v1, p1}, Ln/f;->I(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "  }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final s()I
    .locals 2

    iget v0, p0, Ln/f;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ln/f;->W:I

    return p0
.end method

.method public final t()I
    .locals 2

    iget-object v0, p0, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ln/g;

    if-eqz v1, :cond_0

    check-cast v0, Ln/g;

    iget v0, v0, Ln/g;->B0:I

    iget p0, p0, Ln/f;->a0:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Ln/f;->a0:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ln/f;->k0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "type: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ln/f;->k0:Ljava/lang/String;

    invoke-static {v1, v4, v2}, La/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/f;->j0:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ln/f;->j0:Ljava/lang/String;

    invoke-static {v1, v3, v2}, La/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln/f;->a0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln/f;->b0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln/f;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln/f;->X:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .locals 2

    iget-object v0, p0, Ln/f;->V:Ln/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ln/g;

    if-eqz v1, :cond_0

    check-cast v0, Ln/g;

    iget v0, v0, Ln/g;->C0:I

    iget p0, p0, Ln/f;->b0:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Ln/f;->b0:I

    return p0
.end method

.method public final v(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Ln/f;->J:Ln/d;

    iget-object p1, p1, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object p0, p0, Ln/f;->L:Ln/d;

    iget-object p0, p0, Ln/d;->f:Ln/d;

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    iget-object p1, p0, Ln/f;->K:Ln/d;

    iget-object p1, p1, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    iget-object v3, p0, Ln/f;->M:Ln/d;

    iget-object v3, v3, Ln/d;->f:Ln/d;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/2addr p1, v3

    iget-object p0, p0, Ln/f;->N:Ln/d;

    iget-object p0, p0, Ln/d;->f:Ln/d;

    if-eqz p0, :cond_6

    move p0, v1

    goto :goto_5

    :cond_6
    move p0, v2

    :goto_5
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    return v1
.end method

.method public final w(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Ln/f;->J:Ln/d;

    iget-object v2, p1, Ln/d;->f:Ln/d;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Ln/d;->c:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Ln/f;->L:Ln/d;

    iget-object v2, p0, Ln/d;->f:Ln/d;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Ln/d;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ln/d;->d()I

    move-result v2

    invoke-virtual {p0}, Ln/d;->e()I

    move-result p0

    sub-int/2addr v2, p0

    iget-object p0, p1, Ln/d;->f:Ln/d;

    invoke-virtual {p0}, Ln/d;->d()I

    move-result p0

    invoke-virtual {p1}, Ln/d;->e()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr v2, p1

    if-lt v2, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object p1, p0, Ln/f;->K:Ln/d;

    iget-object v2, p1, Ln/d;->f:Ln/d;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Ln/d;->c:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Ln/f;->M:Ln/d;

    iget-object v2, p0, Ln/d;->f:Ln/d;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Ln/d;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ln/d;->d()I

    move-result v2

    invoke-virtual {p0}, Ln/d;->e()I

    move-result p0

    sub-int/2addr v2, p0

    iget-object p0, p1, Ln/d;->f:Ln/d;

    invoke-virtual {p0}, Ln/d;->d()I

    move-result p0

    invoke-virtual {p1}, Ln/d;->e()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr v2, p1

    if-lt v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public final x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    invoke-virtual {p0, p1}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p4, p5, p2}, Ln/d;->b(Ln/d;IIZ)Z

    return-void
.end method

.method public final y(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Ln/f;->R:[Ln/d;

    aget-object v0, p0, p1

    iget-object v1, v0, Ln/d;->f:Ln/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln/d;->f:Ln/d;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget-object p1, p0, Ln/d;->f:Ln/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Ln/d;->f:Ln/d;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()Z
    .locals 2

    iget-object v0, p0, Ln/f;->J:Ln/d;

    iget-object v1, v0, Ln/d;->f:Ln/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln/d;->f:Ln/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Ln/f;->L:Ln/d;

    iget-object v0, p0, Ln/d;->f:Ln/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ln/d;->f:Ln/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
