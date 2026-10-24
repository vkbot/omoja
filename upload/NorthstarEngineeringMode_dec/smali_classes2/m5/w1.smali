.class public abstract Lm5/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/a0;


# instance fields
.field public a:Lm5/z0;

.field public b:Ljavax/xml/namespace/QName;

.field public c:Lm5/h;

.field public d:Lm5/c;

.field public e:I

.field public f:Lm5/w1;

.field public g:Lm5/w1;

.field public h:Lm5/w1;

.field public i:Lm5/w1;

.field public j:Lm5/w1;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Lm5/e;

.field public r:Lm5/e;

.field public s:Lorg/apache/xmlbeans/impl/values/b0;


# direct methods
.method public static I0(Lm5/w1;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm5/h;->R(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static p0(Ljavax/xml/namespace/QName;Lm5/w1;I)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    iget-object v0, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    iget-object v0, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {v0, p0}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    iget-object p0, v0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V

    return-object p0

    :catchall_0
    move-exception p0

    iget-object p1, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V

    throw p0
.end method


# virtual methods
.method public final A(Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lm5/h;->o0(Li5/c0;Z)V

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final A0()Lm5/w1;
    .locals 1

    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    iget-object v0, p0, Lm5/w1;->g:Lm5/w1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final B()I
    .locals 5

    invoke-virtual {p0}, Lm5/w1;->x0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_attributeflags(Ljavax/xml/namespace/QName;)I

    move-result p0

    return p0

    :cond_1
    iget-object v2, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/b0;->get_elementflags(Ljavax/xml/namespace/QName;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    return v2

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->new_visitor()Lorg/apache/xmlbeans/impl/values/d0;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lm5/w1;->f:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->i:Lm5/w1;

    :goto_0
    invoke-virtual {v2}, Lm5/w1;->v0()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    move-object v4, v0

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-virtual {v4, v3, v1}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    if-ne v2, p0, :cond_8

    iget-object p0, v4, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Li5/z;->t0()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, v4, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    check-cast p0, Li5/x;

    invoke-interface {p0}, Li5/s;->g0()Z

    move-result v2

    invoke-interface {p0}, Li5/s;->i0()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    or-int/2addr v2, v3

    invoke-interface {p0}, Li5/s;->t()Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v0

    :cond_6
    or-int/2addr v1, v2

    :cond_7
    :goto_2
    return v1

    :cond_8
    iget-object v2, v2, Lm5/w1;->g:Lm5/w1;

    goto :goto_0
.end method

.method public final B0(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_1
    const-string v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "http://www.w3.org/2000/xmlns/"

    return-object p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_5

    iget-object v1, p0, Lm5/w1;->i:Lm5/w1;

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lm5/w1;->y0()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v1, v1, Lm5/w1;->g:Lm5/w1;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lm5/w1;->f:Lm5/w1;

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract C0(Lm5/z0;)Lm5/w1;
.end method

.method public final D()Lm5/z0;
    .locals 0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    return-object p0
.end method

.method public final D0()Lm5/w1;
    .locals 1

    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/w1;->g:Lm5/w1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final E(Ljavax/xml/namespace/QName;)V
    .locals 1

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0, p1}, Lm5/w1;->G0(Ljavax/xml/namespace/QName;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final E0()I
    .locals 1

    iget v0, p0, Lm5/w1;->o:I

    add-int/lit8 v0, v0, 0x2

    iget p0, p0, Lm5/w1;->p:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 6

    invoke-virtual {p0}, Lm5/w1;->u0()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lm5/w1;->j:Lm5/w1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lm5/w1;->u0()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v5, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    iget-object v3, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {v3, p1}, Lorg/apache/xmlbeans/impl/values/b0;->get_element_ending_delimiters(Ljavax/xml/namespace/QName;)Li5/k;

    move-result-object v3

    const/4 v4, 0x1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v3, v5}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v2, v0

    :cond_3
    iget-object v0, v0, Lm5/w1;->h:Lm5/w1;

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    const/4 v0, -0x1

    invoke-static {p1, p0, v0}, Lm5/w1;->p0(Ljavax/xml/namespace/QName;Lm5/w1;I)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {p1, v2, v1}, Lm5/w1;->p0(Ljavax/xml/namespace/QName;Lm5/w1;I)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final F0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "xml"

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "xmlns"

    return-object p0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lm5/w1;->u0()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lm5/w1;->V()Lm5/w1;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_7

    invoke-virtual {v1, v0}, Lm5/w1;->W(Ljava/lang/String;)Lm5/w1;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    return-object v5

    :cond_5
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0, v5}, Lm5/z0;->h(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lm5/w1;->J0(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lm5/w1;

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_c

    iget-object v3, v0, Lm5/w1;->i:Lm5/w1;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lm5/w1;->s0()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, v0, Lm5/w1;->i:Lm5/w1;

    goto :goto_4

    :cond_9
    :goto_3
    move-object v3, v5

    :goto_4
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lm5/w1;->y0()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v4}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lm5/w1;->W(Ljava/lang/String;)Lm5/w1;

    move-result-object v6

    if-ne v6, v3, :cond_a

    invoke-virtual {v3}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v3}, Lm5/w1;->D0()Lm5/w1;

    move-result-object v3

    goto :goto_4

    :cond_b
    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    goto :goto_2

    :cond_c
    if-nez p3, :cond_d

    return-object v5

    :cond_d
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_e

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_e

    invoke-virtual {v1, p2}, Lm5/w1;->W(Ljava/lang/String;)Lm5/w1;

    move-result-object p3

    if-eqz p3, :cond_f

    :cond_e
    move-object p2, v5

    :cond_f
    if-nez p2, :cond_11

    invoke-static {p1}, Lj5/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    :goto_5
    invoke-virtual {v1, p2}, Lm5/w1;->W(Ljava/lang/String;)Lm5/w1;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {p3}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move v4, v0

    goto :goto_5

    :cond_11
    :goto_6
    move-object p3, v1

    :goto_7
    invoke-virtual {p3}, Lm5/w1;->x0()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p3}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p3, p3, Lm5/w1;->f:Lm5/w1;

    goto :goto_7

    :cond_12
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0, p2}, Lm5/z0;->h(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lm5/w1;->J0(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lm5/w1;

    return-object p2
.end method

.method public final G(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    const/4 v1, 0x0

    iput-object v1, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lm5/h;->T(Lm5/h;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2}, Lm5/h;->Z()Z

    invoke-virtual {v2, p1}, Lm5/h;->A(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :goto_1
    iput-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final G0(Ljavax/xml/namespace/QName;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm5/h;->R(Lm5/h;)V

    invoke-virtual {p0, p1}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {v0, v2, v1}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_0
.end method

.method public final H(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    invoke-virtual {p0, p1}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lm5/w1;->J0(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object p1

    invoke-virtual {p1}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final H0(IILm5/w1;IZZ)V
    .locals 6

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->k()V

    iget-object v0, p0, Lm5/w1;->c:Lm5/h;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lm5/h;->i:Lm5/h;

    iget v2, v0, Lm5/h;->c:I

    if-lt v2, p1, :cond_1

    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    if-eqz p5, :cond_0

    add-int/2addr v2, p4

    sub-int/2addr v2, p1

    invoke-virtual {v0, p3, v2}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_1

    :cond_0
    sub-int v2, p2, v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Lm5/h;->a0(I)V

    :cond_1
    :goto_1
    iget-object v2, v0, Lm5/h;->b:Lm5/w1;

    if-ne v2, p0, :cond_2

    iget v2, v0, Lm5/h;->c:I

    add-int v3, p1, p2

    if-lt v2, v3, :cond_2

    sub-int/2addr v2, p2

    iput v2, v0, Lm5/h;->c:I

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object p5, p0, Lm5/w1;->d:Lm5/c;

    :goto_2
    if-eqz p5, :cond_8

    iget v0, p5, Lm5/c;->b:I

    if-lt v0, p1, :cond_6

    add-int v1, p1, p2

    if-ge v0, v1, :cond_6

    add-int/2addr v0, p4

    sub-int/2addr v0, p1

    iget-object v1, p5, Lm5/c;->a:Lm5/w1;

    if-eq v1, p3, :cond_5

    iget-object v2, v1, Lm5/w1;->d:Lm5/c;

    invoke-virtual {p5, v2}, Lm5/c;->a(Lm5/c;)Lm5/c;

    move-result-object v2

    iput-object v2, v1, Lm5/w1;->d:Lm5/c;

    iget-object v1, p3, Lm5/w1;->d:Lm5/c;

    if-nez v1, :cond_4

    iput-object p5, p5, Lm5/c;->d:Lm5/c;

    move-object v1, p5

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lm5/c;->d:Lm5/c;

    iput-object v2, p5, Lm5/c;->d:Lm5/c;

    iget-object v2, v1, Lm5/c;->d:Lm5/c;

    iput-object p5, v2, Lm5/c;->c:Lm5/c;

    iput-object p5, v1, Lm5/c;->d:Lm5/c;

    :goto_3
    iput-object v1, p3, Lm5/w1;->d:Lm5/c;

    iput-object p3, p5, Lm5/c;->a:Lm5/w1;

    :cond_5
    iput v0, p5, Lm5/c;->b:I

    :cond_6
    iget-object v0, p5, Lm5/c;->a:Lm5/w1;

    if-ne v0, p0, :cond_7

    iget v0, p5, Lm5/c;->b:I

    add-int v1, p1, p2

    if-lt v0, v1, :cond_7

    sub-int/2addr v0, p2

    iput v0, p5, Lm5/c;->b:I

    :cond_7
    iget-object p5, p5, Lm5/c;->c:Lm5/c;

    goto :goto_2

    :cond_8
    iget p3, p0, Lm5/w1;->o:I

    add-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p4}, Lm5/z0;->q()Lm5/f;

    move-result-object p4

    if-ge p1, p3, :cond_9

    add-int/lit8 v1, p1, -0x1

    iget-object v3, p0, Lm5/w1;->k:Ljava/lang/Object;

    iget v4, p0, Lm5/w1;->m:I

    iget v5, p0, Lm5/w1;->o:I

    move-object v0, p4

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lm5/f;->h(IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lm5/w1;->k:Ljava/lang/Object;

    iget p1, p4, Lm5/f;->e:I

    iput p1, p0, Lm5/w1;->m:I

    iget p1, p4, Lm5/f;->f:I

    iput p1, p0, Lm5/w1;->o:I

    if-eqz p6, :cond_a

    invoke-virtual {p0}, Lm5/w1;->r0()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm5/w1;->q0(Lm5/w1;)V

    goto :goto_4

    :cond_9
    sub-int v1, p1, p3

    iget-object v3, p0, Lm5/w1;->l:Ljava/lang/Object;

    iget v4, p0, Lm5/w1;->n:I

    iget v5, p0, Lm5/w1;->p:I

    move-object v0, p4

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lm5/f;->h(IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lm5/w1;->l:Ljava/lang/Object;

    iget p1, p4, Lm5/f;->e:I

    iput p1, p0, Lm5/w1;->n:I

    iget p1, p4, Lm5/f;->f:I

    iput p1, p0, Lm5/w1;->p:I

    if-eqz p6, :cond_a

    iget-object p0, p0, Lm5/w1;->f:Lm5/w1;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lm5/w1;->r0()V

    :cond_a
    :goto_4
    return-void
.end method

.method public final I(Lo5/a;)V
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    new-instance v1, Lm5/v1;

    invoke-direct {v1, v0, p1}, Lm5/v1;-><init>(Lm5/h;Lo5/a;)V

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lm5/w1;->B0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final J0(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lm5/w1;
    .locals 1

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object p0

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0, p2}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-virtual {p0, p2}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p0}, Lm5/h;->i0()V

    :goto_0
    invoke-virtual {p0, p1}, Lm5/h;->p0(Ljava/lang/String;)V

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/h;->h0()V

    return-object p1
.end method

.method public final K(Li5/k;I)V
    .locals 1

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lm5/w1;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0}, Lm5/w1;->I0(Lm5/w1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;
    .locals 3

    iget-object v0, p0, Lm5/w1;->d:Lm5/c;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, v0, Lm5/c;->b:I

    if-ne p1, v2, :cond_1

    iget-object v2, v0, Lm5/c;->e:Ljava/lang/Object;

    if-ne p2, v2, :cond_1

    if-nez p3, :cond_0

    iget-object p1, p0, Lm5/w1;->d:Lm5/c;

    invoke-virtual {v0, p1}, Lm5/c;->a(Lm5/c;)Lm5/c;

    move-result-object p1

    iput-object p1, p0, Lm5/w1;->d:Lm5/c;

    return-object v1

    :cond_0
    iput-object p3, v0, Lm5/c;->f:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, v0, Lm5/c;->c:Lm5/c;

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lm5/c;

    invoke-direct {v0}, Lm5/c;-><init>()V

    iput-object p0, v0, Lm5/c;->a:Lm5/w1;

    iput p1, v0, Lm5/c;->b:I

    iput-object p2, v0, Lm5/c;->e:Ljava/lang/Object;

    iput-object p3, v0, Lm5/c;->f:Ljava/lang/Object;

    iget-object p1, p0, Lm5/w1;->d:Lm5/c;

    if-nez p1, :cond_4

    iput-object v0, v0, Lm5/c;->d:Lm5/c;

    move-object p1, v0

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lm5/c;->d:Lm5/c;

    iput-object p2, v0, Lm5/c;->d:Lm5/c;

    iget-object p2, p1, Lm5/c;->d:Lm5/c;

    iput-object v0, p2, Lm5/c;->c:Lm5/c;

    iput-object v0, p1, Lm5/c;->d:Lm5/c;

    :goto_1
    iput-object p1, p0, Lm5/w1;->d:Lm5/c;

    return-object v0
.end method

.method public final L(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0, p1}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final L0(Lm5/w1;Z)Lm5/w1;
    .locals 1

    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    :goto_0
    if-eq p0, p1, :cond_2

    iget-object p2, p0, Lm5/w1;->g:Lm5/w1;

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    iget-object p0, p0, Lm5/w1;->f:Lm5/w1;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    iget v0, p0, Lm5/w1;->e:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lm5/w1;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    const/4 v1, 0x0

    iput-object v1, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lm5/h;->T(Lm5/h;Z)V

    invoke-virtual {v2}, Lm5/h;->h0()V

    iput-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    :cond_1
    iget v0, p0, Lm5/w1;->e:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lm5/w1;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :goto_1
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0
.end method

.method public final N(Lm5/w1;)V
    .locals 1

    iput-object p0, p1, Lm5/w1;->f:Lm5/w1;

    iget-object v0, p0, Lm5/w1;->j:Lm5/w1;

    iput-object v0, p1, Lm5/w1;->h:Lm5/w1;

    if-nez v0, :cond_0

    iput-object p1, p0, Lm5/w1;->i:Lm5/w1;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lm5/w1;->g:Lm5/w1;

    :goto_0
    iput-object p1, p0, Lm5/w1;->j:Lm5/w1;

    return-void
.end method

.method public final O(I)Z
    .locals 0

    iget p0, p0, Lm5/w1;->e:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final P(I)I
    .locals 1

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lm5/w1;->o:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5/w1;->E0()I

    move-result p0

    sub-int v0, p0, p1

    :goto_0
    return v0
.end method

.method public final Q(Lm5/h;)Z
    .locals 3

    iget-object v0, p1, Lm5/h;->b:Lm5/w1;

    iget p1, p1, Lm5/h;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-lez p1, :cond_1

    iget p0, p0, Lm5/w1;->o:I

    add-int/lit8 p0, p0, 0x2

    if-ge p1, p0, :cond_1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lm5/w1;->i:Lm5/w1;

    if-nez p1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public final R(Lm5/z0;)Lm5/w1;
    .locals 11

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v2

    :goto_0
    invoke-virtual {v1}, Lm5/w1;->U()V

    invoke-virtual {v1, p1}, Lm5/w1;->C0(Lm5/z0;)Lm5/w1;

    move-result-object v4

    iget-object v5, v1, Lm5/w1;->k:Ljava/lang/Object;

    iput-object v5, v4, Lm5/w1;->k:Ljava/lang/Object;

    iget v5, v1, Lm5/w1;->m:I

    iput v5, v4, Lm5/w1;->m:I

    iget v5, v1, Lm5/w1;->o:I

    iput v5, v4, Lm5/w1;->o:I

    iget-object v5, v1, Lm5/w1;->l:Ljava/lang/Object;

    iput-object v5, v4, Lm5/w1;->l:Ljava/lang/Object;

    iget v5, v1, Lm5/w1;->n:I

    iput v5, v4, Lm5/w1;->n:I

    iget v5, v1, Lm5/w1;->p:I

    iput v5, v4, Lm5/w1;->p:I

    iget-object v5, v1, Lm5/w1;->d:Lm5/c;

    :goto_1
    if-eqz v5, :cond_2

    sget-object v6, Li5/a;->a:Li5/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget v8, v5, Lm5/c;->b:I

    iget-object v9, v1, Lm5/w1;->d:Lm5/c;

    :goto_2
    if-eqz v9, :cond_1

    iget v10, v9, Lm5/c;->b:I

    if-ne v10, v8, :cond_0

    iget-object v10, v9, Lm5/c;->e:Ljava/lang/Object;

    if-ne v7, v10, :cond_0

    iget v7, v5, Lm5/c;->b:I

    const-class v8, Li5/a;

    invoke-virtual {v4, v7, v8, v6}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    goto :goto_3

    :cond_0
    iget-object v9, v9, Lm5/c;->c:Lm5/c;

    goto :goto_2

    :cond_1
    :goto_3
    iget-object v5, v5, Lm5/c;->c:Lm5/c;

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v4}, Lm5/w1;->N(Lm5/w1;)V

    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v1, p0, v5}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v5

    if-nez v5, :cond_4

    iput-object v0, v3, Lm5/w1;->l:Ljava/lang/Object;

    const/4 p0, 0x0

    iput p0, v3, Lm5/w1;->n:I

    iput p0, v3, Lm5/w1;->p:I

    return-object v3

    :cond_4
    iget-object v6, v5, Lm5/w1;->f:Lm5/w1;

    if-ne v1, v6, :cond_5

    move-object v2, v4

    goto :goto_6

    :cond_5
    :goto_5
    iget-object v1, v1, Lm5/w1;->f:Lm5/w1;

    iget-object v4, v5, Lm5/w1;->f:Lm5/w1;

    if-eq v1, v4, :cond_6

    iget-object v2, v2, Lm5/w1;->f:Lm5/w1;

    goto :goto_5

    :cond_6
    :goto_6
    move-object v1, v5

    goto :goto_0
.end method

.method public final S()V
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p0, v1}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v1

    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lm5/w1;->T()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final T()V
    .locals 1

    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lm5/w1;->O(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->U()V

    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->disconnect_store()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 10

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lm5/w1;->O(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lm5/w1;->e:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lm5/w1;->e:I

    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    const/4 v1, 0x0

    iput-object v1, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/b0;->build_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lm5/w1;->a:Lm5/z0;

    iget-wide v8, v1, Lm5/z0;->k:J

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->H()V

    invoke-virtual {p0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lm5/w1;->o:I

    add-int/lit8 v2, v2, 0x2

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    move-object v2, p0

    move v3, v1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lm5/w1;->o0(ILjava/lang/Object;IIZ)V

    :goto_1
    iget-object v1, p0, Lm5/w1;->a:Lm5/z0;

    iput-wide v8, v1, Lm5/z0;->k:J

    iput-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    :cond_2
    return-void
.end method

.method public final V()Lm5/w1;
    .locals 2

    iget-object v0, p0, Lm5/w1;->f:Lm5/w1;

    if-nez v0, :cond_0

    new-instance v0, Lm5/b0;

    iget-object v1, p0, Lm5/w1;->a:Lm5/z0;

    invoke-direct {v0, v1}, Lm5/b0;-><init>(Lm5/z0;)V

    invoke-virtual {v0, p0}, Lm5/w1;->N(Lm5/w1;)V

    :cond_0
    return-object v0
.end method

.method public final W(Ljava/lang/String;)Lm5/w1;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    iget-object v1, p0, Lm5/w1;->i:Lm5/w1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lm5/w1;->y0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lm5/w1;->D0()Lm5/w1;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lm5/w1;->f:Lm5/w1;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final X(Ljavax/xml/namespace/QName;)Lm5/w1;
    .locals 1

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final Y(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lm5/w1;->P(I)I

    move-result v0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    move p2, v0

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    const/4 p1, 0x0

    iput p1, p0, Lm5/z0;->o:I

    iput p1, p0, Lm5/z0;->p:I

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lm5/w1;->a0(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Z(III)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lm5/w1;->P(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lm5/w1;->Y(II)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget p2, p0, Lm5/z0;->o:I

    iget p0, p0, Lm5/z0;->p:I

    invoke-static {p2, p0, p1}, Lm5/f;->c(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p3}, Lm5/z0;->v(I)Lm5/z0$i;

    move-result-object p2

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget p3, p0, Lm5/z0;->o:I

    iget p0, p0, Lm5/z0;->p:I

    invoke-virtual {p2, p3, p0, p1}, Lm5/z0$i;->a(IILjava/lang/Object;)V

    iget-object p0, p2, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Z
    .locals 0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget-boolean p0, p0, Lm5/z0;->t:Z

    return p0
.end method

.method public final a0(II)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm5/w1;->o:I

    add-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lm5/w1;->l:Ljava/lang/Object;

    iget-object v2, p0, Lm5/w1;->a:Lm5/z0;

    iget v3, p0, Lm5/w1;->n:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    iput v3, v2, Lm5/z0;->o:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm5/w1;->k:Ljava/lang/Object;

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    iget v2, p0, Lm5/w1;->m:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lm5/z0;->o:I

    :goto_0
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iput p2, p0, Lm5/z0;->p:I

    return-object v1
.end method

.method public final b(Ljavax/xml/namespace/QName;Ljava/util/ArrayList;)V
    .locals 1

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b0(I)Lm5/w1;
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lm5/w1;->h:Lm5/w1;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lm5/w1;->V()Lm5/w1;

    move-result-object p1

    iget v0, p1, Lm5/w1;->o:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    move v1, v0

    move-object v0, p1

    move p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lm5/w1;->E0()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm5/w1;->j:Lm5/w1;

    if-nez p1, :cond_3

    iget p1, p0, Lm5/w1;->o:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    move-object v0, p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lm5/w1;->E0()I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iput p1, p0, Lm5/z0;->u:I

    return-object v0
.end method

.method public final c(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lr5/g;->e(Ljava/lang/String;Li5/z1;Lm5/h;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public abstract c0()Lm5/o0$a;
.end method

.method public final d(Lorg/apache/xmlbeans/impl/values/a0;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 7

    check-cast p1, Lm5/w1;

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    iget-object v0, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lm5/w1;->k()Lm5/h;

    move-result-object v1

    invoke-static {v1}, Lm5/z0;->p(Lm5/h;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lm5/h;->h0()V

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lm5/w1;->k()Lm5/h;

    move-result-object v1

    invoke-static {v1}, Lm5/z0;->w(Lm5/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lm5/h;->h0()V

    invoke-virtual {v0, v4}, Lm5/h;->p0(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    const/4 v4, 0x1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p0, p0, v1}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v5, v1, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v1, p0, v5}, Lm5/w1;->L0(Lm5/w1;Z)Lm5/w1;

    move-result-object v5

    invoke-virtual {v1}, Lm5/w1;->T()V

    move-object v1, v5

    goto :goto_1

    :cond_4
    iget v1, p0, Lm5/w1;->e:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lm5/w1;->e:I

    invoke-virtual {p0}, Lm5/w1;->u0()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lm5/w1;->j0()Ljavax/xml/namespace/QName;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v5

    :goto_3
    iget-object v6, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1, v6}, Lm5/w1;->R(Lm5/z0;)Lm5/w1;

    move-result-object v6

    invoke-static {p0, v5, v4}, Lm5/h;->U(Lm5/w1;Lm5/h;Z)V

    invoke-virtual {v0}, Lm5/h;->Z()Z

    invoke-static {v6, v0, v4}, Lm5/h;->U(Lm5/w1;Lm5/h;Z)V

    invoke-virtual {v0, p0, v3}, Lm5/h;->Y(Lm5/w1;I)V

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lm5/h;->k0(Ljavax/xml/namespace/QName;)V

    :cond_6
    iget v1, p0, Lm5/w1;->e:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lm5/w1;->e:I

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, v3}, Lm5/h;->v0(Z)Z

    :cond_7
    invoke-static {v0, v2}, Lm5/z0;->b(Lm5/h;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :try_start_2
    invoke-virtual {v0}, Lm5/h;->h0()V

    iget-object p1, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_5
    :try_start_3
    invoke-virtual {v0}, Lm5/h;->h0()V

    iget-object p1, p1, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final d0()I
    .locals 3

    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/w1;->q:Lm5/e;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm5/w1;->j:Lm5/w1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/w1;->j:Lm5/w1;

    iget-object v2, v0, Lm5/w1;->r:Lm5/e;

    if-nez v2, :cond_1

    iget-object v0, v0, Lm5/w1;->l:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/w1;->q:Lm5/e;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    iget-object v1, p0, Lm5/w1;->j:Lm5/w1;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lm5/w1;->q:Lm5/e;

    if-nez v0, :cond_2

    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->l:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    if-nez v0, :cond_4

    iget-object v0, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lm5/w1;->q:Lm5/e;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lm5/e;->b:Lm5/e;

    if-nez v1, :cond_4

    iget v0, v0, Lm5/e;->f:I

    iget v1, p0, Lm5/w1;->o:I

    if-ne v0, v1, :cond_4

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lm5/w1;->g:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_6

    iget-object p0, p0, Lm5/w1;->l:Ljava/lang/Object;

    if-nez p0, :cond_6

    if-eqz v0, :cond_6

    iget-object p0, v0, Lm5/w1;->l:Ljava/lang/Object;

    if-nez p0, :cond_6

    iget-object p0, v0, Lm5/w1;->g:Lm5/w1;

    if-nez p0, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x2

    return p0
.end method

.method public final e0()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lm5/w1;->U()V

    iget v0, p0, Lm5/w1;->o:I

    const/4 v1, -0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lm5/w1;->Y(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Lm5/w1;->p:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    iget p0, v0, Lm5/w1;->o:I

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p0, v1}, Lm5/w1;->Y(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    const/4 v0, 0x0

    iput v0, p0, Lm5/z0;->o:I

    iput v0, p0, Lm5/z0;->p:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Li5/k;Ljava/util/ArrayList;)V
    .locals 1

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f0(I)Lm5/w1;
    .locals 3

    invoke-virtual {p0}, Lm5/w1;->E0()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lm5/w1;->g:Lm5/w1;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, p1

    move p1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->V()Lm5/w1;

    move-result-object p1

    move-object v0, p1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lm5/w1;->o:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_1
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iput p1, p0, Lm5/z0;->u:I

    return-object v0
.end method

.method public final g()Li5/d0;
    .locals 0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget-object p0, p0, Lm5/z0;->b:Li5/d0;

    return-object p0
.end method

.method public final g0()Lorg/apache/xmlbeans/impl/values/b0;
    .locals 3

    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lm5/w1;->f:Lm5/w1;

    if-nez v0, :cond_0

    sget-object v0, Li5/l0;->d:Lorg/apache/xmlbeans/impl/schema/r;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/c0;->a()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lm5/w1;->j0()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/b0;->create_element_user(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/b0;->create_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/b0;->attach_store(Lorg/apache/xmlbeans/impl/values/a0;)V

    :cond_2
    iget-object p0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    return-object p0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-virtual {p0}, Lm5/w1;->D()Lm5/z0;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 0

    invoke-virtual {p0, p1}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final h0(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lm5/w1;->l0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lm5/w1;->e0()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lm5/w1;->a:Lm5/z0;

    iget v1, p1, Lm5/z0;->o:I

    iget p1, p1, Lm5/z0;->p:I

    invoke-static {v1, p1, v0}, Lm5/f;->c(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lm5/w1;->l:Ljava/lang/Object;

    iput v1, v0, Lm5/w1;->n:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lm5/w1;->k:Ljava/lang/Object;

    iput v1, p0, Lm5/w1;->m:I

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-static {p1}, Lm5/z0;->v(I)Lm5/z0$i;

    move-result-object p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    iget v1, p0, Lm5/z0;->o:I

    iget p0, p0, Lm5/z0;->p:I

    invoke-virtual {p1, v1, p0, v0}, Lm5/z0$i;->a(IILjava/lang/Object;)V

    iget-object p0, p1, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lm5/z0;->v(I)Lm5/z0$i;

    move-result-object p1

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->Z()Z

    :goto_1
    invoke-virtual {p0}, Lm5/h;->B()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lm5/h;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lm5/h;->r:I

    iget v2, p0, Lm5/h;->s:I

    invoke-virtual {p1, v1, v2, v0}, Lm5/z0$i;->a(IILjava/lang/Object;)V

    :cond_4
    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->z0()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget v0, p0, Lm5/h;->c:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->z0()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    :goto_2
    invoke-virtual {p0}, Lm5/h;->q0()Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lm5/h;->Z()Z

    goto :goto_1

    :cond_7
    iget-object p1, p1, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->h0()V

    return-object p1
.end method

.method public final i()Li5/s;
    .locals 6

    invoke-virtual {p0}, Lm5/w1;->x0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_attribute_field(Ljavax/xml/namespace/QName;)Li5/s;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->new_visitor()Lorg/apache/xmlbeans/impl/values/d0;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lm5/w1;->f:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->i:Lm5/w1;

    :goto_0
    invoke-virtual {v2}, Lm5/w1;->v0()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    move-object v4, v0

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/a0;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    if-ne v2, p0, :cond_4

    iget-object p0, v4, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    instance-of v0, p0, Li5/s;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Li5/s;

    :cond_3
    return-object v1

    :cond_4
    iget-object v2, v2, Lm5/w1;->g:Lm5/w1;

    goto :goto_0
.end method

.method public final i0()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    sget-object v0, Lm5/z0;->z:Le5/g;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result p0

    return p0
.end method

.method public final j0()Ljavax/xml/namespace/QName;
    .locals 5

    sget-object v0, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {p0, v4, v3}, Lm5/w1;->B0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final k()Lm5/h;
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return-object v0
.end method

.method public final k0()Z
    .locals 0

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l()Lm5/z0;
    .locals 0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    return-object p0
.end method

.method public final l0()Z
    .locals 0

    iget-object p0, p0, Lm5/w1;->j:Lm5/w1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()Z
    .locals 3

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    sget-object v0, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lm5/w1;->X(Ljavax/xml/namespace/QName;)Lm5/w1;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return v1

    :cond_2
    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {v0, v2}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0
.end method

.method public final m0()Z
    .locals 2

    iget v0, p0, Lm5/w1;->o:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->A0()Lm5/w1;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Lm5/w1;->p:I

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final n(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lm5/w1;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1, p1}, Lm5/z0;->o(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0, p0, p2, v1}, Lm5/z0;->f(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lm5/w1;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p2, v0, p0}, Lm5/w1;->p0(Ljavax/xml/namespace/QName;Lm5/w1;I)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final n0(ILm5/w1;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p2}, Lm5/w1;->x0()Z

    move-result p5

    if-eqz p5, :cond_0

    if-nez p3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2, p3}, Lm5/w1;->b0(I)Lm5/w1;

    move-result-object p2

    iget-object p3, p2, Lm5/w1;->a:Lm5/z0;

    iget p3, p3, Lm5/z0;->u:I

    move p5, v0

    goto :goto_0

    :cond_1
    move p5, v1

    :goto_0
    if-ne p2, p0, :cond_2

    if-lt p3, p1, :cond_2

    add-int/2addr p1, p4

    add-int/2addr p1, p5

    if-ge p3, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public final o(Li5/k;)I
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lm5/z0;->f(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;)I

    move-result p0

    return p0
.end method

.method public final o0(ILjava/lang/Object;IIZ)V
    .locals 10

    iget v2, p0, Lm5/w1;->o:I

    add-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ge p1, v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    sub-int v5, p1, v5

    iget v6, p0, Lm5/w1;->p:I

    add-int/2addr v2, v6

    if-ge v5, v2, :cond_4

    iget-object v2, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v2}, Lm5/z0;->k()V

    iget-object v2, p0, Lm5/w1;->c:Lm5/h;

    :goto_1
    if-eqz v2, :cond_2

    iget v5, v2, Lm5/h;->c:I

    if-lt v5, p1, :cond_1

    add-int/2addr v5, p4

    iput v5, v2, Lm5/h;->c:I

    :cond_1
    iget-object v2, v2, Lm5/h;->i:Lm5/h;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lm5/w1;->d:Lm5/c;

    :goto_2
    if-eqz v2, :cond_4

    iget v5, v2, Lm5/c;->b:I

    if-lt v5, p1, :cond_3

    add-int/2addr v5, p4

    iput v5, v2, Lm5/c;->b:I

    :cond_3
    iget-object v2, v2, Lm5/c;->c:Lm5/c;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v2}, Lm5/z0;->q()Lm5/f;

    move-result-object v9

    if-ge p1, v3, :cond_5

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lm5/w1;->k:Ljava/lang/Object;

    iget v4, p0, Lm5/w1;->m:I

    iget v5, p0, Lm5/w1;->o:I

    move-object v1, v9

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lm5/f;->e(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lm5/w1;->k:Ljava/lang/Object;

    iget v1, v9, Lm5/f;->e:I

    iput v1, p0, Lm5/w1;->m:I

    iget v1, v9, Lm5/f;->f:I

    iput v1, p0, Lm5/w1;->o:I

    if-eqz p5, :cond_6

    invoke-virtual {p0}, Lm5/w1;->r0()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm5/w1;->q0(Lm5/w1;)V

    goto :goto_3

    :cond_5
    sub-int v2, p1, v3

    iget-object v3, p0, Lm5/w1;->l:Ljava/lang/Object;

    iget v4, p0, Lm5/w1;->n:I

    iget v5, p0, Lm5/w1;->p:I

    move-object v1, v9

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lm5/f;->e(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lm5/w1;->l:Ljava/lang/Object;

    iget v1, v9, Lm5/f;->e:I

    iput v1, p0, Lm5/w1;->n:I

    iget v1, v9, Lm5/f;->f:I

    iput v1, p0, Lm5/w1;->p:I

    if-eqz p5, :cond_6

    iget-object v0, p0, Lm5/w1;->f:Lm5/w1;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lm5/w1;->r0()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lm5/w1;->F0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final q(ILjavax/xml/namespace/QName;Li5/k;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lm5/w1;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p3, p1}, Lm5/z0;->o(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0, p0, v1, p3}, Lm5/z0;->f(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_0

    invoke-virtual {p0, p2}, Lm5/w1;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p2, v0, p0}, Lm5/w1;->p0(Ljavax/xml/namespace/QName;Lm5/w1;I)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final q0(Lm5/w1;)V
    .locals 2

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    sget-object v1, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/w1;->f:Lm5/w1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm5/w1;->S()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lm5/w1;->S()V

    :cond_1
    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    sget-object v1, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lm5/w1;->f:Lm5/w1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->invalidate_nilvalue()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p1, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->invalidate_nilvalue()V

    :cond_3
    return-void
.end method

.method public final r(Li5/k;I)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final r0()V
    .locals 0

    iget-object p0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->invalidate_value()V

    :cond_0
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lm5/w1;->x0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lm5/w1;->V()Lm5/w1;

    move-result-object v0

    invoke-virtual {v0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v0

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_default_attribute_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/b0;->get_default_element_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->new_visitor()Lorg/apache/xmlbeans/impl/values/d0;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lm5/w1;->f:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->i:Lm5/w1;

    :goto_0
    invoke-virtual {v2}, Lm5/w1;->v0()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    move-object v4, v0

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/a0;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    if-ne v2, p0, :cond_6

    iget-object p0, v4, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Li5/z;->t0()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, v4, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    check-cast p0, Li5/x;

    invoke-interface {p0}, Li5/s;->k()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    iget-object v2, v2, Lm5/w1;->g:Lm5/w1;

    goto :goto_0
.end method

.method public final s0()Z
    .locals 1

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lm5/h;->n0(Ljavax/xml/namespace/QName;Li5/c0;)V

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p1}, Lm5/z0;->m()V

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Lm5/w1;->e:I

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public final t0()Z
    .locals 5

    iget-object v0, p0, Lm5/w1;->l:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lm5/w1;->r:Lm5/e;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, v0, Lm5/e;->b:Lm5/e;

    if-nez v3, :cond_1

    iget v3, v0, Lm5/e;->f:I

    iget v4, p0, Lm5/w1;->p:I

    if-ne v3, v4, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lm5/w1;->a:Lm5/z0;

    iget v4, p0, Lm5/w1;->p:I

    invoke-static {v3, p0, v0, v4}, Lm5/h;->z0(Lm5/z0;Lm5/w1;Lm5/e;I)Lm5/e;

    move-result-object v0

    iput-object v0, p0, Lm5/w1;->r:Lm5/e;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final u()Lm5/y;
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    new-instance v1, Lm5/y;

    invoke-direct {v1, v0}, Lm5/y;-><init>(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0
.end method

.method public final u0()Z
    .locals 0

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    invoke-static {p0}, Lm5/h;->N(I)Z

    move-result p0

    return p0
.end method

.method public final v(ILjavax/xml/namespace/QName;)V
    .locals 1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lm5/w1;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0}, Lm5/w1;->I0(Lm5/w1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final v0()Z
    .locals 1

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(Li5/d0;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 4

    if-nez p3, :cond_0

    sget-object p3, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->F1:Li5/z1$a;

    iget-object v1, p3, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/c0;

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/XmlObject;->z0:Li5/c0;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :cond_2
    :goto_1
    iget-object v1, p0, Lm5/w1;->a:Lm5/z0;

    sget-object v2, Li5/z1$a;->O1:Li5/z1$a;

    iget-object v3, p3, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, p3}, Lm5/z0;->t(Li5/d0;Li5/z1;)Lm5/z0;

    move-result-object v1

    :cond_3
    invoke-interface {v0}, Li5/c0;->m()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_5

    invoke-interface {v0}, Li5/c0;->x0()Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p1, p0, Lm5/c0;

    if-nez p1, :cond_5

    :cond_4
    move p1, p3

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    invoke-static {v1, p1}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object p1

    invoke-virtual {v1}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p1}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lm5/h;->o0(Li5/c0;Z)V

    invoke-virtual {v0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lm5/z0;->m()V

    invoke-virtual {p1, p0}, Lm5/w1;->d(Lorg/apache/xmlbeans/impl/values/a0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lm5/z0;->m()V

    throw p0
.end method

.method public final w0()Z
    .locals 3

    iget-object v0, p0, Lm5/w1;->i:Lm5/w1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v2, p0, Lm5/w1;->q:Lm5/e;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm5/w1;->s0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/w1;->k:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lm5/w1;->q:Lm5/e;

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final x0()Z
    .locals 1

    invoke-virtual {p0}, Lm5/w1;->z0()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {v0}, Lm5/z0;->l()V

    :try_start_0
    iget-object v0, p0, Lm5/w1;->s:Lorg/apache/xmlbeans/impl/values/b0;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/b0;->build_nil()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lm5/w1;->G0(Ljavax/xml/namespace/QName;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    const-string v1, "true"

    invoke-virtual {p0, v1, v0}, Lm5/w1;->J0(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lm5/w1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-void

    :goto_1
    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw v0
.end method

.method public final y0()Z
    .locals 1

    invoke-virtual {p0}, Lm5/w1;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-static {p0}, Lm5/z0;->z(Ljavax/xml/namespace/QName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z(Ljavax/xml/namespace/QName;)I
    .locals 2

    iget-object v0, p0, Lm5/w1;->a:Lm5/z0;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lm5/z0;->f(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;)I

    move-result p0

    return p0
.end method

.method public final z0()I
    .locals 0

    iget p0, p0, Lm5/w1;->e:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
