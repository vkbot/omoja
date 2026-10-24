.class public Lorg/apache/xmlbeans/impl/schema/b;
.super Lorg/apache/xmlbeans/impl/schema/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/xmlbeans/impl/schema/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public a()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Li5/d0;->newInstance(Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public b(Ljava/io/InputStream;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    invoke-interface {p0, p1, v0, v1}, Li5/d0;->parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public d(Ljava/lang/String;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    invoke-interface {p0, p1, v0, v1}, Li5/d0;->parse(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public f(Ljavax/xml/stream/XMLStreamReader;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public g(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    invoke-interface {p0, p1, v0, v1}, Li5/d0;->parse(Lorg/w3c/dom/Node;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Lorg/w3c/dom/Node;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method
