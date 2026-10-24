.class public final Lorg/apache/xmlbeans/impl/values/k2;
.super Lorg/apache/xmlbeans/impl/values/s;
.source "SourceFile"

# interfaces
.implements Li5/b2;


# instance fields
.field public x:Li5/c0;


# direct methods
.method public static O1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;
    .locals 1

    invoke-static {p0, p2, p3}, Lorg/apache/xmlbeans/impl/values/s;->h1(Ljava/lang/String;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p3

    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QName"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p3
.end method

.method public static P1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V
    .locals 3

    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/values/h2;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QName"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final get_wscanon_rule()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    invoke-interface {p0}, Li5/c0;->K0()I

    move-result p0

    return p0
.end method

.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    return-object p0
.end method

.method public final set_QName(Ljavax/xml/namespace/QName;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/k2;->P1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/s;->set_QName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    sget-object v2, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v1, v2, v0}, Lorg/apache/xmlbeans/impl/values/k2;->O1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    invoke-static {p1, v0, v2}, Lorg/apache/xmlbeans/impl/values/k2;->P1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/s;->h1(Ljava/lang/String;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/s;->set_QName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public final set_xmlanysimple(Li5/i0;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/k2;->O1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/k2;->P1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/s;->h1(Ljava/lang/String;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/s;->set_QName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public final validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/k2;->P1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

    return-void
.end method
