.class public final Lorg/apache/xmlbeans/impl/values/c2;
.super Lorg/apache/xmlbeans/impl/values/r;
.source "SourceFile"

# interfaces
.implements Li5/i0;


# instance fields
.field public x:Li5/c0;


# direct methods
.method public static O1(Ljava/lang/String;Li5/c0;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Li5/c0;->N0(I)Li5/i0;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static P1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;
    .locals 2

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

    move-result-object v0

    const-string v1, "NOTATION"

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/c2;->O1(Ljava/lang/String;Li5/c0;)Z

    return-object p3
.end method

.method public static Q1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V
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

    const-string v0, "NOTATION"

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

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    invoke-interface {p0}, Li5/c0;->K0()I

    move-result p0

    return p0
.end method

.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    return-object p0
.end method

.method public final set_notation(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/c2;->set_text(Ljava/lang/String;)V

    return-void
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/c2;->O1(Ljava/lang/String;Li5/c0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    invoke-interface {v0, p1}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/s;->set_text(Ljava/lang/String;)V

    return-void
.end method

.method public final set_xmlanysimple(Li5/i0;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/c2;->P1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/c2;->Q1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

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
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/s;->set_QName(Ljavax/xml/namespace/QName;)V

    return-void
.end method
