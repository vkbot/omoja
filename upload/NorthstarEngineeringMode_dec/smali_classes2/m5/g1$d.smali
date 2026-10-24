.class public final Lm5/g1$d;
.super Lm5/g1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public c:Lm5/h;

.field public d:Lm5/h;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/xml/namespace/QName;

.field public final g:Z

.field public h:I

.field public i:[I

.field public j:I


# direct methods
.method public constructor <init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm5/h;->D()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lm5/h;->I(Lm5/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lm5/g1$d;->g:Z

    invoke-virtual {p1, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object v0

    iput-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p2, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p2

    iput-object p2, p0, Lm5/g1$d;->d:Lm5/h;

    iput-object p3, p0, Lm5/g1$d;->f:Ljavax/xml/namespace/QName;

    iput v2, p0, Lm5/g1$d;->h:I

    const/16 p2, 0x8

    new-array p2, p2, [I

    iput-object p2, p0, Lm5/g1$d;->i:[I

    invoke-virtual {p1}, Lm5/h;->g0()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lm5/g1$d;->e:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Lm5/h;->v0(Z)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lm5/h;->t0()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_2
    invoke-virtual {p1}, Lm5/h;->L()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p2}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lm5/h;->x()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-gtz p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lm5/g1$d;->e:Ljava/util/ArrayList;

    iget-object p3, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p3}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lm5/g1$d;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lm5/h;->x()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lm5/h;->u0()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Lm5/h;->v0(Z)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lm5/h;->c0()Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lm5/g1$d;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lm5/g1$d;->c:Lm5/h;

    iget v2, v1, Lm5/h;->r:I

    iput v2, p0, Lm5/g1$h;->a:I

    iget v1, v1, Lm5/h;->s:I

    iput v1, p0, Lm5/g1$h;->b:I

    return-object v0
.end method

.method public final d()Li5/t0;
    .locals 1

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljavax/xml/namespace/QName;
    .locals 2

    iget v0, p0, Lm5/g1$d;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_0
    iget-object p0, p0, Lm5/g1$d;->f:Ljavax/xml/namespace/QName;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 3

    invoke-virtual {p0}, Lm5/g1$d;->m()I

    move-result v0

    invoke-static {v0}, Lm5/h;->N(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lm5/g1$d;->p()V

    invoke-virtual {p0}, Lm5/g1$d;->n()Z

    invoke-virtual {p0}, Lm5/g1$h;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lm5/g1$d;->m()I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lm5/g1$d;->o()V

    :cond_2
    return v1
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lm5/g1$d;->m()I

    move-result v0

    invoke-static {v0}, Lm5/h;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm5/g1$d;->p()V

    invoke-virtual {p0}, Lm5/g1$d;->n()Z

    invoke-virtual {p0}, Lm5/g1$h;->j()Z

    move-result v0

    invoke-virtual {p0}, Lm5/g1$d;->o()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 3

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget p0, p0, Lm5/h;->c:I

    iget-object v0, v0, Lm5/w1;->d:Lm5/c;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lm5/c;->b:I

    if-ne v1, p0, :cond_0

    iget-object v1, v0, Lm5/c;->e:Ljava/lang/Object;

    const-class v2, Li5/a;

    if-ne v2, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lm5/c;->c:Lm5/c;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Lm5/g1$d;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    return v1
.end method

.method public final n()Z
    .locals 7

    iget v0, p0, Lm5/g1$d;->h:I

    iget-object v1, p0, Lm5/g1$d;->f:Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq v0, v3, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    iget-object v4, p0, Lm5/g1$d;->d:Lm5/h;

    invoke-virtual {v0, v4}, Lm5/h;->I(Lm5/h;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v1, :cond_1

    move v6, v2

    :cond_1
    iput v6, p0, Lm5/g1$d;->h:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lm5/g1$d;->h:I

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    iget-boolean v0, p0, Lm5/g1$d;->g:Z

    if-eqz v0, :cond_5

    iput v6, p0, Lm5/g1$d;->h:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->D()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0, v5}, Lm5/h;->v0(Z)Z

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    :cond_6
    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    iget-object v1, p0, Lm5/g1$d;->d:Lm5/h;

    invoke-virtual {v0, v1}, Lm5/h;->I(Lm5/h;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v6, p0, Lm5/g1$d;->h:I

    goto :goto_0

    :cond_7
    iput v4, p0, Lm5/g1$d;->h:I

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    move v2, v4

    :cond_9
    iput v2, p0, Lm5/g1$d;->h:I

    :cond_a
    :goto_0
    return v3
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->c0()Z

    iget-object v0, p0, Lm5/g1$d;->i:[I

    iget v1, p0, Lm5/g1$d;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm5/g1$d;->j:I

    aget v0, v0, v1

    iput v0, p0, Lm5/g1$d;->h:I

    return-void
.end method

.method public final p()V
    .locals 4

    iget v0, p0, Lm5/g1$d;->j:I

    iget-object v1, p0, Lm5/g1$d;->i:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lm5/g1$d;->i:[I

    :cond_0
    iget-object v0, p0, Lm5/g1$d;->i:[I

    iget v1, p0, Lm5/g1$d;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lm5/g1$d;->j:I

    iget v2, p0, Lm5/g1$d;->h:I

    aput v2, v0, v1

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->g0()V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    iget-object v1, p0, Lm5/g1$d;->d:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->h0()V

    iput-object v0, p0, Lm5/g1$d;->d:Lm5/h;

    return-void
.end method

.method public final r()V
    .locals 4

    iget v0, p0, Lm5/g1$d;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->s0()V

    :cond_0
    return-void

    :cond_1
    iput v3, p0, Lm5/g1$d;->h:I

    return-void

    :cond_2
    iput v2, p0, Lm5/g1$d;->h:I

    return-void
.end method

.method public final s()Z
    .locals 4

    iget v0, p0, Lm5/g1$d;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput v3, p0, Lm5/g1$d;->h:I

    return v2

    :cond_1
    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->t0()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lm5/g1$d;->g:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/g1$d;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
