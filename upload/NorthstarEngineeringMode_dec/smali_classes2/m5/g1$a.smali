.class public final Lm5/g1$a;
.super Lm5/g1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Lm5/h;


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

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm5/g1$a;->c:Lm5/h;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lm5/g1$a;->c:Lm5/h;

    iget v2, v1, Lm5/h;->r:I

    iput v2, p0, Lm5/g1$h;->a:I

    iget v1, v1, Lm5/h;->s:I

    iput v1, p0, Lm5/g1$h;->b:I

    return-object v0
.end method

.method public final d()Li5/t0;
    .locals 1

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->l0()Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->U()V

    invoke-virtual {p0}, Lm5/w1;->m0()Z

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 3

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

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

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result p0

    return p0
.end method

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->Z()Z

    move-result p0

    return p0
.end method

.method public final o()V
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-void
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->g0()V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/g1$a;->c:Lm5/h;

    return-void
.end method

.method public final r()V
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->s0()V

    return-void
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->t0()Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$a;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result p0

    return p0
.end method
