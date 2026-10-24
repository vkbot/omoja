.class public abstract Lorg/apache/xmlbeans/impl/values/b;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public static M0(Ljava/lang/String;Lj5/m;)Z
    .locals 2

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "boolean"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    check-cast p1, Li5/m0;

    invoke-interface {p1}, Li5/m0;->getBooleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    check-cast p1, Li5/m0;

    invoke-interface {p1}, Li5/m0;->getBooleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getBooleanValue()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public final set_boolean(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    return-void
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/b;->M0(Ljava/lang/String;Lj5/m;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    return-void
.end method

.method public final value_hash_code()I
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    if-eqz p0, :cond_0

    const p0, 0x391073e2

    goto :goto_0

    :cond_0
    const p0, 0x28501167

    :goto_0
    return p0
.end method
