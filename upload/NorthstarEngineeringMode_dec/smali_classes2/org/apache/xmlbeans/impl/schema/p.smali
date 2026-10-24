.class public final Lorg/apache/xmlbeans/impl/schema/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/a0;


# instance fields
.field public a:Ljavax/xml/namespace/QName;

.field public b:Li5/c0$a;

.field public c:Z

.field public d:Li5/c0$a;

.field public e:Ljava/lang/String;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Li5/c0$a;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Li5/k;

.field public s:Lorg/apache/xmlbeans/impl/schema/h0;

.field public t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->f:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->c:Z

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->j:I

    return p0
.end method

.method public final d()Li5/i0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->s:Lorg/apache/xmlbeans/impl/schema/h0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/h0;->a()Li5/i0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->q:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->h:I

    return p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->o:Z

    return p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->a:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final getType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->b:Li5/c0$a;

    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public final h()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->d:Li5/c0$a;

    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public final i()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->g:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->n:Z

    return p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final m()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->m:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final n()[Ljavax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/p;->t:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->a:Ljavax/xml/namespace/QName;

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Ljavax/xml/namespace/QName;

    :goto_0
    return-object v0
.end method

.method public final o()Li5/k;
    .locals 13

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/p;->c:Z

    if-eqz v0, :cond_0

    sget-object p0, Li5/k;->Z:Li5/k;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/p;->r:Li5/k;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/p;->h()Li5/c0;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/r;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->D()[Li5/a0;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/schema/r;->w:Li5/z;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/schema/r;->q(Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v4

    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    check-cast v7, Lorg/apache/xmlbeans/impl/schema/p;

    iget-object v8, v7, Lorg/apache/xmlbeans/impl/schema/p;->a:Ljavax/xml/namespace/QName;

    invoke-static {v8, v2, v3}, Lorg/apache/xmlbeans/impl/schema/r;->t(Ljavax/xml/namespace/QName;Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v8

    new-instance v9, Li5/l;

    invoke-direct {v9, v4}, Li5/l;-><init>(Li5/k;)V

    iget-boolean v10, v9, Li5/l;->c:Z

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Li5/k;->f()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v8}, Li5/k;->c()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v8}, Li5/k;->e()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v8}, Li5/k;->b()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v9, v10, v11, v12, v8}, Li5/l;->b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Li5/k;->f()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v8}, Li5/k;->c()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v8}, Li5/k;->e()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v8}, Li5/k;->b()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v9, v10, v11, v12, v8}, Li5/l;->i(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    :goto_1
    invoke-virtual {v9}, Li5/l;->k()Li5/k;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xmlbeans/impl/schema/p;->r:Li5/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_3
    :goto_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->r:Li5/k;

    return-object p0
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->i:I

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->p:Z

    return p0
.end method

.method public final r()V
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/p;->l:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
