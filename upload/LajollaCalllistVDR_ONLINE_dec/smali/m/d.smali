.class public final Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Lm/f;

.field public final e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public f:Lm/d;

.field public g:I

.field public h:I

.field public i:Lk/i;


# direct methods
.method public constructor <init>(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lm/d;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lm/d;->h:I

    iput-object p1, p0, Lm/d;->d:Lm/f;

    iput-object p2, p0, Lm/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    return-void
.end method


# virtual methods
.method public final a(Lm/d;I)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lm/d;->b(Lm/d;IIZ)Z

    return-void
.end method

.method public final b(Lm/d;IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lm/d;->j()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Lm/d;->i(Lm/d;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object p1, p0, Lm/d;->f:Lm/d;

    iget-object p4, p1, Lm/d;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lm/d;->a:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Lm/d;->f:Lm/d;

    iget-object p1, p1, Lm/d;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iput p2, p0, Lm/d;->g:I

    iput p3, p0, Lm/d;->h:I

    return v0
.end method

.method public final c(ILn/i;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lm/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/d;

    iget-object v1, v1, Lm/d;->d:Lm/f;

    invoke-static {v1, p1, p3, p2}, Lcom/google/android/material/slider/h;->Z(Lm/f;ILjava/util/ArrayList;Ln/i;)Ln/i;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lm/d;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lm/d;->b:I

    return v0
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Lm/d;->d:Lm/f;

    iget v0, v0, Lm/f;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lm/d;->h:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lm/d;->f:Lm/d;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lm/d;->d:Lm/f;

    iget v2, v2, Lm/f;->i0:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lm/d;->g:I

    return v0
.end method

.method public final f()Lm/d;
    .locals 3

    sget-object v0, Lm/c;->a:[I

    iget-object v1, p0, Lm/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    iget-object v2, p0, Lm/d;->d:Lm/f;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v0, v2, Lm/f;->K:Lm/d;

    return-object v0

    :pswitch_1
    iget-object v0, v2, Lm/f;->M:Lm/d;

    return-object v0

    :pswitch_2
    iget-object v0, v2, Lm/f;->J:Lm/d;

    return-object v0

    :pswitch_3
    iget-object v0, v2, Lm/f;->L:Lm/d;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lm/d;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/d;

    invoke-virtual {v2}, Lm/d;->f()Lm/d;

    move-result-object v2

    invoke-virtual {v2}, Lm/d;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lm/d;->f:Lm/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(Lm/d;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lm/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x1

    iget-object v3, p1, Lm/d;->d:Lm/f;

    iget-object p1, p1, Lm/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_3

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_2

    iget-boolean p1, v3, Lm/f;->E:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lm/d;->d:Lm/f;

    iget-boolean p1, p1, Lm/f;->E:Z

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    sget-object v4, Lm/c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    :pswitch_1
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0

    :pswitch_2
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_7

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v2

    :goto_2
    instance-of v3, v3, Lm/k;

    if-eqz v3, :cond_a

    if-nez v1, :cond_8

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    move v1, v0

    :cond_a
    return v1

    :pswitch_3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_c

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_b

    goto :goto_3

    :cond_b
    move v1, v0

    goto :goto_4

    :cond_c
    :goto_3
    move v1, v2

    :goto_4
    instance-of v3, v3, Lm/k;

    if-eqz v3, :cond_f

    if-nez v1, :cond_d

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_e

    :cond_d
    move v0, v2

    :cond_e
    move v1, v0

    :cond_f
    return v1

    :pswitch_4
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_10

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_10

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_10

    move v0, v2

    :cond_10
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lm/d;->f:Lm/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lm/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lm/d;->f:Lm/d;

    iget-object v0, v0, Lm/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/d;->f:Lm/d;

    iput-object v1, v0, Lm/d;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lm/d;->a:Ljava/util/HashSet;

    iput-object v1, p0, Lm/d;->f:Lm/d;

    const/4 v0, 0x0

    iput v0, p0, Lm/d;->g:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lm/d;->h:I

    iput-boolean v0, p0, Lm/d;->c:Z

    iput v0, p0, Lm/d;->b:I

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lm/d;->i:Lk/i;

    if-nez v0, :cond_0

    new-instance v0, Lk/i;

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-direct {v0, v1}, Lk/i;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    iput-object v0, p0, Lm/d;->i:Lk/i;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lk/i;->c()V

    :goto_0
    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lm/d;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm/d;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm/d;->d:Lm/f;

    iget-object v1, v1, Lm/f;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
