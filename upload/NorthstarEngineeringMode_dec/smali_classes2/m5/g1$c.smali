.class public abstract Lm5/g1$c;
.super Lm5/g1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public c:Lm5/g1$h;


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

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lm5/g1$c;->c:Lm5/g1$h;

    iget v2, v1, Lm5/g1$h;->a:I

    iput v2, p0, Lm5/g1$h;->a:I

    iget v1, v1, Lm5/g1$h;->b:I

    iput v1, p0, Lm5/g1$h;->b:I

    return-object v0
.end method

.method public final d()Li5/t0;
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->d()Li5/t0;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->h()Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->i()Z

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->k()Z

    move-result p0

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->l()Z

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->m()I

    move-result p0

    return p0
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lm5/g1$b;

    iget-object v1, v0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {v1}, Lm5/g1$h;->m()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {v1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lm5/g1$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm5/g1$c;->r()V

    invoke-virtual {p0}, Lm5/g1$c;->n()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final o()V
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->o()V

    return-void
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->p()V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->q()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    return-void
.end method

.method public final r()V
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->r()V

    return-void
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->s()Z

    move-result p0

    return p0
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Lm5/g1$c;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->t()Z

    move-result p0

    return p0
.end method
