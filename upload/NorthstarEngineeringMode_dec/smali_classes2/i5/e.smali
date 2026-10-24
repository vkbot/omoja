.class public final Li5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final h1:Ljava/math/BigInteger;


# instance fields
.field public Z:I

.field public b1:I

.field public c:I

.field public c1:I

.field public d1:Ljava/math/BigDecimal;

.field public e1:I

.field public f1:I

.field public g1:I

.field public r:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Li5/e;->h1:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li5/f;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Li5/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Li5/f;->s()I

    move-result v0

    invoke-interface {p1}, Li5/f;->r()I

    move-result v1

    invoke-interface {p1}, Li5/f;->u()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Li5/e;->N(III)V

    .line 5
    :cond_0
    invoke-interface {p1}, Li5/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Li5/f;->g()I

    move-result v0

    invoke-interface {p1}, Li5/f;->i()I

    move-result v1

    invoke-interface {p1}, Li5/f;->h()I

    move-result v2

    invoke-interface {p1}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Li5/e;->M(IIILjava/math/BigDecimal;)V

    .line 7
    :cond_1
    invoke-interface {p1}, Li5/f;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {p1}, Li5/f;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Li5/e;->J(I)V

    .line 9
    :cond_2
    invoke-interface {p1}, Li5/f;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1}, Li5/f;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Li5/e;->L(I)V

    .line 11
    :cond_3
    invoke-interface {p1}, Li5/f;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p1}, Li5/f;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Li5/e;->O(I)V

    :cond_4
    return-void
.end method

.method public static B(I)I
    .locals 3

    const/16 v0, 0x1e

    and-int/2addr p0, v0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x4

    if-eq p0, v1, :cond_6

    const/4 v1, 0x6

    if-eq p0, v1, :cond_5

    const/16 v1, 0x8

    if-eq p0, v1, :cond_4

    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    const/16 v1, 0x10

    const/16 v2, 0xe

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    const/16 p0, 0xf

    return p0

    :cond_2
    return v1

    :cond_3
    const/16 p0, 0x13

    return p0

    :cond_4
    const/16 p0, 0x14

    return p0

    :cond_5
    const/16 p0, 0x11

    return p0

    :cond_6
    const/16 p0, 0x15

    return p0

    :cond_7
    const/16 p0, 0x12

    return p0
.end method

