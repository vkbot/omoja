.class public final Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Ln/f;

.field public final e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public f:Ln/d;

.field public g:I

.field public h:I

.field public i:Ll/i;


# direct methods
.method public constructor <init>(Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Ln/d;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ln/d;->h:I

    iput-object p1, p0, Ln/d;->d:Ln/f;

    iput-object p2, p0, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    return-void
.end method


# virtual methods
.method public final a(Ln/d;I)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ln/d;->b(Ln/d;IIZ)Z

    return-void
.end method

.method public final b(Ln/d;IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ln/d;->j()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Ln/d;->i(Ln/d;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-object p1, p0, Ln/d;->f:Ln/d;

    iget-object p4, p1, Ln/d;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Ln/d;->a:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Ln/d;->f:Ln/d;

    iget-object p1, p1, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iput p2, p0, Ln/d;->g:I

    iput p3, p0, Ln/d;->h:I

    return v0
.end method

.method public final c(ILo/i;Ljava/util/ArrayList;)V
    .locals 1

    iget-object p0, p0, Ln/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    iget-object v0, v0, Ln/d;->d:Ln/f;

    invoke-static {v0, p1, p3, p2}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Ln/d;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ln/d;->b:I

    return p0
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Ln/d;->d:Ln/f;

    iget v0, v0, Ln/f;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Ln/d;->h:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Ln/d;->f:Ln/d;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ln/d;->d:Ln/f;

    iget v2, v2, Ln/f;->i0:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget p0, p0, Ln/d;->g:I

    return p0
.end method

.method public final f()Ln/d;
    .locals 3

    sget-object v0, Ln/c;->a:[I

    iget-object v1, p0, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    iget-object p0, p0, Ln/d;->d:Ln/f;

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ln/f;->K:Ln/d;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ln/f;->M:Ln/d;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ln/f;->J:Ln/d;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ln/f;->L:Ln/d;

    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    return-object p0

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
    .locals 2

    iget-object p0, p0, Ln/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/d;

    invoke-virtual {v1}, Ln/d;->f()Ln/d;

    move-result-object v1

    invoke-virtual {v1}, Ln/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Ln/d;->f:Ln/d;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(Ln/d;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x1

    iget-object v3, p1, Ln/d;->d:Ln/f;

    iget-object p1, p1, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_3

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, p1, :cond_2

    iget-boolean p1, v3, Ln/f;->E:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Ln/d;->d:Ln/f;

    iget-boolean p0, p0, Ln/f;->E:Z

    if-nez p0, :cond_2

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    sget-object p0, Ln/c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p0, p0, v4

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    return v0

    :pswitch_1
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p0, :cond_5

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0

    :pswitch_2
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p0, :cond_7

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p0, :cond_6

    goto :goto_1

    :cond_6
    move p0, v0

    goto :goto_2

    :cond_7
    :goto_1
    move p0, v2

    :goto_2
    instance-of v1, v3, Ln/k;

    if-eqz v1, :cond_a

    if-nez p0, :cond_8

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p0, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    move p0, v0

    :cond_a
    return p0

    :pswitch_3
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p0, :cond_c

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p0, :cond_b

    goto :goto_3

    :cond_b
    move p0, v0

    goto :goto_4

    :cond_c
    :goto_3
    move p0, v2

    :goto_4
    instance-of v1, v3, Ln/k;

    if-eqz v1, :cond_f

    if-nez p0, :cond_d

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p0, :cond_e

    :cond_d
    move v0, v2

    :cond_e
    move p0, v0

    :cond_f
    return p0

    :pswitch_4
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p0, :cond_10

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p0, :cond_10

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, p0, :cond_10

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

    iget-object v0, p0, Ln/d;->f:Ln/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ln/d;->f:Ln/d;

    iget-object v0, v0, Ln/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln/d;->f:Ln/d;

    iput-object v1, v0, Ln/d;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Ln/d;->a:Ljava/util/HashSet;

    iput-object v1, p0, Ln/d;->f:Ln/d;

    const/4 v0, 0x0

    iput v0, p0, Ln/d;->g:I

    const/high16 v1, -0x80000000

    iput v1, p0, Ln/d;->h:I

    iput-boolean v0, p0, Ln/d;->c:Z

    iput v0, p0, Ln/d;->b:I

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Ln/d;->i:Ll/i;

    if-nez v0, :cond_0

    new-instance v0, Ll/i;

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-direct {v0, v1}, Ll/i;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    iput-object v0, p0, Ln/d;->i:Ll/i;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ll/i;->c()V

    :goto_0
    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Ln/d;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln/d;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ln/d;->d:Ln/f;

    iget-object v1, v1, Ln/f;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
