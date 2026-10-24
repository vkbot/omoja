.class public final Lorg/apache/xmlbeans/impl/schema/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/xmlbeans/impl/schema/z;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public d:Z


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    return-void
.end method


# virtual methods
.method public final a(Li5/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    move-object v1, p2

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/v;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Li5/r;->K()Li5/r$a;

    move-result-object p2

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final b(Li5/t;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj5/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/v;->a(Li5/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Li5/p;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Li5/p;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj5/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AttributeGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/v;->a(Li5/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Li5/u;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj5/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Element"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/v;->a(Li5/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Li5/v;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj5/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IdentityConstraint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/v;->a(Li5/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Li5/y;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Li5/y;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj5/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ModelGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/v;->a(Li5/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Li5/c0;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/c0;->f()Li5/f0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Li5/c0;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Li5/c0;->l0()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v1, "Doc"

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Li5/c0;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Li5/c0;->e0()Ljavax/xml/namespace/QName;

    move-result-object v0

    const-string v1, "AttrType"

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v0

    invoke-interface {v0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v1

    invoke-interface {v1}, Li5/s;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Attr"

    goto :goto_0

    :cond_3
    const-string v1, "Elem"

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Type"

    if-nez v0, :cond_5

    const-string v0, "Anon"

    invoke-static {v0, v2, v3}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj5/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/v;->a(Li5/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lorg/apache/xmlbeans/impl/schema/l0;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/v;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/v;->d:Z

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    new-instance v4, Li5/v$a;

    invoke-direct {v4, v6, v3}, Li5/r$a;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p0, Li5/e0;

    const-string p1, "Schema index has an unrecognized entry of type "

    invoke-static {p1, v4}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v3, v1}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance v4, Li5/p$a;

    invoke-direct {v4, v6, v3}, Li5/r$a;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v4, Li5/y$a;

    invoke-direct {v4, v6, v3}, Li5/r$a;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v4, Li5/t$a;

    invoke-direct {v4, v6, v3}, Li5/r$a;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v4, Li5/u$a;

    invoke-direct {v4, v6, v3}, Li5/r$a;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v4, Li5/c0$a;

    invoke-direct {v4, v6, v3}, Li5/r$a;-><init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonempty handle set before read"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