.method public static D(Li5/f;Li5/f;)I
    .locals 9

    invoke-interface {p0}, Li5/f;->getFlags()I

    move-result v0

    invoke-interface {p1}, Li5/f;->getFlags()I

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1f

    const/16 v2, 0xe

    if-nez v1, :cond_5

    invoke-interface {p0}, Li5/f;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Li5/f;->r()I

    move-result v0

    invoke-interface {p0}, Li5/f;->r()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Li5/f;->u()I

    move-result v0

    invoke-interface {p0}, Li5/f;->u()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Li5/f;->s()I

    move-result v0

    invoke-interface {p0}, Li5/f;->s()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_0
    new-instance v0, Li5/e;

    invoke-direct {v0, p1}, Li5/e;-><init>(Li5/f;)V

    invoke-interface {p0}, Li5/f;->getFlags()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-interface {p0}, Li5/f;->m()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {v0}, Li5/e;->z()V

    new-instance p1, Li5/e;

    invoke-direct {p1, p0}, Li5/e;-><init>(Li5/f;)V

    invoke-virtual {p1}, Li5/e;->z()V

    move-object p0, p1

    :cond_3
    invoke-interface {p0}, Li5/f;->s()I

    move-result p1

    invoke-interface {p0}, Li5/f;->r()I

    move-result v1

    invoke-interface {p0}, Li5/f;->u()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Li5/e;->H(III)V

    move-object p1, v0

    :cond_4
    invoke-static {p0, p1}, Li5/e;->E(Li5/f;Li5/f;)I

    move-result p0

    return p0

    :cond_5
    and-int/lit8 v0, v0, 0x1e

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-interface {p0}, Li5/f;->q()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1, p0}, Li5/e;->D(Li5/f;Li5/f;)I

    move-result p0

    if-ne p0, v1, :cond_7

    goto :goto_0

    :cond_7
    neg-int v1, p0

    :goto_0
    return v1

    :cond_8
    new-instance v0, Li5/e;

    invoke-direct {v0, p0}, Li5/e;-><init>(Li5/f;)V

    invoke-interface {p0}, Li5/f;->getFlags()I

    move-result v3

    and-int/2addr v3, v2

    const/16 v4, 0xc

    const/4 v5, 0x1

    if-ne v3, v4, :cond_a

    invoke-interface {p0}, Li5/f;->f()I

    move-result v3

    const/16 v4, 0x1d

    const/4 v6, 0x3

    const/16 v7, 0x1c

    if-ne v3, v7, :cond_9

    invoke-interface {p0}, Li5/f;->j()I

    move-result v3

    if-ne v3, v1, :cond_9

    invoke-interface {p1}, Li5/f;->f()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-interface {p1}, Li5/f;->j()I

    move-result v3

    if-ne v3, v6, :cond_a

    invoke-virtual {v0, v4}, Li5/e;->J(I)V

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Li5/f;->f()I

    move-result v3

    if-ne v3, v7, :cond_a

    invoke-interface {p1}, Li5/f;->j()I

    move-result v3

    if-ne v3, v1, :cond_a

    invoke-interface {p0}, Li5/f;->f()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-interface {p0}, Li5/f;->j()I

    move-result v3

    if-ne v3, v6, :cond_a

    invoke-virtual {v0, v1}, Li5/e;->L(I)V

    invoke-virtual {v0, v4}, Li5/e;->J(I)V

    :cond_a
    :goto_1
    invoke-virtual {v0}, Li5/e;->z()V

    new-instance v3, Li5/e;

    invoke-direct {v3, p1}, Li5/e;-><init>(Li5/f;)V

    invoke-virtual {v3}, Li5/e;->z()V

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v2, v4}, Li5/e;->N(III)V

    invoke-interface {p0}, Li5/f;->s()I

    move-result v6

    invoke-interface {p0}, Li5/f;->r()I

    move-result v7

    invoke-interface {p0}, Li5/f;->u()I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Li5/e;->H(III)V

    invoke-static {v0, v3}, Li5/e;->E(Li5/f;Li5/f;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    return v7

    :cond_b
    invoke-virtual {v3, p1}, Li5/e;->K(Li5/f;)V

    invoke-virtual {v3}, Li5/e;->z()V

    invoke-virtual {v3, v7, v2, v4}, Li5/e;->N(III)V

    invoke-interface {p0}, Li5/f;->s()I

    move-result p1

    invoke-interface {p0}, Li5/f;->r()I

    move-result v2

    invoke-interface {p0}, Li5/f;->u()I

    move-result p0

    invoke-virtual {v3, p1, v2, p0}, Li5/e;->H(III)V

    invoke-static {v0, v3}, Li5/e;->E(Li5/f;Li5/f;)I

    move-result p0

    if-ne p0, v5, :cond_c

    return v5

    :cond_c
    return v1
.end method

.method public static E(Li5/f;Li5/f;)I
    .locals 5

    invoke-interface {p0}, Li5/f;->v()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Li5/f;->b()I

    move-result v0

    invoke-interface {p0}, Li5/f;->b()I

    move-result v3

    if-ge v3, v0, :cond_0

    return v2

    :cond_0
    if-le v3, v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Li5/f;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Li5/f;->j()I

    move-result v0

    invoke-interface {p0}, Li5/f;->j()I

    move-result v3

    if-ge v3, v0, :cond_2

    return v2

    :cond_2
    if-le v3, v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p0}, Li5/f;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Li5/f;->f()I

    move-result v0

    invoke-interface {p0}, Li5/f;->f()I

    move-result v3

    if-ge v3, v0, :cond_4

    return v2

    :cond_4
    if-le v3, v0, :cond_5

    return v1

    :cond_5
    invoke-interface {p0}, Li5/f;->m()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Li5/f;->g()I

    move-result v0

    invoke-interface {p0}, Li5/f;->g()I

    move-result v4

    if-ge v4, v0, :cond_6

    return v2

    :cond_6
    if-le v4, v0, :cond_7

    return v1

    :cond_7
    invoke-interface {p1}, Li5/f;->i()I

    move-result v0

    invoke-interface {p0}, Li5/f;->i()I

    move-result v4

    if-ge v4, v0, :cond_8

    return v2

    :cond_8
    if-le v4, v0, :cond_9

    return v1

    :cond_9
    invoke-interface {p1}, Li5/f;->h()I

    move-result v0

    invoke-interface {p0}, Li5/f;->h()I

    move-result v4

    if-ge v4, v0, :cond_a

    return v2

    :cond_a
    if-le v4, v0, :cond_b

    return v1

    :cond_b
    invoke-interface {p1}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {p0}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_c

    if-nez p1, :cond_c

    return v3

    :cond_c
    if-nez p0, :cond_d

    sget-object p0, Li5/d;->j1:Ljava/math/BigDecimal;

    :cond_d
    if-nez p1, :cond_e

    sget-object p1, Li5/d;->j1:Ljava/math/BigDecimal;

    :cond_e
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    :cond_f
    return v3
