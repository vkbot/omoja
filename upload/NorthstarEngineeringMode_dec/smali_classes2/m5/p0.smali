.class public final Lm5/p0;
.super Lm5/g1;
.source "SourceFile"


# instance fields
.field public r:Lm5/h;

.field public final s:Li5/c0;

.field public final t:Li5/d0;

.field public final u:Li5/z1;

.field public final v:Z


# direct methods
.method public constructor <init>(Lm5/h;ZLi5/z1;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lm5/g1;-><init>(Lm5/h;Li5/z1;)V

    invoke-virtual {p1}, Lm5/h;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->get_schema_type()Li5/c0;

    move-result-object v0

    iput-object v0, p0, Lm5/p0;->s:Li5/c0;

    :cond_0
    iget-object p1, p1, Lm5/h;->a:Lm5/z0;

    iget-object p1, p1, Lm5/z0;->b:Li5/d0;

    iput-object p1, p0, Lm5/p0;->t:Li5/d0;

    iput-object p3, p0, Lm5/p0;->u:Li5/z1;

    iput-boolean p2, p0, Lm5/p0;->v:Z

    return-void
.end method


# virtual methods
.method public final A(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    iget-object p0, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lm5/g1$h;)V
    .locals 3

    invoke-virtual {p0}, Lm5/p0;->z()V

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    new-instance v1, Lm5/g;

    iget-object v2, v0, Lm5/h;->a:Lm5/z0;

    invoke-direct {v1, v2}, Lm5/g;-><init>(Lm5/z0;)V

    invoke-virtual {v0, v1}, Lm5/h;->k(Lm5/b1;)V

    invoke-virtual {p0, p1}, Lm5/p0;->y(Lm5/g1$h;)V

    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->q0()Z

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lm5/p0;->z()V

    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p0

    sget-object v0, Li5/t0;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Li5/t0;->f:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Li5/t0;->g:Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lm5/z0;->y(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lm5/h;->Y(Lm5/w1;I)V

    :cond_0
    invoke-virtual {p0}, Lm5/p0;->z()V

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/p0;->A(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    iget-object p1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->Z()Z

    invoke-virtual {p0}, Lm5/g1;->p()V

    :goto_0
    invoke-virtual {p0}, Lm5/g1;->n()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lm5/p0;->r:Lm5/h;

    iget-object v1, p1, Lm5/h;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/g1;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm5/z0;->h(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    iget-object p1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->Z()Z

    iget-object p1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p0}, Lm5/g1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm5/h;->A(Ljava/lang/String;)V

    iget-object p1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1, v0}, Lm5/h;->v0(Z)Z

    iget-object p1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1}, Lm5/h;->q0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->x0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lm5/h;->v0(Z)Z

    invoke-virtual {p1}, Lm5/h;->Z()Z

    :goto_1
    invoke-virtual {p0}, Lm5/g1;->s()V

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Lm5/p0;->r:Lm5/h;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v2}, Lm5/p0;->A(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    iget-object v1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->Z()Z

    iget-object v1, p0, Lm5/p0;->r:Lm5/h;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lm5/h;->A(Ljava/lang/String;)V

    iget-object v1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v1, v0}, Lm5/h;->v0(Z)Z

    iget-object v1, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->q0()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v2}, Lm5/w1;->x0()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v0}, Lm5/h;->v0(Z)Z

    invoke-virtual {v1}, Lm5/h;->Z()Z

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    return v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Lm5/g1$h;)V
    .locals 0

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lm5/z0;->y(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->Z()Z

    :cond_0
    return-void
.end method

.method public final i(Lm5/g1$h;)V
    .locals 4

    invoke-virtual {p0}, Lm5/p0;->z()V

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm5/c1;

    iget-object v3, v0, Lm5/h;->a:Lm5/z0;

    invoke-direct {v2, v3, v1}, Lm5/c1;-><init>(Lm5/z0;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lm5/h;->k(Lm5/b1;)V

    invoke-virtual {p0, p1}, Lm5/p0;->y(Lm5/g1$h;)V

    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->q0()Z

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lm5/p0;->z()V

    return-void
.end method

.method public final k(Lm5/g1$h;)V
    .locals 3

    invoke-virtual {p0}, Lm5/p0;->z()V

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lm5/g1$h;->b:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lm5/p0;->r:Lm5/h;

    iget p1, p1, Lm5/g1$h;->a:I

    invoke-virtual {v2, p1, v1, v0}, Lm5/h;->z(IILjava/lang/Object;)V

    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->Z()Z

    :cond_0
    return-void
.end method

.method public final y(Lm5/g1$h;)V
    .locals 4

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    invoke-virtual {p1}, Lm5/g1$h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->Z()Z

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, p1, Lm5/g1$h;->a:I

    iget v3, p1, Lm5/g1$h;->b:I

    invoke-virtual {v0, v2, v3, v1}, Lm5/h;->z(IILjava/lang/Object;)V

    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    :cond_0
    invoke-virtual {p1}, Lm5/g1$h;->o()V

    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lm5/p0;->r:Lm5/h;

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lm5/p0;->v:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lm5/h;->g()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lm5/h;->a:Lm5/z0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lm5/h;->Y(Lm5/w1;I)V

    :goto_0
    iget-object p0, p0, Lm5/p0;->r:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->Z()Z

    :goto_1
    return-void
.end method
