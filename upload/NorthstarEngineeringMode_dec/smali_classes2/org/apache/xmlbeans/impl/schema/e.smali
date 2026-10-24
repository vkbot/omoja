.class public final Lorg/apache/xmlbeans/impl/schema/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/p;


# instance fields
.field public a:Lorg/apache/xmlbeans/impl/schema/g;

.field public b:Ljavax/xml/namespace/QName;

.field public c:Lorg/apache/xmlbeans/XmlObject;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Li5/o;

.field public j:Ljava/lang/String;

.field public k:Li5/p$a;


# virtual methods
.method public final H()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final K()Li5/r$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/e;->k:Li5/p$a;

    return-object p0
.end method

.method public final a(Ljavax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;ZLorg/apache/xmlbeans/impl/schema/d;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/e;->b:Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/e;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/e;->g:Z

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/e;->f:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/apache/xmlbeans/impl/schema/e;->h:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/e;->c:Lorg/apache/xmlbeans/XmlObject;

    iput-object p6, p0, Lorg/apache/xmlbeans/impl/schema/e;->i:Li5/o;

    return-void
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/e;->a:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/e;->b:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final s()Li5/o;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