.end method

.method public static F(Li5/f;)Z
    .locals 6

    invoke-interface {p0}, Li5/f;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Li5/f;->b()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Li5/f;->t()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p0}, Li5/f;->j()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-interface {p0}, Li5/f;->j()I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-interface {p0}, Li5/f;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Li5/f;->f()I

    move-result v0

    if-lt v0, v2, :cond_8

    invoke-interface {p0}, Li5/f;->f()I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_8

    invoke-interface {p0}, Li5/f;->f()I

    move-result v0

    const/16 v4, 0x1c

    if-le v0, v4, :cond_9

    invoke-interface {p0}, Li5/f;->t()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Li5/f;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Li5/f;->f()I

    move-result v0

    invoke-interface {p0}, Li5/f;->b()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {p0}, Li5/f;->b()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Li5/f;->b()I

    move-result v3

    add-int/2addr v3, v2

    :goto_0
    invoke-interface {p0}, Li5/f;->j()I

    move-result v4

    invoke-static {v3, v4}, Li5/e;->d(II)I

    move-result v3

    if-le v0, v3, :cond_9

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Li5/f;->f()I

    move-result v0

    invoke-interface {p0}, Li5/f;->j()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const/16 v3, 0x1d

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v3, 0x1e

    :cond_7
    :goto_2
    if-le v0, v3, :cond_9

    :cond_8
    :goto_3
    return v1

    :cond_9
    invoke-interface {p0}, Li5/f;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Li5/f;->g()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-interface {p0}, Li5/f;->g()I

    move-result v0

    const/16 v3, 0x17

    if-gt v0, v3, :cond_a

    invoke-interface {p0}, Li5/f;->i()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-interface {p0}, Li5/f;->i()I

    move-result v0

    const/16 v3, 0x3b

    if-gt v0, v3, :cond_a

    invoke-interface {p0}, Li5/f;->h()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-interface {p0}, Li5/f;->h()I

    move-result v0

    if-gt v0, v3, :cond_a

    invoke-interface {p0}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-interface {p0}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v3, Li5/d;->k1:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_c

    :cond_a
    invoke-interface {p0}, Li5/f;->g()I

    move-result v0

    const/16 v3, 0x18

    if-ne v0, v3, :cond_b

    invoke-interface {p0}, Li5/f;->i()I

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0}, Li5/f;->h()I

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v3, Li5/d;->j1:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    return v1

    :cond_c
    invoke-interface {p0}, Li5/f;->q()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Li5/f;->s()I

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p0}, Li5/f;->r()I

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p0}, Li5/f;->u()I

    move-result v0

    if-eqz v0, :cond_11

    :cond_d
    invoke-interface {p0}, Li5/f;->s()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    invoke-interface {p0}, Li5/f;->s()I

    move-result v0

    if-ne v0, v2, :cond_10

    :cond_e
    invoke-interface {p0}, Li5/f;->r()I

    move-result v0

    if-ltz v0, :cond_10

    invoke-interface {p0}, Li5/f;->u()I

    move-result v0

    if-ltz v0, :cond_10

    invoke-interface {p0}, Li5/f;->r()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_f

    invoke-interface {p0}, Li5/f;->u()I

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    invoke-interface {p0}, Li5/f;->r()I

    move-result v0

    if-ge v0, v3, :cond_10

    invoke-interface {p0}, Li5/f;->u()I

    move-result p0

    const/16 v0, 0x3c

    if-lt p0, v0, :cond_11

    :cond_10
    return v1

    :cond_11
    return v2
.end method

