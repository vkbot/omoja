.class public Lorg/apache/xmlbeans/impl/schema/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/w;
.implements Lw5/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/apache/xmlbeans/impl/schema/h0;

.field public c:Z

.field public d:Z

.field public e:Ljavax/xml/namespace/QName;

.field public f:Li5/c0$a;

.field public g:Lw5/a;

.field public h:I

.field public i:Li5/o;

.field public j:Lorg/apache/xmlbeans/XmlObject;


# virtual methods
.method public final A()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->h:I

    return p0
.end method

.method public final O0()Lw5/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->g:Lw5/a;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d()Li5/i0;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l;->b:Lorg/apache/xmlbeans/impl/schema/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/h0;->a()Li5/i0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Li5/i0;->s:Li5/c0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l;->getType()Li5/c0;

    move-result-object v1

    invoke-interface {v0, v1}, Li5/c0;->G0(Li5/c0;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l;->j:Lorg/apache/xmlbeans/XmlObject;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l;->j:Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l;->getType()Li5/c0;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l;->getType()Li5/c0;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->e:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final getType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->f:Li5/c0$a;

    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public final i0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->d:Z

    return p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final s()Li5/o;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->i:Li5/o;

    return-object p0
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/l;->c:Z

    return p0
.end method
