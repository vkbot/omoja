.class public final Lm5/g1$i;
.super Lm5/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/g1$i$a;
    }
.end annotation


# instance fields
.field public final r:Lorg/xml/sax/ContentHandler;

.field public final s:Lorg/xml/sax/ext/LexicalHandler;

.field public final t:Lorg/xml/sax/helpers/AttributesImpl;

.field public u:[C

.field public final v:Z


# direct methods
.method public constructor <init>(Lm5/h;Li5/z1;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lm5/g1;-><init>(Lm5/h;Li5/z1;)V

    iput-object p3, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    iput-object p4, p0, Lm5/g1$i;->s:Lorg/xml/sax/ext/LexicalHandler;

    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object p1, p0, Lm5/g1$i;->t:Lorg/xml/sax/helpers/AttributesImpl;

    sget-object p1, Li5/z1$a;->o1:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lm5/g1$i;->v:Z

    invoke-interface {p3}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lm5/g1;->v()Z

    move-result p1
    :try_end_0
    .catch Lm5/g1$i$a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lm5/g1$i$a;->c:Lorg/xml/sax/SAXException;

    throw p0
.end method


# virtual methods
.method public final d(Lm5/g1$h;)V
    .locals 6

    iget-object v0, p0, Lm5/g1$i;->s:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    :try_start_0
    invoke-virtual {p1}, Lm5/g1$h;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    invoke-interface {v0, p0, v2, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, [C

    if-eqz v3, :cond_1

    check-cast v1, [C

    iget p0, p1, Lm5/g1$h;->a:I

    iget v2, p1, Lm5/g1$h;->b:I

    invoke-interface {v0, v1, p0, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lm5/g1$i;->u:[C

    if-eqz v3, :cond_2

    array-length v3, v3

    iget v4, p1, Lm5/g1$h;->b:I

    if-ge v3, v4, :cond_3

    :cond_2
    iget v3, p1, Lm5/g1$h;->b:I

    const/16 v4, 0x400

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [C

    iput-object v3, p0, Lm5/g1$i;->u:[C

    :cond_3
    iget-object v3, p0, Lm5/g1$i;->u:[C

    iget v4, p1, Lm5/g1$h;->a:I

    iget v5, p1, Lm5/g1$h;->b:I

    invoke-static {v3, v2, v1, v4, v5}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget-object p0, p0, Lm5/g1$i;->u:[C

    iget v1, p1, Lm5/g1$h;->b:I

    invoke-interface {v0, p0, v2, v1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lm5/g1$h;->o()V

    goto :goto_2

    :goto_1
    new-instance p1, Lm5/g1$i$a;

    invoke-direct {p1, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lm5/g1$i;->s:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$i$a;

    invoke-direct {p1, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10

    iget-object v6, p0, Lm5/g1$i;->t:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v6}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    iget-boolean v7, p0, Lm5/g1;->i:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lm5/g1$i;->y()V

    :cond_0
    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lm5/g1$i;->z(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    invoke-virtual {p0}, Lm5/g1$i;->y()V

    :cond_2
    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lm5/g1$i;->z(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p3, v0, p0, v6}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$i$a;

    invoke-direct {p1, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Lm5/g1$h;)V
    .locals 3

    iget-object v0, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lm5/g1$i;->z(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lm5/g1;->p()V

    :goto_0
    invoke-virtual {p0}, Lm5/g1;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm5/g1;->q()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    invoke-virtual {p0}, Lm5/g1;->s()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p1, Lm5/g1$i$a;

    invoke-direct {p1, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method

.method public final i(Lm5/g1$h;)V
    .locals 3

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lm5/g1$h;->a:I

    iget v2, p1, Lm5/g1$h;->b:I

    invoke-static {v1, v2, v0}, Lm5/f;->c(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lm5/g1$h;->o()V

    :try_start_0
    iget-object p0, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$i$a;

    invoke-direct {p1, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(Lm5/g1$h;)V
    .locals 6

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, [C
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, [C

    iget p0, p1, Lm5/g1$h;->a:I

    iget p1, p1, Lm5/g1$h;->b:I

    invoke-interface {v2, v0, p0, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lm5/g1$i;->u:[C

    if-nez v1, :cond_1

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lm5/g1$i;->u:[C

    :cond_1
    :goto_0
    iget v1, p1, Lm5/g1$h;->b:I

    if-lez v1, :cond_2

    iget-object v3, p0, Lm5/g1$i;->u:[C

    array-length v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lm5/g1$i;->u:[C

    iget v4, p1, Lm5/g1$h;->a:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4, v1}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget-object v3, p0, Lm5/g1$i;->u:[C

    invoke-interface {v2, v3, v5, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget v3, p1, Lm5/g1$h;->a:I

    add-int/2addr v3, v1

    iput v3, p1, Lm5/g1$h;->a:I

    iget v3, p1, Lm5/g1$h;->b:I

    sub-int/2addr v3, v1

    iput v3, p1, Lm5/g1$h;->b:I
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    new-instance p1, Lm5/g1$i$a;

    invoke-direct {p1, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method

.method public final y()V
    .locals 10

    invoke-virtual {p0}, Lm5/g1;->p()V

    :goto_0
    invoke-virtual {p0}, Lm5/g1;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lm5/g1;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lm5/g1;->r()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object v0, p0, Lm5/g1$i;->r:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3, v9}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lm5/g1$i;->v:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lm5/g1$i;->t:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v2, "http://www.w3.org/2000/xmlns/"

    const-string v0, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDATA"

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lm5/g1$i;->t:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v5, "http://www.w3.org/2000/xmlns/"

    const-string v6, "xmlns"

    const-string v7, "xmlns"

    const-string v8, "CDATA"

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lm5/g1;->s()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lm5/g1$i$a;

    invoke-direct {v0, p0}, Lm5/g1$i$a;-><init>(Lorg/xml/sax/SAXException;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final z(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, ":"

    invoke-static {p0, v0, p1}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
