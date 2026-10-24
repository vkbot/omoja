.class public final Lorg/apache/xmlbeans/impl/schema/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/d$a;
    }
.end annotation


# instance fields
.field public a:Lorg/apache/xmlbeans/impl/schema/g;

.field public b:[Ljava/lang/String;

.field public c:[Lq5/a$a;

.field public d:[Ljava/lang/String;

.field public e:[Lq5/c$a;

.field public f:[Li5/o$a;


# virtual methods
.method public final K()Li5/r$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final Q()[Lorg/apache/xmlbeans/XmlObject;
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/d;->e:[Lq5/c$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/d;->d:[Ljava/lang/String;

    array-length v1, v0

    new-array v2, v1, [Lq5/c$a;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/d;->e:[Lq5/c$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/d;->e:[Lq5/c$a;

    sget-object v6, Lq5/c;->G0:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v7, v6, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object v6, v6, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v7, v3, v6, v4}, Li5/d0;->parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    check-cast v3, Lq5/c;

    invoke-interface {v3}, Lq5/c;->p0()Lq5/c$a;

    aput-object v4, v5, v2
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/d;->e:[Lq5/c$a;

    sget-object v5, Lq5/c;->G0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    check-cast v5, Lq5/c;

    invoke-interface {v5}, Lq5/c;->p0()Lq5/c$a;

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/d;->e:[Lq5/c$a;

    return-object p0
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/d;->a:Lorg/apache/xmlbeans/impl/schema/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getAttributes()[Li5/o$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/d;->f:[Li5/o$a;

    return-object p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final o()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final s0()[Lorg/apache/xmlbeans/XmlObject;
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/d;->c:[Lq5/a$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/d;->b:[Ljava/lang/String;

    array-length v1, v0

    new-array v2, v1, [Lq5/a$a;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/d;->c:[Lq5/a$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/d;->c:[Lq5/a$a;

    sget-object v6, Lq5/a;->C0:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v7, v6, Lorg/apache/xmlbeans/impl/schema/c;->b:Li5/f0;

    iget-object v6, v6, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    invoke-interface {v7, v3, v6, v4}, Li5/d0;->parse(Ljava/lang/String;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    check-cast v3, Lq5/a;

    invoke-interface {v3}, Lq5/a;->e1()Lq5/a$a;

    aput-object v4, v5, v2
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/d;->c:[Lq5/a$a;

    sget-object v5, Lq5/a;->C0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    check-cast v5, Lq5/a;

    invoke-interface {v5}, Lq5/a;->e1()Lq5/a$a;

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/d;->c:[Lq5/a$a;

    return-object p0
.end method
