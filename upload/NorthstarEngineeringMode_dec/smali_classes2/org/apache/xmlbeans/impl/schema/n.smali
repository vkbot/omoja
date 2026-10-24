.class public final Lorg/apache/xmlbeans/impl/schema/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/y;


# instance fields
.field public a:Lorg/apache/xmlbeans/impl/schema/g;

.field public b:Ljavax/xml/namespace/QName;

.field public c:Lorg/apache/xmlbeans/XmlObject;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Li5/o;

.field public k:Ljava/lang/String;

.field public l:Li5/y$a;


# virtual methods
.method public final H()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final K()Li5/r$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/n;->l:Li5/y$a;

    return-object p0
.end method

.method public final a(Ljavax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLorg/apache/xmlbeans/impl/schema/d;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/n;->b:Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/n;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/n;->f:Z

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/n;->g:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/schema/n;->h:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/apache/xmlbeans/impl/schema/n;->i:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/n;->c:Lorg/apache/xmlbeans/XmlObject;

    iput-object p7, p0, Lorg/apache/xmlbeans/impl/schema/n;->j:Li5/o;

    return-void
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/n;->a:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/n;->b:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final s()Li5/o;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
