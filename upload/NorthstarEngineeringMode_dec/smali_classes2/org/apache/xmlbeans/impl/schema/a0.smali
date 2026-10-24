.class public final Lorg/apache/xmlbeans/impl/schema/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/a0$a;
    }
.end annotation


# instance fields
.field public a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

.field public b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

.field public c:I

.field public d:I

.field public e:Li5/z;

.field public f:Lorg/apache/xmlbeans/impl/schema/a0$a;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li5/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/a0;->b(Li5/z;)V

    return-void
.end method

.method public static a([Lorg/apache/xmlbeans/impl/schema/a0$a;)[Lorg/apache/xmlbeans/impl/schema/a0$a;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    new-array v1, v0, [Lorg/apache/xmlbeans/impl/schema/a0$a;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, p0

    :goto_1
    if-ge v2, v0, :cond_3

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/a0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final b(Li5/z;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/a0;->a([Lorg/apache/xmlbeans/impl/schema/a0$a;)[Lorg/apache/xmlbeans/impl/schema/a0$a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/a0;->a([Lorg/apache/xmlbeans/impl/schema/a0$a;)[Lorg/apache/xmlbeans/impl/schema/a0$a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/a0;->f(Li5/z;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->g()V

    return-void
.end method

.method public final d(Li5/z;Z)V
    .locals 0

    if-nez p2, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->g()V

    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 6

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    array-length v4, v2

    iget v5, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    if-ne v4, v5, :cond_1

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/a0;->a([Lorg/apache/xmlbeans/impl/schema/a0$a;)[Lorg/apache/xmlbeans/impl/schema/a0$a;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    iput-object v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    iget v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iput v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    iput v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    iget v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->c:I

    iput v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->c:I

    iget v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    iput v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    iget v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    iput v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    iget-object v4, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    if-eqz v4, :cond_2

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, v2, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    array-length v2, v0

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    return v3
.end method

.method public final f(Li5/z;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/a0;->a([Lorg/apache/xmlbeans/impl/schema/a0$a;)[Lorg/apache/xmlbeans/impl/schema/a0$a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    aget-object v0, v0, v1

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {p1}, Li5/z;->S0()I

    move-result v1

    iput v1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    invoke-interface {p1}, Li5/z;->c0()I

    move-result v1

    iput v1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->c:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iput v1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    invoke-interface {p1}, Li5/z;->q()I

    move-result v1

    iput v1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    invoke-interface {p1}, Li5/z;->t0()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget p1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    new-array p1, p1, [Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    return-void
.end method

.method public final g()V
    .locals 6

    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->d:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->b:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    aget-object v5, v4, v0

    aput-object v5, v1, v2

    aput-object v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    return-void
.end method

.method public final h(Ljavax/xml/namespace/QName;Z)Z
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_0
    const/4 v0, -0x2

    move v2, v0

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v5, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    if-le v4, v5, :cond_2

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    if-ne v2, v0, :cond_2

    iget v0, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->c:I

    iput v0, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    :cond_2
    iget v0, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v5, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->c:I

    const/4 v6, 0x1

    if-lt v4, v5, :cond_5

    iget v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    if-gt v4, v5, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->e()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_6

    :cond_4
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v4, v3

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    goto :goto_1

    :cond_5
    iget-object v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v3}, Li5/z;->t0()I

    move-result v3

    if-eq v3, v6, :cond_11

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v3, p1}, Li5/z;->S(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    if-ge v4, v3, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_6
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v0, p1, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    add-int/2addr v0, v6

    iput v0, p1, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/a0;->d(Li5/z;Z)V

    return v6

    :cond_7
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v3, p1}, Li5/z;->S(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    if-ge v4, v3, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_8
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v0, p1, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    add-int/2addr v0, v6

    iput v0, p1, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/a0;->d(Li5/z;Z)V

    return v6

    :cond_9
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    :goto_2
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v5, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    if-ge v3, v5, :cond_d

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v4, v3}, Li5/z;->Y(I)Li5/z;

    move-result-object v4

    invoke-interface {v4, p1}, Li5/z;->S(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/a0;->f(Li5/z;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v4}, Li5/z;->v0()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    if-nez v4, :cond_b

    iget v4, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    if-ge v4, v3, :cond_16

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    iget v3, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    add-int/2addr v3, v6

    iput v3, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iput v1, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    goto/16 :goto_0

    :cond_e
    move v3, v1

    :goto_3
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v5, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    if-ge v3, v5, :cond_10

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v4, v3}, Li5/z;->Y(I)Li5/z;

    move-result-object v4

    invoke-interface {v4, p1}, Li5/z;->S(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v5, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    add-int/2addr v5, v6

    iput v5, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/a0;->f(Li5/z;)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_10
    iget v3, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v5, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    if-ge v3, v5, :cond_16

    iget-object v3, v4, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v3}, Li5/z;->v0()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_11
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    move v4, v1

    :goto_4
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v7, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->f:I

    if-ge v4, v7, :cond_15

    iget-object v7, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_12

    goto :goto_5

    :cond_12
    iget-object v5, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->a:Li5/z;

    invoke-interface {v5, v4}, Li5/z;->Y(I)Li5/z;

    move-result-object v5

    invoke-interface {v5, p1}, Li5/z;->S(Ljavax/xml/namespace/QName;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    iget v7, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    add-int/2addr v7, v6

    iput v7, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    aput-boolean v6, v3, v4

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/a0;->f(Li5/z;)V

    goto/16 :goto_0

    :cond_13
    invoke-interface {v5}, Li5/z;->v0()Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_15
    if-ge v3, v7, :cond_19

    iget v3, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iget v4, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->d:I

    if-ge v3, v4, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_16
    iget v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->c:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/schema/a0;->g:I

    if-gt v4, v5, :cond_18

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->e()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_6
    if-nez p1, :cond_17

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/a0;->d(Li5/z;Z)V

    return v6

    :cond_17
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/a0;->c()V

    return v1

    :cond_18
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/a0;->a:[Lorg/apache/xmlbeans/impl/schema/a0$a;

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v4, v3

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/schema/a0;->f:Lorg/apache/xmlbeans/impl/schema/a0$a;

    goto/16 :goto_0

    :cond_19
    iget v3, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    add-int/2addr v3, v6

    iput v3, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->b:I

    iput v1, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->e:I

    iget-object v3, v5, Lorg/apache/xmlbeans/impl/schema/a0$a;->g:[Z

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto/16 :goto_0
.end method
