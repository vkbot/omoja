.class public final Li5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i;
.implements Ljava/io/Serializable;


# instance fields
.field public final Z:I

.field public final b1:I

.field public final c:I

.field public final c1:I

.field public final d1:Ljava/math/BigDecimal;

.field public final r:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Li5/g;->c:I

    .line 2
    sget-object v0, Li5/d;->j1:Ljava/math/BigDecimal;

    iput-object v0, p0, Li5/g;->d1:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Li5/i;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-interface {p1}, Li5/i;->d()I

    move-result v0

    iput v0, p0, Li5/g;->c:I

    .line 30
    invoke-interface {p1}, Li5/i;->b()I

    move-result v0

    iput v0, p0, Li5/g;->r:I

    .line 31
    invoke-interface {p1}, Li5/i;->j()I

    move-result v0

    iput v0, p0, Li5/g;->x:I

    .line 32
    invoke-interface {p1}, Li5/i;->f()I

    move-result v0

    iput v0, p0, Li5/g;->y:I

    .line 33
    invoke-interface {p1}, Li5/i;->g()I

    move-result v0

    iput v0, p0, Li5/g;->Z:I

    .line 34
    invoke-interface {p1}, Li5/i;->i()I

    move-result v0

    iput v0, p0, Li5/g;->b1:I

    .line 35
    invoke-interface {p1}, Li5/i;->h()I

    move-result v0

    iput v0, p0, Li5/g;->c1:I

    .line 36
    invoke-interface {p1}, Li5/i;->a()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Li5/g;->d1:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 5
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Li5/d;->y(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 6
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Li5/d;->y(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    iput v5, v0, Li5/g;->c:I

    if-ge v4, v2, :cond_2

    .line 7
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    const/4 v6, -0x1

    iput v6, v0, Li5/g;->c:I

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-ge v4, v2, :cond_1a

    .line 8
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x50

    if-ne v6, v7, :cond_1a

    add-int/2addr v4, v5

    .line 9
    sget-object v6, Li5/d;->j1:Ljava/math/BigDecimal;

    iput-object v6, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v4, v2, :cond_18

    .line 10
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x54

    const-string v10, "illegal duration"

    const/4 v11, 0x3

    if-ne v8, v9, :cond_6

    if-nez v7, :cond_5

    if-gt v6, v11, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_3

    .line 11
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v7, v5

    move v6, v11

    goto :goto_3

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "T in duration must precede time fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must have no more than one T\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    :goto_3
    invoke-static {v8}, Li5/d;->x(C)Z

    move-result v9

    if-eqz v9, :cond_17

    add-int/lit8 v8, v8, -0x30

    :goto_4
    add-int/2addr v4, v5

    if-ge v4, v2, :cond_7

    .line 16
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 17
    :goto_5
    invoke-static {v9}, Li5/d;->x(C)Z

    move-result v12

    if-nez v12, :cond_16

    const/16 v12, 0x2e

    const/16 v13, 0x53

    if-ne v9, v12, :cond_b

    move v12, v4

    :cond_8
    add-int/2addr v12, v5

    if-ge v12, v2, :cond_9

    .line 18
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Li5/d;->x(C)Z

    move-result v14

    if-nez v14, :cond_8

    .line 19
    :cond_9
    new-instance v14, Ljava/math/BigDecimal;

    invoke-interface {v1, v4, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v14, v0, Li5/g;->d1:Ljava/math/BigDecimal;

    if-ge v12, v2, :cond_a

    if-ne v9, v13, :cond_a

    move v4, v12

    goto :goto_6

    .line 20
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_6
    const/16 v10, 0x4d

    const/4 v12, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x2

    const-string v3, "time in duration must follow T"

    if-eqz v6, :cond_c

    if-eq v6, v5, :cond_d

    if-eq v6, v15, :cond_e

    if-eq v6, v11, :cond_f

    if-eq v6, v14, :cond_11

    if-ne v6, v12, :cond_15

    goto :goto_7

    :cond_c
    const/16 v6, 0x59

    if-ne v9, v6, :cond_d

    iput v8, v0, Li5/g;->r:I

    move v6, v5

    goto :goto_8

    :cond_d
    if-ne v9, v10, :cond_e

    iput v8, v0, Li5/g;->x:I

    move v6, v15

    goto :goto_8

    :cond_e
    const/16 v6, 0x44

    if-ne v9, v6, :cond_f

    iput v8, v0, Li5/g;->y:I

    move v6, v11

    goto :goto_8

    :cond_f
    const/16 v6, 0x48

    if-ne v9, v6, :cond_11

    if-eqz v7, :cond_10

    iput v8, v0, Li5/g;->Z:I

    move v6, v14

    goto :goto_8

    .line 21
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-ne v9, v10, :cond_13

    if-eqz v7, :cond_12

    iput v8, v0, Li5/g;->b1:I

    move v6, v12

    goto :goto_8

    .line 22
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    if-ne v9, v13, :cond_15

    if-eqz v7, :cond_14

    iput v8, v0, Li5/g;->c1:I

    const/4 v3, 0x6

    move v6, v3

    :goto_8
    add-int/2addr v4, v5

    goto/16 :goto_2

    .line 23
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must specify Y M D T H M S in order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v8, v9

    goto/16 :goto_4

    .line 25
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal duration at char["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz v6, :cond_19

    return-void

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration must contain at least one number and its designator: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must begin with P"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Li5/g;->d1:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Li5/g;->r:I

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

    new-instance v0, Li5/g;

    invoke-direct {v0, p0}, Li5/g;-><init>(Li5/i;)V

    return-object v0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Li5/g;->c:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Li5/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Li5/g;

    iget v1, p1, Li5/g;->c:I

    iget v3, p0, Li5/g;->c:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Li5/g;->r:I

    iget v3, p1, Li5/g;->r:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Li5/g;->x:I

    iget v3, p1, Li5/g;->x:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Li5/g;->y:I

    iget v3, p1, Li5/g;->y:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Li5/g;->Z:I

    iget v3, p1, Li5/g;->Z:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Li5/g;->b1:I

    iget v3, p1, Li5/g;->b1:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Li5/g;->c1:I

    iget v3, p1, Li5/g;->c1:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Li5/g;->d1:Ljava/math/BigDecimal;

    iget-object p1, p1, Li5/g;->d1:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Li5/g;->y:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Li5/g;->Z:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Li5/g;->c1:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Li5/g;->b1:I

    mul-int/lit8 v0, v0, 0x43

    iget v1, p0, Li5/g;->c1:I

    add-int/2addr v0, v1

    iget v1, p0, Li5/g;->Z:I

    mul-int/lit16 v1, v1, 0xe17

    add-int/2addr v1, v0

    iget v0, p0, Li5/g;->y:I

    const v2, 0x15187

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Li5/g;->x:I

    const v2, 0x28de87

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Li5/g;->r:I

    const v2, 0x1ea6e07

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget p0, p0, Li5/g;->c:I

    const v1, 0xb5d6f9

    mul-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Li5/g;->b1:I

    return p0
.end method

.method public final isImmutable()V
    .locals 0

    return-void
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Li5/g;->x:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Li5/h;->k(Li5/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