.method public static G(Li5/f;)I
    .locals 4

    invoke-interface {p0}, Li5/f;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Li5/f;->f()I

    move-result v0

    invoke-interface {p0}, Li5/f;->j()I

    move-result v1

    invoke-interface {p0}, Li5/f;->b()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    add-int/lit16 v0, v0, -0x7d4b

    add-int/lit16 v2, p0, 0x12c0

    add-int/lit8 v3, v1, -0xe

    div-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x5b5

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v0, v3, 0xc

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x16f

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v2

    add-int/lit16 p0, p0, 0x1324

    add-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    sub-int/2addr v1, p0

    if-ltz v1, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "date too far in the past (year allowed to -4713)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot do date math without a complete date"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(IJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gez p0, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_2

    int-to-long v0, p0

    div-long/2addr p1, v0

    goto :goto_1

    :cond_2
    int-to-long v0, p0

    sub-long p0, v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    neg-long p1, p0

    :goto_1
    return-wide p1
.end method

.method public static d(II)I
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    rem-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_2

    rem-int/lit8 p1, p0, 0x64

    if-nez p1, :cond_1

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/16 p0, 0x1d

    goto :goto_0

    :cond_2
    const/16 p0, 0x1c

    goto :goto_0

    :cond_3
    const/16 p0, 0x1f

    :goto_0
    return p0

    :cond_4
    :goto_1
    const/16 p0, 0x1e

    return p0
.end method


# virtual methods
.method public final A(IIIIIIILjava/math/BigDecimal;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    if-nez p7, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Li5/e;->m()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot do time math without a complete time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v2, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Li5/e;->p()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot do date math without a complete date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-nez p3, :cond_8

    if-eqz p2, :cond_a

    :cond_8
    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Li5/e;->w()V

    :cond_9
    iget v7, v0, Li5/e;->x:I

    mul-int v8, v1, p3

    add-int/2addr v8, v7

    int-to-long v7, v8

    int-to-long v9, v5

    sub-long/2addr v7, v9

    const/16 v9, 0xc

    invoke-static {v9, v7, v8}, Li5/e;->c(IJ)J

    move-result-wide v10

    int-to-long v12, v9

    mul-long/2addr v10, v12

    sub-long v10, v7, v10

    long-to-int v10, v10

    add-int/2addr v10, v5

    iput v10, v0, Li5/e;->x:I

    iget v10, v0, Li5/e;->r:I

    mul-int v11, v1, p2

    add-int/2addr v11, v10

    invoke-static {v9, v7, v8}, Li5/e;->c(IJ)J

    move-result-wide v7

    long-to-int v7, v7

    add-int/2addr v11, v7

    iput v11, v0, Li5/e;->r:I

    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, v0, Li5/e;->r:I

    iget v8, v0, Li5/e;->x:I

    invoke-static {v7, v8}, Li5/e;->d(II)I

    move-result v7

    iget v8, v0, Li5/e;->y:I

    if-le v8, v7, :cond_a

    iput v7, v0, Li5/e;->y:I

    :cond_a
    if-eqz v6, :cond_e

    if-eqz v3, :cond_d

    invoke-virtual/range {p8 .. p8}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v6}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-nez v6, :cond_b

    if-ne v1, v5, :cond_b

    iput-object v3, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    goto :goto_5

    :cond_b
    if-ne v1, v5, :cond_c

    iget-object v5, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v5, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_4

    :cond_c
    iget-object v5, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v5, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    :goto_4
    iput-object v3, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    :cond_d
    :goto_5
    iget v3, v0, Li5/e;->c1:I

    mul-int v5, v1, p7

    add-int/2addr v5, v3

    iput v5, v0, Li5/e;->c1:I

    iget v3, v0, Li5/e;->b1:I

    mul-int v5, v1, p6

    add-int/2addr v5, v3

    iput v5, v0, Li5/e;->b1:I

    iget v3, v0, Li5/e;->Z:I

    mul-int v5, v1, p5

    add-int/2addr v5, v3

    iput v5, v0, Li5/e;->Z:I

    invoke-virtual {p0}, Li5/e;->x()J

    move-result-wide v5

    goto :goto_6

    :cond_e
    const-wide/16 v5, 0x0

    :goto_6
    if-eqz v4, :cond_f

    iget v3, v0, Li5/e;->y:I

    invoke-static {p1, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    iput v1, v0, Li5/e;->y:I

    invoke-virtual {p0}, Li5/e;->w()V

    :cond_f
    return-void
.end method

.method public final C()V
    .locals 1

    iget v0, p0, Li5/e;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Li5/e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Li5/e;->Z:I

    iput v0, p0, Li5/e;->b1:I

    iput v0, p0, Li5/e;->c1:I

    const/4 v0, 0x0

    iput-object v0, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    return-void
.end method

.method public final H(III)V
    .locals 12

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    :cond_1
    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    const/16 v0, 0xe

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-ge p2, v0, :cond_6

    const/16 v0, 0x3c

    if-ge p3, v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Li5/e;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Li5/e;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v0

    invoke-virtual {p0}, Li5/e;->t()Z

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v0

    invoke-virtual {p0}, Li5/e;->v()Z

    move-result v1

    if-ne v0, v1, :cond_4

    mul-int v0, p1, p2

    iget v1, p0, Li5/e;->e1:I

    iget v2, p0, Li5/e;->f1:I

    mul-int/2addr v2, v1

    sub-int v8, v0, v2

    mul-int v0, p1, p3

    iget v2, p0, Li5/e;->g1:I

    mul-int/2addr v1, v2

    sub-int v9, v0, v1

    iput p1, p0, Li5/e;->e1:I

    iput p2, p0, Li5/e;->f1:I

    iput p3, p0, Li5/e;->g1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Li5/e;->A(IIIIIIILjava/math/BigDecimal;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot do date math without a complete date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot normalize time zone without both time and timezone"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "time zone must be between -14:00 and +14:00"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final I(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "codeType must be one of SchemaType BTC_  DATE TIME related types."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->r:I

    and-int/lit8 p1, p1, -0xb

    iput p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->y:I

    invoke-virtual {p0}, Li5/e;->C()V

    return-void

    :pswitch_1
    iget p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->r:I

    and-int/lit8 p1, p1, -0x7

    iput p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->x:I

    invoke-virtual {p0}, Li5/e;->C()V

    return-void

    :pswitch_2
    iget p1, p0, Li5/e;->c:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->r:I

    invoke-virtual {p0}, Li5/e;->C()V

    return-void

    :pswitch_3
    iget p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->x:I

    and-int/lit8 p1, p1, -0xd

    iput p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->y:I

    invoke-virtual {p0}, Li5/e;->C()V

    return-void

    :pswitch_4
    iget p1, p0, Li5/e;->c:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->y:I

    invoke-virtual {p0}, Li5/e;->C()V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Li5/e;->C()V

    return-void

    :pswitch_6
    iget p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->r:I

    iput v0, p0, Li5/e;->x:I

    and-int/lit8 p1, p1, -0xf

    iput p1, p0, Li5/e;->c:I

    iput v0, p0, Li5/e;->y:I

    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    iget v0, p0, Li5/e;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Li5/e;->c:I

    iput p1, p0, Li5/e;->y:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "day out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K(Li5/f;)V
    .locals 1

    invoke-interface {p1}, Li5/f;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Li5/e;->c:I

    invoke-interface {p1}, Li5/f;->b()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Li5/e;->r:I

    invoke-interface {p1}, Li5/f;->j()I

    move-result v0

    iput v0, p0, Li5/e;->x:I

    invoke-interface {p1}, Li5/f;->f()I

    move-result v0

    iput v0, p0, Li5/e;->y:I

    invoke-interface {p1}, Li5/f;->g()I

    move-result v0

    iput v0, p0, Li5/e;->Z:I

    invoke-interface {p1}, Li5/f;->i()I

    move-result v0

    iput v0, p0, Li5/e;->b1:I

    invoke-interface {p1}, Li5/f;->h()I

    move-result v0

    iput v0, p0, Li5/e;->c1:I

    invoke-interface {p1}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-interface {p1}, Li5/f;->s()I

    move-result v0

    iput v0, p0, Li5/e;->e1:I

    invoke-interface {p1}, Li5/f;->r()I

    move-result v0

    iput v0, p0, Li5/e;->f1:I

    invoke-interface {p1}, Li5/f;->u()I

    move-result p1

    iput p1, p0, Li5/e;->g1:I

    return-void
.end method

.method public final L(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    iget v0, p0, Li5/e;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Li5/e;->c:I

    iput p1, p0, Li5/e;->x:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "month out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M(IIILjava/math/BigDecimal;)V
    .locals 2

    if-ltz p1, :cond_7

    const/16 v0, 0x18

    if-gt p1, v0, :cond_7

    if-ltz p2, :cond_6

    const/16 v1, 0x3b

    if-gt p2, v1, :cond_6

    if-ltz p3, :cond_5

    if-gt p3, v1, :cond_5

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Li5/d;->k1:Ljava/math/BigDecimal;

    invoke-virtual {v1, p4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fraction out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    sget-object v0, Li5/d;->j1:Ljava/math/BigDecimal;

    invoke-virtual {v0, p4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "when hour is 24, min sec and fracton must be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget v0, p0, Li5/e;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Li5/e;->c:I

    iput p1, p0, Li5/e;->Z:I

    iput p2, p0, Li5/e;->b1:I

    iput p3, p0, Li5/e;->c1:I

    if-nez p4, :cond_4

    sget-object p4, Li5/d;->j1:Ljava/math/BigDecimal;

    :cond_4
    iput-object p4, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "second out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minute out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hour out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N(III)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_4

    :cond_1
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    const/16 v1, 0xe

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-ge p2, v1, :cond_4

    const/16 v1, 0x3c

    if-lt p3, v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Li5/e;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Li5/e;->c:I

    iput p1, p0, Li5/e;->e1:I

    iput p2, p0, Li5/e;->f1:I

    iput p3, p0, Li5/e;->g1:I

    return-void

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time zone out of range (-14:00 to +14:00). ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gez p1, :cond_5

    const-string p1, "-"

    goto :goto_1

    :cond_5
    const-string p1, "+"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(I)V
    .locals 1

    const v0, -0x116bc45f

    if-lt p1, v0, :cond_2

    const v0, 0x116bcc11

    if-gt p1, v0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Li5/e;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Li5/e;->c:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Li5/e;->r:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "year cannot be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "year out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Li5/e;->r:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Li5/e;

    invoke-direct {v0, p0}, Li5/e;-><init>(Li5/f;)V

    return-object v0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Li5/e;->c:I

    invoke-static {p0}, Li5/e;->B(I)I

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Li5/e;->y:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Li5/e;->Z:I

    return p0
.end method

.method public final getFlags()I
    .locals 0

    iget p0, p0, Li5/e;->c:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Li5/e;->c1:I

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Li5/e;->b1:I

    return p0
.end method

.method public final isImmutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Li5/e;->x:I

    return p0
.end method

.method public final k(Li5/d;)I
    .locals 0

    invoke-static {p0, p1}, Li5/e;->D(Li5/f;Li5/f;)I

    move-result p0

    return p0
.end method

.method public final m()Z
    .locals 0

    iget p0, p0, Li5/e;->c:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n()Z
    .locals 0

    iget p0, p0, Li5/e;->c:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p()Z
    .locals 1

    iget p0, p0, Li5/e;->c:I

    const/16 v0, 0xe

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q()Z
    .locals 1

    iget p0, p0, Li5/e;->c:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Li5/e;->f1:I

    return p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Li5/e;->e1:I

    return p0
.end method

.method public final t()Z
    .locals 0

    iget p0, p0, Li5/e;->c:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Li5/d;->w(Li5/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .locals 0

    iget p0, p0, Li5/e;->g1:I

    return p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Li5/e;->c:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w()V
    .locals 9

    iget v0, p0, Li5/e;->x:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    iget v3, p0, Li5/e;->y:I

    if-lt v3, v2, :cond_0

    iget v4, p0, Li5/e;->r:I

    invoke-static {v4, v0}, Li5/e;->d(II)I

    move-result v0

    if-le v3, v0, :cond_1

    :cond_0
    iget v0, p0, Li5/e;->x:I

    int-to-long v3, v0

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Li5/e;->c(IJ)J

    move-result-wide v5

    int-to-long v7, v1

    mul-long/2addr v5, v7

    sub-long v5, v3, v5

    long-to-int v0, v5

    add-int/2addr v0, v2

    iput v0, p0, Li5/e;->x:I

    iget v0, p0, Li5/e;->r:I

    invoke-static {v1, v3, v4}, Li5/e;->c(IJ)J

    move-result-wide v3

    long-to-int v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Li5/e;->r:I

    iget v0, p0, Li5/e;->y:I

    sub-int/2addr v0, v2

    iput v2, p0, Li5/e;->y:I

    invoke-static {p0}, Li5/e;->G(Li5/f;)I

    move-result v1

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    const v0, 0x10bd9

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x4

    const v2, 0x23ab1

    div-int/2addr v0, v2

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit16 v2, v2, 0xfa0

    const v3, 0x164b09

    div-int/2addr v2, v3

    iput v2, p0, Li5/e;->r:I

    mul-int/lit16 v3, v2, 0x5b5

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v3, v1, 0x50

    div-int/lit16 v3, v3, 0x98f

    iput v3, p0, Li5/e;->x:I

    mul-int/lit16 v4, v3, 0x98f

    div-int/lit8 v4, v4, 0x50

    sub-int/2addr v1, v4

    iput v1, p0, Li5/e;->y:I

    div-int/lit8 v1, v3, 0xb

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0xc

    sub-int/2addr v3, v4

    iput v3, p0, Li5/e;->x:I

    add-int/lit8 v0, v0, -0x31

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Li5/e;->r:I

    iget v0, p0, Li5/e;->c:I

    or-int/lit8 v0, v0, 0xe

    iput v0, p0, Li5/e;->c:I

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "date before year -4713"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()J
    .locals 9

    iget-object v0, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    sget-object v3, Li5/d;->k1:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v3, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    iput-object v3, p0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget v0, p0, Li5/e;->c1:I

    if-ltz v0, :cond_2

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_2

    iget v0, p0, Li5/e;->b1:I

    if-ltz v0, :cond_2

    const/16 v1, 0x32

    if-gt v0, v1, :cond_2

    iget v0, p0, Li5/e;->Z:I

    if-ltz v0, :cond_2

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    :cond_2
    iget v0, p0, Li5/e;->c1:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    const/16 v2, 0x3c

    invoke-static {v2, v0, v1}, Li5/e;->c(IJ)J

    move-result-wide v3

    int-to-long v5, v2

    mul-long v7, v3, v5

    sub-long/2addr v0, v7

    long-to-int v0, v0

    iput v0, p0, Li5/e;->c1:I

    iget v0, p0, Li5/e;->b1:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    invoke-static {v2, v0, v1}, Li5/e;->c(IJ)J

    move-result-wide v2

    mul-long/2addr v5, v2

    sub-long/2addr v0, v5

    long-to-int v0, v0

    iput v0, p0, Li5/e;->b1:I

    iget v0, p0, Li5/e;->Z:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    const/16 v2, 0x18

    invoke-static {v2, v0, v1}, Li5/e;->c(IJ)J

    move-result-wide v3

    int-to-long v5, v2

    mul-long/2addr v5, v3

    sub-long/2addr v0, v5

    long-to-int v0, v0

    iput v0, p0, Li5/e;->Z:I

    :cond_3
    return-wide v3
.end method

.method public final y()V
    .locals 9

    invoke-virtual {p0}, Li5/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li5/e;->x()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Li5/e;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    iput v0, p0, Li5/e;->y:I

    :cond_1
    invoke-virtual {p0}, Li5/e;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li5/e;->w()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li5/e;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Li5/e;->x:I

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v1, :cond_3

    if-le v0, v2, :cond_4

    :cond_3
    int-to-long v3, v0

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Li5/e;->c(IJ)J

    move-result-wide v5

    int-to-long v7, v2

    mul-long/2addr v5, v7

    sub-long v5, v3, v5

    long-to-int v0, v5

    add-int/2addr v0, v1

    iput v0, p0, Li5/e;->x:I

    invoke-virtual {p0}, Li5/e;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Li5/e;->r:I

    invoke-static {v2, v3, v4}, Li5/e;->c(IJ)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Li5/e;->r:I

    :cond_4
    :goto_1
    return-void
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Li5/e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x630

    invoke-virtual {p0, v0}, Li5/e;->O(I)V

    :cond_0
    invoke-virtual {p0}, Li5/e;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Li5/e;->L(I)V

    :cond_1
    invoke-virtual {p0}, Li5/e;->n()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Li5/e;->J(I)V

    :cond_2
    invoke-virtual {p0}, Li5/e;->m()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Li5/d;->j1:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Li5/e;->M(IIILjava/math/BigDecimal;)V

    :cond_3
    return-void
.end method
