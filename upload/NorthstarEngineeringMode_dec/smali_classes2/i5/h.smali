.class public final Li5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final e1:[Li5/d;


# instance fields
.field public Z:I

.field public b1:I

.field public final c:I

.field public c1:I

.field public d1:Ljava/math/BigDecimal;

.field public r:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Li5/d;

    const/16 v1, 0x6a0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Li5/d;-><init>(II)V

    new-instance v1, Li5/d;

    const/16 v2, 0x6a1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Li5/d;-><init>(II)V

    new-instance v2, Li5/d;

    const/4 v3, 0x3

    const/16 v4, 0x76f

    invoke-direct {v2, v4, v3}, Li5/d;-><init>(II)V

    new-instance v3, Li5/d;

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Li5/d;-><init>(II)V

    filled-new-array {v0, v1, v2, v3}, [Li5/d;

    move-result-object v0

    sput-object v0, Li5/h;->e1:[Li5/d;

    return-void
.end method

.method public constructor <init>(Li5/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Li5/i;->d()I

    move-result v0

    iput v0, p0, Li5/h;->c:I

    invoke-interface {p1}, Li5/i;->b()I

    move-result v0

    iput v0, p0, Li5/h;->r:I

    invoke-interface {p1}, Li5/i;->j()I

    move-result v0

    iput v0, p0, Li5/h;->x:I

    invoke-interface {p1}, Li5/i;->f()I

    move-result v0

    iput v0, p0, Li5/h;->y:I

    invoke-interface {p1}, Li5/i;->g()I

    move-result v0

    iput v0, p0, Li5/h;->Z:I

    invoke-interface {p1}, Li5/i;->i()I

    move-result v0

    iput v0, p0, Li5/h;->b1:I

    invoke-interface {p1}, Li5/i;->h()I

    move-result v0

    iput v0, p0, Li5/h;->c1:I

    invoke-interface {p1}, Li5/i;->a()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Li5/h;->d1:Ljava/math/BigDecimal;

    return-void
.end method

.method public static e(Li5/i;Li5/g;)I
    .locals 19

    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Li5/i;->a()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface/range {p0 .. p0}, Li5/i;->d()I

    move-result v1

    iget v5, v0, Li5/g;->c:I

    int-to-long v6, v1

    invoke-interface/range {p0 .. p0}, Li5/i;->b()I

    move-result v1

    int-to-long v8, v1

    const-wide/16 v10, 0xc

    mul-long/2addr v8, v10

    invoke-interface/range {p0 .. p0}, Li5/i;->j()I

    move-result v1

    int-to-long v12, v1

    add-long/2addr v8, v12

    mul-long/2addr v8, v6

    int-to-long v12, v5

    iget v1, v0, Li5/g;->r:I

    int-to-long v14, v1

    mul-long/2addr v14, v10

    iget v1, v0, Li5/g;->x:I

    int-to-long v10, v1

    add-long/2addr v14, v10

    mul-long/2addr v14, v12

    invoke-interface/range {p0 .. p0}, Li5/i;->f()I

    move-result v1

    int-to-long v10, v1

    const-wide/16 v16, 0x18

    mul-long v10, v10, v16

    invoke-interface/range {p0 .. p0}, Li5/i;->g()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v10, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v10, v4

    invoke-interface/range {p0 .. p0}, Li5/i;->i()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v10, v2

    mul-long/2addr v10, v4

    invoke-interface/range {p0 .. p0}, Li5/i;->h()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v10, v1

    mul-long/2addr v10, v6

    iget v1, v0, Li5/g;->y:I

    int-to-long v1, v1

    mul-long v1, v1, v16

    iget v3, v0, Li5/g;->Z:I

    int-to-long v6, v3

    add-long/2addr v1, v6

    mul-long/2addr v1, v4

    iget v3, v0, Li5/g;->b1:I

    int-to-long v6, v3

    add-long/2addr v1, v6

    mul-long/2addr v1, v4

    iget v3, v0, Li5/g;->c1:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    mul-long/2addr v1, v12

    cmp-long v3, v8, v14

    if-nez v3, :cond_2

    cmp-long v0, v10, v1

    if-nez v0, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    if-gez v0, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v4, 0x0

    const-wide/32 v5, 0x24ea00

    if-gez v3, :cond_3

    sub-long v7, v10, v1

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    const/4 v7, -0x1

    return v7

    :cond_3
    if-lez v3, :cond_5

    sub-long/2addr v1, v10

    cmp-long v1, v1, v5

    if-gez v1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    new-instance v1, Li5/h;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Li5/h;-><init>(Li5/i;)V

    iget v2, v1, Li5/h;->c:I

    neg-int v2, v2

    iget v3, v0, Li5/g;->c:I

    mul-int/2addr v3, v2

    iget v2, v1, Li5/h;->r:I

    iget v5, v0, Li5/g;->r:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Li5/h;->r:I

    iget v2, v1, Li5/h;->x:I

    iget v5, v0, Li5/g;->x:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Li5/h;->x:I

    iget v2, v1, Li5/h;->y:I

    iget v5, v0, Li5/g;->y:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Li5/h;->y:I

    iget v2, v1, Li5/h;->Z:I

    iget v5, v0, Li5/g;->Z:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Li5/h;->Z:I

    iget v2, v1, Li5/h;->b1:I

    iget v5, v0, Li5/g;->b1:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Li5/h;->b1:I

    iget v2, v1, Li5/h;->c1:I

    iget v5, v0, Li5/g;->c1:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Li5/h;->c1:I

    iget-object v2, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v1, Li5/h;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    if-ne v3, v2, :cond_7

    iget-object v0, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    iput-object v0, v1, Li5/h;->d1:Ljava/math/BigDecimal;

    goto :goto_2

    :cond_7
    if-lez v3, :cond_8

    iget-object v2, v1, Li5/h;->d1:Ljava/math/BigDecimal;

    iget-object v0, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v2, v1, Li5/h;->d1:Ljava/math/BigDecimal;

    iget-object v0, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Li5/h;->d1:Ljava/math/BigDecimal;

    :goto_2
    new-instance v0, Li5/e;

    invoke-direct {v0}, Li5/e;-><init>()V

    sget-object v2, Li5/h;->e1:[Li5/d;

    array-length v3, v2

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_3
    if-ge v14, v3, :cond_c

    aget-object v11, v2, v14

    invoke-virtual {v0, v11}, Li5/e;->K(Li5/f;)V

    iget v6, v1, Li5/h;->c:I

    iget v7, v1, Li5/h;->r:I

    iget v8, v1, Li5/h;->x:I

    iget v9, v1, Li5/h;->y:I

    iget v10, v1, Li5/h;->Z:I

    iget v5, v1, Li5/h;->b1:I

    iget v4, v1, Li5/h;->c1:I

    move/from16 v16, v3

    iget-object v3, v1, Li5/h;->d1:Ljava/math/BigDecimal;

    move/from16 v17, v5

    move-object v5, v0

    move-object/from16 v18, v1

    move-object v1, v11

    move/from16 v11, v17

    move-object/from16 p0, v2

    move v2, v12

    move v12, v4

    move v4, v13

    move-object v13, v3

    invoke-virtual/range {v5 .. v13}, Li5/e;->A(IIIIIIILjava/math/BigDecimal;)V

    invoke-static {v0, v1}, Li5/e;->D(Li5/f;Li5/f;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_b

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    if-eq v1, v5, :cond_9

    :goto_4
    move v12, v2

    :goto_5
    move v13, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x1

    add-int/lit8 v12, v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x1

    add-int/lit8 v13, v4, 0x1

    move v12, v2

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    move/from16 v3, v16

    move-object/from16 v1, v18

    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    move-object v1, v2

    move v2, v12

    move v4, v13

    const/4 v3, -0x1

    const/4 v5, 0x1

    array-length v0, v1

    if-ne v15, v0, :cond_d

    move v2, v5

    goto :goto_7

    :cond_d
    array-length v0, v1

    if-ne v4, v0, :cond_e

    move v2, v3

    goto :goto_7

    :cond_e
    array-length v0, v1

    if-ne v2, v0, :cond_f

    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    const/4 v2, 0x2

    :goto_7
    return v2
.end method

.method public static k(Li5/i;)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Li5/i;->d()I

    move-result v1

    const/16 v2, 0x2d

    if-gez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/i;->b()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Li5/i;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p0}, Li5/i;->j()I

    move-result v1

    const/16 v3, 0x4d

    if-eqz v1, :cond_2

    invoke-interface {p0}, Li5/i;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p0}, Li5/i;->f()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Li5/i;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {p0}, Li5/i;->g()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0}, Li5/i;->i()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0}, Li5/i;->h()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0}, Li5/i;->a()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {p0}, Li5/i;->g()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Li5/i;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {p0}, Li5/i;->i()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Li5/i;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-interface {p0}, Li5/i;->a()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/16 v3, 0x53

    const/4 v4, 0x2

    if-eqz v1, :cond_16

    invoke-interface {p0}, Li5/i;->a()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {p0}, Li5/i;->h()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p0}, Li5/i;->h()I

    move-result p0

    int-to-long v5, p0

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    :cond_8
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v2, :cond_a

    move v10, v9

    goto :goto_0

    :cond_a
    move v10, v8

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v1

    sub-int/2addr v11, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v4

    if-gtz v11, :cond_b

    neg-int v4, v11

    add-int/2addr v4, v9

    goto :goto_1

    :cond_b
    move v4, v8

    :goto_1
    add-int/2addr v12, v4

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gtz v11, :cond_e

    if-eqz v10, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const-string p0, "0."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-gez v11, :cond_d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v11, v2, :cond_f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v11, v10

    invoke-virtual {v1, v11, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    :goto_3
    if-ge p0, v11, :cond_10

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v9

    move v1, p0

    :goto_6
    if-ltz p0, :cond_12

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    :goto_7
    if-ltz p0, :cond_15

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x45

    if-ne v2, v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_14

    add-int/2addr v1, v9

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_14
    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_15
    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_16
    invoke-interface {p0}, Li5/i;->h()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Li5/i;->h()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gt p0, v4, :cond_18

    const-string p0, "T0S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Li5/h;->d1:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Li5/h;->r:I

    return p0
.end method

.method public final c(Li5/g;)I
    .locals 0

    invoke-static {p0, p1}, Li5/h;->e(Li5/i;Li5/g;)I

    move-result p0

    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Li5/h;

    invoke-direct {v0, p0}, Li5/h;-><init>(Li5/i;)V

    return-object v0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Li5/h;->c:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Li5/h;->y:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Li5/h;->Z:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Li5/h;->c1:I

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Li5/h;->b1:I

    return p0
.end method

.method public final isImmutable()V
    .locals 0

    return-void
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Li5/h;->x:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Li5/h;->k(Li5/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
