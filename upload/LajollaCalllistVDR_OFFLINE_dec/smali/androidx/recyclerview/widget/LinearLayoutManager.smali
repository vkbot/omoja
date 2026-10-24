.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/s0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/e1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    }
.end annotation


# instance fields
.field public final A:Landroidx/recyclerview/widget/x;

.field public final B:Landroidx/recyclerview/widget/y;

.field public final C:I

.field public final D:[I

.field public p:I

.field public q:Landroidx/recyclerview/widget/z;

.field public r:Landroidx/recyclerview/widget/c0;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Z

.field public x:I

.field public y:I

.field public z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/s0;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 10
    new-instance v2, Landroidx/recyclerview/widget/x;

    invoke-direct {v2}, Landroidx/recyclerview/widget/x;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/x;

    .line 11
    new-instance v2, Landroidx/recyclerview/widget/y;

    invoke-direct {v2}, Landroidx/recyclerview/widget/y;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/y;

    const/4 v2, 0x2

    .line 12
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    new-array v2, v2, [I

    .line 13
    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(I)V

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 16
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->n0()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/s0;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 22
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 23
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 24
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 28
    new-instance v1, Landroidx/recyclerview/widget/x;

    invoke-direct {v1}, Landroidx/recyclerview/widget/x;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/x;

    .line 29
    new-instance v1, Landroidx/recyclerview/widget/y;

    invoke-direct {v1}, Landroidx/recyclerview/widget/y;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/y;

    const/4 v1, 0x2

    .line 30
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    new-array v1, v1, [I

    .line 31
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 32
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/s0;->H(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/r0;

    move-result-object p1

    .line 33
    iget p2, p1, Landroidx/recyclerview/widget/r0;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(I)V

    .line 34
    iget-boolean p2, p1, Landroidx/recyclerview/widget/r0;->c:Z

    .line 35
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->n0()V

    .line 39
    :goto_0
    iget-boolean p1, p1, Landroidx/recyclerview/widget/r0;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(Z)V

    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C0(Landroidx/recyclerview/widget/f1;[I)V
    .locals 3

    iget p1, p1, Landroidx/recyclerview/widget/f1;->a:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget p0, p0, Landroidx/recyclerview/widget/z;->f:I

    if-ne p0, v1, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, p1

    move p1, v2

    :goto_2
    aput p1, p2, v2

    aput p0, p2, v0

    return-void
.end method

.method public D0(Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/r;)V
    .locals 0

    iget p0, p2, Landroidx/recyclerview/widget/z;->d:I

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/f1;->b()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroidx/recyclerview/widget/z;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroidx/recyclerview/widget/r;->a(II)V

    :cond_0
    return-void
.end method

.method public final E0(Landroidx/recyclerview/widget/f1;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Ly1/l;->J(Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/s0;Z)I

    move-result p0

    return p0
.end method

.method public final F0(Landroidx/recyclerview/widget/f1;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Ly1/l;->K(Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/s0;ZZ)I

    move-result p0

    return p0
.end method

.method public final G0(Landroidx/recyclerview/widget/f1;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Ly1/l;->L(Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/s0;Z)I

    move-result p0

    return p0
.end method

.method public final H0(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final I0()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/z;

    invoke-direct {v0}, Landroidx/recyclerview/widget/z;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    :cond_0
    return-void
.end method

.method public final J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I
    .locals 7

    iget v0, p2, Landroidx/recyclerview/widget/z;->c:I

    iget v1, p2, Landroidx/recyclerview/widget/z;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/z;->g:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;)V

    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/z;->c:I

    iget v3, p2, Landroidx/recyclerview/widget/z;->h:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Landroidx/recyclerview/widget/z;->l:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_a

    :cond_3
    iget v3, p2, Landroidx/recyclerview/widget/z;->d:I

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v5

    if-ge v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    if-eqz v3, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/y;

    iput v4, v3, Landroidx/recyclerview/widget/y;->a:I

    iput-boolean v4, v3, Landroidx/recyclerview/widget/y;->b:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/y;->c:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/y;->d:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/y;)V

    iget-boolean v4, v3, Landroidx/recyclerview/widget/y;->b:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/z;->b:I

    iget v5, v3, Landroidx/recyclerview/widget/y;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/z;->f:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Landroidx/recyclerview/widget/z;->b:I

    iget-boolean v4, v3, Landroidx/recyclerview/widget/y;->c:Z

    if-eqz v4, :cond_6

    iget-object v4, p2, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    if-nez v4, :cond_6

    iget-boolean v4, p3, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v4, :cond_7

    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/z;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/z;->c:I

    sub-int/2addr v1, v5

    :cond_7
    iget v4, p2, Landroidx/recyclerview/widget/z;->g:I

    if-eq v4, v2, :cond_9

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/z;->g:I

    iget v5, p2, Landroidx/recyclerview/widget/z;->c:I

    if-gez v5, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/z;->g:I

    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;)V

    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Landroidx/recyclerview/widget/y;->d:Z

    if-eqz v3, :cond_2

    :cond_a
    :goto_1
    iget p0, p2, Landroidx/recyclerview/widget/z;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final K0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final L0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IIZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final M()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final M0()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IIZ)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final N0()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(IIZ)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final O0(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v2, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->c:Landroidx/recyclerview/widget/p1;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/p1;->f(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->d:Landroidx/recyclerview/widget/p1;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/p1;->f(IIII)Landroid/view/View;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final P0(IIZ)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->c:Landroidx/recyclerview/widget/p1;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/p1;->f(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->d:Landroidx/recyclerview/widget/p1;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/p1;->f(IIII)Landroid/view/View;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public Q0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/c0;->f()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/t0;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public final R(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final R0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/c0;->m(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public S(Landroid/view/View;ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(IIZLandroidx/recyclerview/widget/f1;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput p2, v1, Landroidx/recyclerview/widget/z;->g:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/z;->a:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(II)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_6

    return-object v0

    :cond_6
    return-object p0

    :cond_7
    return-object p3
.end method

.method public final S0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/c0;->m(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final T(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s0;->T(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final T0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final U0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final V0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->A()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/y;)V
    .locals 10

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/z0;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Landroidx/recyclerview/widget/y;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    iget-object v1, p3, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Landroidx/recyclerview/widget/z;->f:I

    if-ne v4, v3, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v3, v2}, Landroidx/recyclerview/widget/s0;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/s0;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Landroidx/recyclerview/widget/z;->f:I

    if-ne v4, v3, :cond_4

    move v4, p2

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, p1, v3, p2}, Landroidx/recyclerview/widget/s0;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2, p2}, Landroidx/recyclerview/widget/s0;->b(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t0;

    iget-object v4, p0, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    iget v2, p0, Landroidx/recyclerview/widget/s0;->n:I

    iget v4, p0, Landroidx/recyclerview/widget/s0;->l:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->D()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->E()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    move-result v7

    invoke-static {v2, v4, v8, v5, v7}, Landroidx/recyclerview/widget/s0;->x(IIIIZ)I

    move-result v2

    iget v4, p0, Landroidx/recyclerview/widget/s0;->o:I

    iget v5, p0, Landroidx/recyclerview/widget/s0;->m:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->F()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->C()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e()Z

    move-result v7

    invoke-static {v4, v5, v8, v6, v7}, Landroidx/recyclerview/widget/s0;->x(IIIIZ)I

    move-result v4

    invoke-virtual {p0, p1, v2, v4, v1}, Landroidx/recyclerview/widget/s0;->w0(Landroid/view/View;IILandroidx/recyclerview/widget/t0;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Landroidx/recyclerview/widget/y;->a:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/recyclerview/widget/s0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->E()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result p0

    sub-int p0, v1, p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->D()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    move v9, v1

    move v1, p0

    move p0, v9

    :goto_3
    iget v2, p3, Landroidx/recyclerview/widget/z;->f:I

    if-ne v2, v3, :cond_8

    iget p3, p3, Landroidx/recyclerview/widget/z;->b:I

    iget v2, p4, Landroidx/recyclerview/widget/y;->a:I

    sub-int v2, p3, v2

    goto :goto_5

    :cond_8
    iget v2, p3, Landroidx/recyclerview/widget/z;->b:I

    iget p3, p4, Landroidx/recyclerview/widget/y;->a:I

    add-int/2addr p3, v2

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->F()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v2

    iget v1, p3, Landroidx/recyclerview/widget/z;->f:I

    if-ne v1, v3, :cond_a

    iget v1, p3, Landroidx/recyclerview/widget/z;->b:I

    iget p3, p4, Landroidx/recyclerview/widget/y;->a:I

    sub-int p3, v1, p3

    goto :goto_4

    :cond_a
    iget p3, p3, Landroidx/recyclerview/widget/z;->b:I

    iget v1, p4, Landroidx/recyclerview/widget/y;->a:I

    add-int/2addr v1, p3

    :goto_4
    move v9, p3

    move p3, p0

    move p0, v9

    :goto_5
    invoke-static {p1, p0, v2, v1, p3}, Landroidx/recyclerview/widget/s0;->O(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/t0;->c()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/t0;->b()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    iput-boolean p2, p4, Landroidx/recyclerview/widget/y;->c:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Landroidx/recyclerview/widget/y;->d:Z

    return-void
.end method

.method public X0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/x;I)V
    .locals 0

    return-void
.end method

.method public final Y0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;)V
    .locals 5

    iget-boolean v0, p2, Landroidx/recyclerview/widget/z;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Landroidx/recyclerview/widget/z;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/z;->g:I

    iget v1, p2, Landroidx/recyclerview/widget/z;->i:I

    iget p2, p2, Landroidx/recyclerview/widget/z;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/c0;->e()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->l(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Landroidx/recyclerview/widget/z0;II)V

    goto/16 :goto_8

    :cond_4
    add-int/2addr p2, v2

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->l(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Landroidx/recyclerview/widget/z0;II)V

    goto :goto_8

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_b

    add-int/2addr p2, v2

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/c0;->k(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Landroidx/recyclerview/widget/z0;II)V

    goto :goto_8

    :cond_b
    move v1, v3

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/c0;->k(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(Landroidx/recyclerview/widget/z0;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final Z0(Landroidx/recyclerview/widget/z0;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/s0;->l0(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z0;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/s0;->l0(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z0;->f(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 p1, 0x0

    if-nez p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final a1()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    :goto_1
    return-void
.end method

.method public final b1(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/z;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(IIZLandroidx/recyclerview/widget/f1;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v4, v2, Landroidx/recyclerview/widget/z;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/c0;->m(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput p1, p0, Landroidx/recyclerview/widget/z;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v0, v9, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/s0;->i0(Landroidx/recyclerview/widget/z0;)V

    return-void

    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    if-ltz v0, :cond_2

    move v1, v10

    goto :goto_0

    :cond_2
    move v1, v11

    :goto_0
    if-eqz v1, :cond_3

    iput v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput-boolean v11, v0, Landroidx/recyclerview/widget/z;->a:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1()V

    iget-object v0, v6, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v6, Landroidx/recyclerview/widget/s0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v13, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/x;

    iget-boolean v1, v13, Landroidx/recyclerview/widget/x;->e:Z

    const/high16 v14, -0x80000000

    if-eqz v1, :cond_9

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v1, v9, :cond_9

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_2d

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v2

    if-gt v1, v2, :cond_2d

    :cond_8
    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;I)V

    goto/16 :goto_18

    :cond_9
    :goto_3
    invoke-virtual {v13}, Landroidx/recyclerview/widget/x;->d()V

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v0, v1

    iput-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    iget-boolean v0, v8, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v0, :cond_1a

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v0, v9, :cond_a

    goto/16 :goto_a

    :cond_a
    if-ltz v0, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v1

    if-lt v0, v1, :cond_b

    goto/16 :goto_9

    :cond_b
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v0, v13, Landroidx/recyclerview/widget/x;->b:I

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_e

    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    if-ltz v2, :cond_c

    move v2, v10

    goto :goto_4

    :cond_c
    move v2, v11

    :goto_4
    if-eqz v2, :cond_e

    iget-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v1

    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    goto/16 :goto_8

    :cond_d
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v1

    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    goto/16 :goto_8

    :cond_e
    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-ne v1, v14, :cond_17

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v2

    if-le v1, v2, :cond_f

    invoke-virtual {v13}, Landroidx/recyclerview/widget/x;->a()V

    goto/16 :goto_8

    :cond_f
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_10

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v0

    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    iput-boolean v11, v13, Landroidx/recyclerview/widget/x;->d:Z

    goto/16 :goto_8

    :cond_10
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_11

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v0

    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    iput-boolean v10, v13, Landroidx/recyclerview/widget/x;->d:Z

    goto :goto_8

    :cond_11
    iget-boolean v1, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v1, :cond_12

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/d0;->j()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_5

    :cond_12
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v1

    :goto_5
    iput v1, v13, Landroidx/recyclerview/widget/x;->c:I

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ge v1, v0, :cond_14

    move v0, v10

    goto :goto_6

    :cond_14
    move v0, v11

    :goto_6
    iget-boolean v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-ne v0, v1, :cond_15

    move v0, v10

    goto :goto_7

    :cond_15
    move v0, v11

    :goto_7
    iput-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    :cond_16
    invoke-virtual {v13}, Landroidx/recyclerview/widget/x;->a()V

    goto :goto_8

    :cond_17
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_18

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    sub-int/2addr v0, v1

    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    goto :goto_8

    :cond_18
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    add-int/2addr v0, v1

    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    :goto_8
    move v0, v10

    goto :goto_b

    :cond_19
    :goto_9
    iput v9, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v14, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :cond_1a
    :goto_a
    move v0, v11

    :goto_b
    if-eqz v0, :cond_1b

    goto/16 :goto_17

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_14

    :cond_1c
    iget-object v0, v6, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1e

    :cond_1d
    :goto_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_1e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, v6, Landroidx/recyclerview/widget/s0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_c

    :cond_1f
    :goto_d
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/t0;->c()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Landroidx/recyclerview/widget/t0;->a()I

    move-result v2

    if-ltz v2, :cond_20

    invoke-virtual {v1}, Landroidx/recyclerview/widget/t0;->a()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v2

    if-ge v1, v2, :cond_20

    move v1, v10

    goto :goto_e

    :cond_20
    move v1, v11

    :goto_e
    if-eqz v1, :cond_21

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;I)V

    goto/16 :goto_13

    :cond_21
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eq v0, v1, :cond_22

    goto/16 :goto_14

    :cond_22
    iget-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_24

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_23

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;III)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;III)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    :cond_24
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;III)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    :cond_25
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;III)Landroid/view/View;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_2a

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;I)V

    iget-boolean v1, v8, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v2

    if-ge v1, v2, :cond_27

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v1

    if-ge v0, v1, :cond_26

    goto :goto_10

    :cond_26
    move v0, v11

    goto :goto_11

    :cond_27
    :goto_10
    move v0, v10

    :goto_11
    if-eqz v0, :cond_29

    iget-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_28

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v0

    goto :goto_12

    :cond_28
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v0

    :goto_12
    iput v0, v13, Landroidx/recyclerview/widget/x;->c:I

    :cond_29
    :goto_13
    move v0, v10

    goto :goto_15

    :cond_2a
    :goto_14
    move v0, v11

    :goto_15
    if-eqz v0, :cond_2b

    goto :goto_17

    :cond_2b
    invoke-virtual {v13}, Landroidx/recyclerview/widget/x;->a()V

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eqz v0, :cond_2c

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v0

    add-int/2addr v0, v9

    goto :goto_16

    :cond_2c
    move v0, v11

    :goto_16
    iput v0, v13, Landroidx/recyclerview/widget/x;->b:I

    :goto_17
    iput-boolean v10, v13, Landroidx/recyclerview/widget/x;->e:Z

    :cond_2d
    :goto_18
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v1, v0, Landroidx/recyclerview/widget/z;->j:I

    if-ltz v1, :cond_2e

    move v1, v10

    goto :goto_19

    :cond_2e
    move v1, v9

    :goto_19
    iput v1, v0, Landroidx/recyclerview/widget/z;->f:I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    aput v11, v0, v11

    aput v11, v0, v10

    invoke-virtual {v6, v8, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/f1;[I)V

    aget v1, v0, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v2

    add-int/2addr v2, v1

    aget v0, v0, v10

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget v3, v1, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, v1, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v3, :pswitch_data_0

    goto :goto_1a

    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->E()I

    move-result v1

    goto :goto_1b

    :goto_1a
    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->C()I

    move-result v1

    :goto_1b
    add-int/2addr v1, v0

    iget-boolean v0, v8, Landroidx/recyclerview/widget/f1;->g:Z

    if-eqz v0, :cond_31

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v0, v9, :cond_31

    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-eq v3, v14, :cond_31

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_2f

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    goto :goto_1c

    :cond_2f
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v0

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :goto_1c
    sub-int/2addr v3, v0

    if-lez v3, :cond_30

    add-int/2addr v2, v3

    goto :goto_1d

    :cond_30
    sub-int/2addr v1, v3

    :cond_31
    :goto_1d
    iget-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_32

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_33

    goto :goto_1e

    :cond_32
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_34

    :cond_33
    move v0, v9

    goto :goto_1f

    :cond_34
    :goto_1e
    move v0, v10

    :goto_1f
    invoke-virtual {v6, v7, v8, v13, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/x;I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/s0;->p(Landroidx/recyclerview/widget/z0;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->g()I

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->e()I

    move-result v3

    if-nez v3, :cond_35

    move v3, v10

    goto :goto_20

    :cond_35
    move v3, v11

    :goto_20
    iput-boolean v3, v0, Landroidx/recyclerview/widget/z;->l:Z

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v11, v0, Landroidx/recyclerview/widget/z;->i:I

    iget-boolean v0, v13, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_37

    iget v0, v13, Landroidx/recyclerview/widget/x;->b:I

    iget v3, v13, Landroidx/recyclerview/widget/x;->c:I

    invoke-virtual {v6, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v2, v0, Landroidx/recyclerview/widget/z;->h:I

    invoke-virtual {v6, v7, v0, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v2, v0, Landroidx/recyclerview/widget/z;->b:I

    iget v3, v0, Landroidx/recyclerview/widget/z;->d:I

    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    if-lez v0, :cond_36

    add-int/2addr v1, v0

    :cond_36
    iget v0, v13, Landroidx/recyclerview/widget/x;->b:I

    iget v4, v13, Landroidx/recyclerview/widget/x;->c:I

    invoke-virtual {v6, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v1, v0, Landroidx/recyclerview/widget/z;->h:I

    iget v1, v0, Landroidx/recyclerview/widget/z;->d:I

    iget v4, v0, Landroidx/recyclerview/widget/z;->e:I

    add-int/2addr v1, v4

    iput v1, v0, Landroidx/recyclerview/widget/z;->d:I

    invoke-virtual {v6, v7, v0, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v1, v0, Landroidx/recyclerview/widget/z;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    if-lez v0, :cond_39

    invoke-virtual {v6, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v0, v2, Landroidx/recyclerview/widget/z;->h:I

    invoke-virtual {v6, v7, v2, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v2, v0, Landroidx/recyclerview/widget/z;->b:I

    goto :goto_21

    :cond_37
    iget v0, v13, Landroidx/recyclerview/widget/x;->b:I

    iget v3, v13, Landroidx/recyclerview/widget/x;->c:I

    invoke-virtual {v6, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v1, v0, Landroidx/recyclerview/widget/z;->h:I

    invoke-virtual {v6, v7, v0, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v1, v0, Landroidx/recyclerview/widget/z;->b:I

    iget v3, v0, Landroidx/recyclerview/widget/z;->d:I

    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    if-lez v0, :cond_38

    add-int/2addr v2, v0

    :cond_38
    iget v0, v13, Landroidx/recyclerview/widget/x;->b:I

    iget v4, v13, Landroidx/recyclerview/widget/x;->c:I

    invoke-virtual {v6, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v2, v0, Landroidx/recyclerview/widget/z;->h:I

    iget v2, v0, Landroidx/recyclerview/widget/z;->d:I

    iget v4, v0, Landroidx/recyclerview/widget/z;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/recyclerview/widget/z;->d:I

    invoke-virtual {v6, v7, v0, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v2, v0, Landroidx/recyclerview/widget/z;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/z;->c:I

    if-lez v0, :cond_39

    invoke-virtual {v6, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v0, v1, Landroidx/recyclerview/widget/z;->h:I

    invoke-virtual {v6, v7, v1, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v0, v0, Landroidx/recyclerview/widget/z;->b:I

    move v1, v0

    :cond_39
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-lez v0, :cond_3b

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3a

    invoke-virtual {v6, v1, v7, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Z)I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v0

    invoke-virtual {v6, v2, v7, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Z)I

    move-result v0

    goto :goto_22

    :cond_3a
    invoke-virtual {v6, v2, v7, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Z)I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v0

    invoke-virtual {v6, v1, v7, v8, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Z)I

    move-result v0

    :goto_22
    add-int/2addr v2, v0

    add-int/2addr v1, v0

    :cond_3b
    iget-boolean v0, v8, Landroidx/recyclerview/widget/f1;->k:Z

    if-eqz v0, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, v8, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v0, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_29

    :cond_3c
    iget-object v0, v7, Landroidx/recyclerview/widget/z0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v4

    move v5, v11

    move v14, v5

    move v15, v14

    :goto_23
    if-ge v5, v3, :cond_41

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/i1;->i()Z

    move-result v16

    if-eqz v16, :cond_3d

    goto :goto_26

    :cond_3d
    invoke-virtual {v10}, Landroidx/recyclerview/widget/i1;->c()I

    move-result v12

    if-ge v12, v4, :cond_3e

    const/4 v12, 0x1

    goto :goto_24

    :cond_3e
    move v12, v11

    :goto_24
    iget-boolean v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v12, v11, :cond_3f

    move v11, v9

    goto :goto_25

    :cond_3f
    const/4 v11, 0x1

    :goto_25
    iget-object v10, v10, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    if-ne v11, v9, :cond_40

    iget-object v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v10

    add-int/2addr v14, v10

    goto :goto_26

    :cond_40
    iget-object v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v10

    add-int/2addr v15, v10

    :goto_26
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_23

    :cond_41
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput-object v0, v3, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    if-lez v14, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v14, v0, Landroidx/recyclerview/widget/z;->h:I

    const/4 v2, 0x0

    iput v2, v0, Landroidx/recyclerview/widget/z;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/z;->a(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    invoke-virtual {v6, v7, v0, v8, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    goto :goto_27

    :cond_42
    const/4 v2, 0x0

    :goto_27
    if-lez v15, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput v15, v0, Landroidx/recyclerview/widget/z;->h:I

    iput v2, v0, Landroidx/recyclerview/widget/z;->c:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/z;->a(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    invoke-virtual {v6, v7, v0, v8, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/f1;Z)I

    goto :goto_28

    :cond_43
    const/4 v1, 0x0

    :goto_28
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput-object v1, v0, Landroidx/recyclerview/widget/z;->k:Ljava/util/List;

    :cond_44
    :goto_29
    iget-boolean v0, v8, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v0, :cond_45

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/d0;->b:I

    goto :goto_2a

    :cond_45
    invoke-virtual {v13}, Landroidx/recyclerview/widget/x;->d()V

    :goto_2a
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c1(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {v0, p1}, La/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/d0;->a(Landroidx/recyclerview/widget/s0;I)Landroidx/recyclerview/widget/c0;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/x;

    iput-object v0, v1, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/c0;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->n0()V

    :cond_3
    return-void
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d0(Landroidx/recyclerview/widget/f1;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/x;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/x;->d()V

    return-void
.end method

.method public d1(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->n0()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e0(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->n0()V

    :cond_0
    return-void
.end method

.method public final e1(IIZLandroidx/recyclerview/widget/f1;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->g()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->e()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/z;->l:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput p1, v0, Landroidx/recyclerview/widget/z;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    aput v3, v0, v3

    aput v3, v0, v2

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/f1;[I)V

    aget p4, v0, v3

    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_1

    move v3, v2

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    if-eqz v3, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Landroidx/recyclerview/widget/z;->h:I

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Landroidx/recyclerview/widget/z;->i:I

    const/4 p4, -0x1

    if-eqz v3, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget v3, v0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v0, v0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/s0;->E()I

    move-result v0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/s0;->C()I

    move-result v0

    :goto_4
    add-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/z;->h:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_4

    move v2, p4

    :cond_4
    iput v2, v0, Landroidx/recyclerview/widget/z;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v2, v1, Landroidx/recyclerview/widget/z;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/z;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/z;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/c0;->f()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v1, v0, Landroidx/recyclerview/widget/z;->h:I

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/recyclerview/widget/z;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move v2, p4

    :goto_5
    iput v2, v0, Landroidx/recyclerview/widget/z;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget v2, v1, Landroidx/recyclerview/widget/z;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/z;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/z;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p4

    add-int/2addr p1, p4

    :goto_6
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput p2, p0, Landroidx/recyclerview/widget/z;->c:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/z;->c:I

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/z;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f0()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;)V

    return-object p0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c0;->h()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    :goto_0
    return-object v0
.end method

.method public final f1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/z;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/z;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/z;->d:I

    iput v1, v0, Landroidx/recyclerview/widget/z;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/z;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/z;->g:I

    return-void
.end method

.method public final g1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/z;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    iput p1, v0, Landroidx/recyclerview/widget/z;->d:I

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/z;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/z;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/z;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/z;->g:I

    return-void
.end method

.method public final h(IILandroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/r;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(IIZLandroidx/recyclerview/widget/f1;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/z;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/z;Landroidx/recyclerview/widget/r;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final i(ILandroidx/recyclerview/widget/r;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    if-ltz v4, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->c:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v4, v2, :cond_3

    if-eqz v0, :cond_2

    add-int/lit8 v4, p1, -0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    move v0, v3

    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    if-ge v0, v2, :cond_5

    if-ltz v4, :cond_5

    if-ge v4, p1, :cond_5

    invoke-virtual {p2, v4, v3}, Landroidx/recyclerview/widget/r;->a(II)V

    add-int/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/f1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public k(Landroidx/recyclerview/widget/f1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public l(Landroidx/recyclerview/widget/f1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public final m(Landroidx/recyclerview/widget/f1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public n(Landroidx/recyclerview/widget/f1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public o(Landroidx/recyclerview/widget/f1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public o0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public final p0(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->a:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->n0()V

    return-void
.end method

.method public final q(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/s0;->q(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public q0(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(ILandroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;)I

    move-result p0

    return p0
.end method

.method public r()Landroidx/recyclerview/widget/t0;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/t0;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/t0;-><init>(II)V

    return-object p0
.end method

.method public final x0()Z
    .locals 6

    iget v0, p0, Landroidx/recyclerview/widget/s0;->m:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/s0;->l:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public z0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/b0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/s0;->A0(Landroidx/recyclerview/widget/b0;)V

    return-void
.end method
