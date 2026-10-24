.class public abstract Lorg/apache/xmlbeans/impl/values/w;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;


# virtual methods
.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w;->c:Ljava/lang/String;

    check-cast p1, Li5/j0;

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->t:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/w;->c:Ljava/lang/String;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    const-string v1, "##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "anyURI"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/w;->c:Ljava/lang/String;

    return-void
.end method

.method public final value_hash_code()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
