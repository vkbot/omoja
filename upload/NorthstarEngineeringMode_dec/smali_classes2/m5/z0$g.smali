.class public abstract Lm5/z0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# instance fields
.field public Z:Z

.field public b1:Lorg/xml/sax/Locator;

.field public c:Lm5/z0;

.field public c1:Z

.field public d1:I

.field public e1:I

.field public f1:I

.field public final g1:Ljava/util/LinkedHashMap;

.field public r:Lm5/h$a;

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/z0$g;->c1:Z

    const/16 v1, 0x2800

    iput v1, p0, Lm5/z0$g;->d1:I

    iput v0, p0, Lm5/z0$g;->e1:I

    iput v0, p0, Lm5/z0$g;->f1:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lm5/z0$g;->g1:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    return-void
.end method


# virtual methods
.method public final a(Lm5/z0;Li5/z1;)V
    .locals 1

    iput-object p1, p0, Lm5/z0$g;->c:Lm5/z0;

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    new-instance v0, Lm5/h$a;

    invoke-direct {v0, p1, p2}, Lm5/h$a;-><init>(Lm5/z0;Li5/z1;)V

    iput-object v0, p0, Lm5/z0$g;->r:Lm5/h$a;

    sget-object p1, Li5/z1$a;->t1:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/z0$g;->x:Z

    sget-object p1, Li5/z1$a;->u1:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/z0$g;->y:Z

    sget-object p1, Li5/z1$a;->v1:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/z0$g;->Z:Z

    sget-object p1, Li5/z1$a;->P1:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lm5/z0$g;->d1:I

    :cond_1
    return-void
.end method

.method public final attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p4, "ID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    iget-object p3, p0, Lm5/z0$e;->a:Ljava/util/Hashtable;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    iput-object p3, p0, Lm5/z0$e;->a:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lm5/z0$e;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final characters([CII)V
    .locals 3

    iget-object v0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {v0, p2, p3, p1}, Lm5/h$a;->j(IILjava/lang/Object;)V

    iget-boolean p1, p0, Lm5/z0$g;->Z:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lm5/z0$g;->c1:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lm5/z0$g;->r:Lm5/h$a;

    sget-object v0, Li5/a;->a:Li5/a;

    iget v1, p1, Lm5/h$a;->h:I

    if-gtz v1, :cond_1

    iget-object v1, p1, Lm5/h$a;->g:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->s0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lm5/h$a;->g:Lm5/w1;

    iget-object p1, p1, Lm5/w1;->f:Lm5/w1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p1, Lm5/h$a;->g:Lm5/w1;

    iget p1, p1, Lm5/h$a;->h:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    :cond_2
    :goto_1
    iget p1, p0, Lm5/z0$g;->f1:I

    if-eqz p1, :cond_4

    iget p1, p0, Lm5/z0$g;->e1:I

    add-int/2addr p1, p3

    iput p1, p0, Lm5/z0$g;->e1:I

    iget p0, p0, Lm5/z0$g;->d1:I

    if-gt p1, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    new-instance p0, Li5/y0;

    const-string p0, "exceeded-entity-bytes"

    invoke-static {p0, p1}, Li5/y0;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final comment([CII)V
    .locals 2

    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    iget-boolean v0, p0, Lm5/h$a;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->d:Lm5/f;

    invoke-virtual {v0, p2, p3, p1}, Lm5/f;->i(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget p2, v0, Lm5/f;->e:I

    iget p3, v0, Lm5/f;->f:I

    new-instance v0, Lm5/g;

    iget-object v1, p0, Lm5/h$a;->c:Lm5/z0;

    invoke-direct {v0, v1}, Lm5/g;-><init>(Lm5/z0;)V

    invoke-virtual {p0, v0}, Lm5/h$a;->h(Lm5/b1;)V

    invoke-virtual {p0, p2, p3, p1}, Lm5/h$a;->k(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lm5/h$a;->d()V

    iput-object v0, p0, Lm5/h$a;->g:Lm5/w1;

    const/4 p1, 0x0

    iput p1, p0, Lm5/h$a;->h:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/h$a;->b:Z

    return-void
.end method

.method public final elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final endCDATA()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/z0$g;->c1:Z

    return-void
.end method

.method public final endDTD()V
    .locals 0

    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final endDocument()V
    .locals 0

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p1}, Lm5/h$a;->d()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lm5/h$a;->b:Z

    iget-boolean p1, p0, Lm5/z0$g;->y:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    if-eqz p1, :cond_0

    iget-object p3, p0, Lm5/z0$g;->r:Lm5/h$a;

    new-instance v0, Li5/o1;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p1

    iget-object p0, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    sub-int/2addr p0, p2

    const/4 p2, -0x1

    invoke-direct {v0, p1, p0, p2}, Li5/o1;-><init>(III)V

    iget-object p0, p3, Lm5/h$a;->g:Lm5/w1;

    iget p1, p3, Lm5/h$a;->h:I

    const-class p2, Li5/o1;

    invoke-virtual {p0, p1, p2, v0}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    :cond_0
    return-void
.end method

.method public final endEntity(Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lm5/z0$g;->f1:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lm5/z0$g;->f1:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lm5/z0$g;->e1:I

    :cond_0
    return-void
.end method

.method public final endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public final internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p0, p1, p2}, Lm5/h$a;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    iput-object p1, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    :cond_0
    return-void
.end method

.method public final skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final startCDATA()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/z0$g;->c1:Z

    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    iput-object p1, p0, Lm5/h$a;->p:Ljava/lang/String;

    iput-object p2, p0, Lm5/h$a;->q:Ljava/lang/String;

    iput-object p3, p0, Lm5/h$a;->r:Ljava/lang/String;

    return-void
.end method

.method public final startDocument()V
    .locals 0

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/16 p2, 0x3a

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Use of undefined namespace prefix: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    new-instance p0, Li5/y0;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p1, Li5/c2;

    invoke-virtual {p0}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Li5/c2;-><init>(Ljava/lang/String;Li5/y0;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lm5/z0$g;->r:Lm5/h$a;

    iget-object v2, p0, Lm5/z0$g;->c:Lm5/z0;

    invoke-virtual {v2, p1, p3}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm5/h$a;->i(Ljavax/xml/namespace/QName;)V

    iget-boolean p1, p0, Lm5/z0$g;->x:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    if-eqz p1, :cond_2

    iget-object p3, p0, Lm5/z0$g;->r:Lm5/h$a;

    new-instance v0, Li5/o1;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p1

    iget-object v2, p0, Lm5/z0$g;->b1:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, p1, v2, v3}, Li5/o1;-><init>(III)V

    iget-object p1, p3, Lm5/h$a;->g:Lm5/w1;

    iget p3, p3, Lm5/h$a;->h:I

    const-class v2, Li5/o1;

    invoke-virtual {p1, p3, v2, v0}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    :cond_2
    iget-object p1, p0, Lm5/z0$g;->g1:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lm5/h$a;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    move p3, v1

    :goto_2
    if-ge p3, p1, :cond_5

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lm5/h$a;->c:Lm5/z0;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v0, v6}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lm5/z0$g;->r:Lm5/h$a;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v3, Lm5/h$a;->c:Lm5/z0;

    invoke-virtual {v6, v5, v4, v0}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final startEntity(Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lm5/z0$g;->f1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm5/z0$g;->f1:I

    return-void
.end method

.method public final startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lm5/z0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Prefix can\'t begin with XML: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    new-instance p0, Li5/y0;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p1, Li5/c2;

    invoke-virtual {p0}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Li5/c2;-><init>(Ljava/lang/String;Li5/y0;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lm5/z0$g;->g1:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
