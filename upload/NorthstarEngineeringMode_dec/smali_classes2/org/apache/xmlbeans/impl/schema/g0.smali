.class public final Lorg/apache/xmlbeans/impl/schema/g0;
.super Lorg/apache/xmlbeans/impl/schema/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/xmlbeans/impl/schema/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Li5/l0;->a:Ljava/lang/String;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->n:Lorg/apache/xmlbeans/impl/schema/a;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    const-string v0, "_BI_anyType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/g0;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Li5/d0;->newInstance(Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final b(Ljava/io/InputStream;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Li5/d0;->parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Ljava/io/InputStream;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Li5/d0;->parse(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final f(Ljavax/xml/stream/XMLStreamReader;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final g(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Li5/d0;->parse(Lorg/w3c/dom/Node;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    invoke-interface {v0, p1, p0, p2}, Li5/d0;->parse(Lorg/w3c/dom/Node;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public final i()Li5/c0;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/g0;->c:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    :goto_0
    return-object p0
.end method
