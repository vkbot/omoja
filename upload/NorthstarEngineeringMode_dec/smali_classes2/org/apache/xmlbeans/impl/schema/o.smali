.class public Lorg/apache/xmlbeans/impl/schema/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/z;


# static fields
.field public static final s:Ljava/math/BigInteger;


# instance fields
.field public a:I

.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:[Li5/z;

.field public e:Li5/k;

.field public f:Z

.field public g:I

.field public h:I

.field public i:Li5/k;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Ljavax/xml/namespace/QName;

.field public o:Z

.field public p:Li5/c0$a;

.field public q:Lorg/apache/xmlbeans/XmlObject;

.field public r:Lorg/apache/xmlbeans/impl/schema/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/o;->s:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()Li5/k;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->e:Li5/k;

    return-object p0
.end method

.method public final E()[Li5/z;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->d:[Li5/z;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Li5/z;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final S(Ljavax/xml/namespace/QName;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->e:Li5/k;

    invoke-virtual {p0, p1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final S0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->g:I

    return p0
.end method

.method public final T()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->j:I

    return p0
.end method

.method public final U0(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/o;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/o;->l:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/o;->m:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/o;->q:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public final Y(I)Li5/z;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->d:[Li5/z;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final a()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->b:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->h:I

    return p0
.end method

.method public final d()Li5/i0;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/o;->r:Lorg/apache/xmlbeans/impl/schema/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/h0;->a()Li5/i0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/o;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Li5/i0;->s:Li5/c0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/o;->getType()Li5/c0;

    move-result-object v1

    invoke-interface {v0, v1}, Li5/c0;->G0(Li5/c0;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/o;->q:Lorg/apache/xmlbeans/XmlObject;

    if-eqz v0, :cond_1

    sget-object v0, Li5/b2;->k0:Li5/c0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/o;->getType()Li5/c0;

    move-result-object v1

    invoke-interface {v0, v1}, Li5/c0;->G0(Li5/c0;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/o;->q:Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/o;->getType()Li5/c0;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->k:Ljava/lang/String;

    invoke-interface {v0, p0}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/o;->getType()Li5/c0;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->k:Ljava/lang/String;

    invoke-interface {v0, p0}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->o:Z

    return p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->n:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final getType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->p:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0
.end method

.method public final i()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->c:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final i0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->l:Z

    return p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final q()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->d:[Li5/z;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public final r()Li5/k;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->i:Li5/k;

    return-object p0
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->m:Z

    return p0
.end method

.method public final t0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->a:I

    return p0
.end method

.method public final v0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/o;->f:Z

    return p0
.end method
