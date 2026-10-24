.class public final Lorg/apache/xmlbeans/impl/schema/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/v;


# instance fields
.field public final a:Lorg/apache/xmlbeans/impl/schema/g;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Li5/v$a;

.field public e:Ljavax/xml/namespace/QName;

.field public f:I

.field public g:Li5/o;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public volatile j:Lr5/b;

.field public volatile k:[Lr5/b;

.field public final l:Li5/v$a;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->h:Ljava/util/Map;

    new-instance v0, Li5/v$a;

    invoke-direct {v0, p0}, Li5/r$a;-><init>(Li5/r;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->l:Li5/v$a;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/k;->a:Lorg/apache/xmlbeans/impl/schema/g;

    return-void
.end method


# virtual methods
.method public final E0()Lr5/b;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->j:Lr5/b;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/k;->a()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->j:Lr5/b;
    :try_end_0
    .catch Lr5/b$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final F0()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->h:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final H()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final I0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final J()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->f:I

    return p0
.end method

.method public final K()Li5/r$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->l:Li5/v$a;

    return-object p0
.end method

.method public final a()V
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/k;->h:Ljava/util/Map;

    const-string v2, "$this"

    invoke-static {v1, v0, v2}, Lr5/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lr5/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->j:Lr5/b;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lr5/b;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/k;->c:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/k;->h:Ljava/util/Map;

    invoke-static {v5, v4, v2}, Lr5/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lr5/b;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/k;->k:[Lr5/b;

    return-void
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->a:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->e:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final j0()Li5/v;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->d:Li5/v$a;

    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/v;

    return-object p0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final p0()[Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->c:[Ljava/lang/String;

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final s()Li5/o;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k;->g:Li5/o;

    return-object p0
.end method

.method public final y0(I)Lr5/b;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->k:[Lr5/b;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/k;->a()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/k;->k:[Lr5/b;
    :try_end_0
    .catch Lr5/b$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    aget-object p0, v0, p1

    return-object p0
.end method
