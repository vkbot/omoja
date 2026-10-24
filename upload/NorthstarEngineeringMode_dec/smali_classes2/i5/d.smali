.class public final Li5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final j1:Ljava/math/BigDecimal;

.field public static final k1:Ljava/math/BigDecimal;

.field public static final l1:[C

.field public static final m1:[C

.field public static final n1:Ljava/util/TimeZone;

.field public static final o1:[Ljava/util/TimeZone;

.field public static final p1:[Ljava/util/TimeZone;


# instance fields
.field public final Z:I

.field public final b1:I

.field public transient c:Ljava/lang/String;

.field public final c1:I

.field public final d1:I

.field public final e1:I

.field public final f1:Ljava/math/BigDecimal;

.field public final g1:I

.field public final h1:I

.field public final i1:I

.field public transient r:Ljava/lang/String;

.field public final x:I

.field public final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    sput-object v0, Li5/d;->j1:Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sput-object v0, Li5/d;->k1:Ljava/math/BigDecimal;

    const/16 v0, 0x64

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Li5/d;->l1:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Li5/d;->m1:[C

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Li5/d;->n1:Ljava/util/TimeZone;

    const/16 v0, 0xf

    new-array v1, v0, [Ljava/util/TimeZone;

    const-string v2, "GMT-00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GMT-01:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "GMT-02:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "GMT-03:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "GMT-04:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "GMT-05:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "GMT-06:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "GMT-07:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "GMT-08:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "GMT-09:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "GMT-10:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "GMT-11:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "GMT-12:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "GMT-13:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "GMT-14:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sput-object v1, Li5/d;->o1:[Ljava/util/TimeZone;

    new-array v0, v0, [Ljava/util/TimeZone;

    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "GMT+01:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "GMT+02:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "GMT+03:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "GMT+04:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "GMT+05:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "GMT+06:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "GMT+07:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "GMT+08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "GMT+09:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "GMT+10:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v13

    const-string v1, "GMT+11:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v14

    const-string v1, "GMT+12:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v15

    const-string v1, "GMT+13:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v16

    const-string v1, "GMT+14:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    aput-object v1, v0, v17

    sput-object v0, Li5/d;->p1:[Ljava/util/TimeZone;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Li5/d;->x:I

    iput p1, p0, Li5/d;->y:I

    iput p2, p0, Li5/d;->Z:I

    const/4 p1, 0x1

    iput p1, p0, Li5/d;->b1:I

    const/4 p1, 0x0

    iput p1, p0, Li5/d;->c1:I

    iput p1, p0, Li5/d;->d1:I

    iput p1, p0, Li5/d;->e1:I

    sget-object p2, Li5/d;->j1:Ljava/math/BigDecimal;

    iput-object p2, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    iput p1, p0, Li5/d;->g1:I

    iput p1, p0, Li5/d;->h1:I

    iput p1, p0, Li5/d;->i1:I

    .line 69
    invoke-static {p0}, Li5/e;->F(Li5/f;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Li5/f;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-interface {p1}, Li5/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Li5/d;->x:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Li5/d;->x:I

    .line 104
    invoke-interface {p1}, Li5/f;->s()I

    move-result v0

    iput v0, p0, Li5/d;->g1:I

    .line 105
    invoke-interface {p1}, Li5/f;->r()I

    move-result v0

    iput v0, p0, Li5/d;->h1:I

    .line 106
    invoke-interface {p1}, Li5/f;->u()I

    move-result v0

    iput v0, p0, Li5/d;->i1:I

    .line 107
    :cond_0
    invoke-interface {p1}, Li5/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Li5/d;->x:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Li5/d;->x:I

    .line 108
    invoke-interface {p1}, Li5/f;->g()I

    move-result v0

    iput v0, p0, Li5/d;->c1:I

    .line 109
    invoke-interface {p1}, Li5/f;->i()I

    move-result v0

    iput v0, p0, Li5/d;->d1:I

    .line 110
    invoke-interface {p1}, Li5/f;->h()I

    move-result v0

    iput v0, p0, Li5/d;->e1:I

    .line 111
    invoke-interface {p1}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    .line 112
    :cond_1
    invoke-interface {p1}, Li5/f;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Li5/d;->x:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Li5/d;->x:I

    .line 113
    invoke-interface {p1}, Li5/f;->f()I

    move-result v0

    iput v0, p0, Li5/d;->b1:I

    .line 114
    :cond_2
    invoke-interface {p1}, Li5/f;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Li5/d;->x:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Li5/d;->x:I

    .line 115
    invoke-interface {p1}, Li5/f;->j()I

    move-result v0

    iput v0, p0, Li5/d;->Z:I

    .line 116
    :cond_3
    invoke-interface {p1}, Li5/f;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Li5/d;->x:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Li5/d;->x:I

    .line 117
    invoke-interface {p1}, Li5/f;->b()I

    move-result p1

    iput p1, p0, Li5/d;->y:I

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 3
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

    .line 4
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Li5/d;->y(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sub-int v5, v2, v4

    const/16 v6, 0x3a

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-lt v5, v8, :cond_2

    add-int/lit8 v9, v2, -0x1

    .line 5
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_2

    iget v5, v0, Li5/d;->x:I

    or-int/2addr v5, v8

    iput v5, v0, Li5/d;->x:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x6

    if-lt v5, v9, :cond_8

    add-int/lit8 v5, v2, -0x3

    .line 6
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v2, -0x6

    .line 7
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v9, 0x2b

    if-eq v5, v9, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    move v5, v8

    :goto_2
    add-int/lit8 v9, v2, -0x5

    .line 8
    invoke-static {v1, v9}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v9

    add-int/lit8 v10, v2, -0x2

    .line 9
    invoke-static {v1, v10}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v10

    const/16 v11, 0xe

    if-gt v9, v11, :cond_7

    const/16 v11, 0x3b

    if-gt v10, v11, :cond_6

    iget v11, v0, Li5/d;->x:I

    or-int/2addr v11, v8

    iput v11, v0, Li5/d;->x:I

    iput v5, v0, Li5/d;->g1:I

    iput v9, v0, Li5/d;->h1:I

    iput v10, v0, Li5/d;->i1:I

    add-int/lit8 v2, v2, -0x6

    goto :goto_3

    .line 10
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time zone minute must be two digits between 00 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time zone hour must be two digits between -14 and +14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    const/16 v5, 0x9

    const/16 v9, 0x1f

    if-ge v4, v2, :cond_1f

    add-int/lit8 v10, v4, 0x2

    if-ge v10, v2, :cond_9

    .line 12
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_1f

    .line 13
    :cond_9
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_a

    add-int/lit8 v4, v4, 0x1

    move v10, v8

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    :goto_4
    neg-int v11, v4

    if-ge v4, v2, :cond_b

    .line 14
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    if-nez v12, :cond_b

    move v12, v8

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x0

    :goto_6
    if-ge v4, v2, :cond_c

    .line 15
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    .line 16
    :goto_7
    invoke-static {v14}, Li5/d;->x(C)Z

    move-result v15

    const/4 v3, 0x4

    if-nez v15, :cond_1c

    add-int/2addr v11, v4

    if-gt v11, v5, :cond_1b

    const/4 v12, 0x2

    if-lt v11, v3, :cond_f

    iget v11, v0, Li5/d;->x:I

    or-int/2addr v11, v12

    iput v11, v0, Li5/d;->x:I

    if-eqz v10, :cond_d

    neg-int v13, v13

    :cond_d
    iput v13, v0, Li5/d;->y:I

    if-eqz v13, :cond_e

    goto :goto_8

    .line 17
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gtz v11, :cond_1a

    :goto_8
    iget v11, v0, Li5/d;->y:I

    const v13, 0x116bcc11

    if-gt v11, v13, :cond_19

    const v13, -0x116bc45f

    if-lt v11, v13, :cond_18

    if-eq v14, v7, :cond_11

    if-eqz v10, :cond_1f

    .line 18
    invoke-virtual/range {p0 .. p0}, Li5/d;->v()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_d

    .line 19
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    add-int/lit8 v10, v4, 0x1

    sub-int v11, v2, v10

    if-lt v11, v12, :cond_12

    .line 20
    invoke-static {v1, v10}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v11

    if-lt v11, v8, :cond_12

    const/16 v13, 0xc

    if-gt v11, v13, :cond_12

    iget v10, v0, Li5/d;->x:I

    or-int/2addr v3, v10

    iput v3, v0, Li5/d;->x:I

    iput v11, v0, Li5/d;->Z:I

    add-int/lit8 v4, v4, 0x3

    goto :goto_9

    :cond_12
    move v4, v10

    :goto_9
    if-ge v4, v2, :cond_16

    .line 21
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v3, v4, 0x1

    sub-int v10, v2, v3

    if-lt v10, v12, :cond_14

    .line 22
    invoke-static {v1, v3}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v10

    if-lt v10, v8, :cond_14

    if-gt v10, v9, :cond_14

    iget v3, v0, Li5/d;->x:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Li5/d;->x:I

    iput v10, v0, Li5/d;->b1:I

    add-int/lit8 v4, v4, 0x3

    goto :goto_a

    :cond_14
    move v4, v3

    .line 23
    :goto_a
    invoke-virtual/range {p0 .. p0}, Li5/d;->n()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 24
    invoke-virtual/range {p0 .. p0}, Li5/d;->t()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Li5/d;->v()Z

    move-result v3

    if-nez v3, :cond_15

    if-ge v4, v2, :cond_15

    .line 25
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_15

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 26
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 27
    :cond_16
    :goto_b
    invoke-virtual/range {p0 .. p0}, Li5/d;->t()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_d

    .line 28
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 29
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year values not supported: too small, must be bigger than -292275295"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year value not supported: too big, must be less than 292277265"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year must be four digits (may pad with zeroes, e.g., 0560)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year too long (up to 9 digits)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    if-eqz v12, :cond_1e

    add-int v15, v4, v11

    if-ge v15, v3, :cond_1d

    goto :goto_c

    .line 33
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "year value starting with zero must be 4 or less digits: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_c
    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v14, v14, -0x30

    add-int/2addr v13, v14

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_1f
    :goto_d
    sget-object v3, Li5/d;->j1:Ljava/math/BigDecimal;

    const/16 v7, 0x18

    if-ge v4, v2, :cond_2c

    .line 34
    invoke-virtual/range {p0 .. p0}, Li5/d;->v()Z

    move-result v10

    if-nez v10, :cond_20

    invoke-virtual/range {p0 .. p0}, Li5/d;->t()Z

    move-result v10

    if-nez v10, :cond_20

    invoke-virtual/range {p0 .. p0}, Li5/d;->n()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 35
    :cond_20
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_2b

    add-int/lit8 v4, v4, 0x1

    :cond_21
    add-int/lit8 v10, v4, 0x8

    if-lt v2, v10, :cond_2a

    add-int/lit8 v11, v4, 0x2

    .line 36
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_2a

    add-int/lit8 v11, v4, 0x5

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_2a

    .line 37
    invoke-static {v1, v4}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v6

    if-gt v6, v7, :cond_29

    add-int/lit8 v11, v4, 0x3

    .line 38
    invoke-static {v1, v11}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v11

    const/16 v12, 0x3c

    if-ge v11, v12, :cond_28

    add-int/lit8 v13, v4, 0x6

    .line 39
    invoke-static {v1, v13}, Li5/d;->z(Ljava/lang/CharSequence;I)I

    move-result v13

    if-ge v13, v12, :cond_27

    if-ge v10, v2, :cond_26

    .line 40
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v14, 0x2e

    if-ne v12, v14, :cond_25

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_26

    :goto_e
    if-ge v4, v2, :cond_23

    .line 41
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Li5/d;->x(C)Z

    move-result v5

    if-eqz v5, :cond_22

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 42
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 43
    :cond_23
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-interface {v1, v10, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 44
    invoke-static {v0}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 45
    invoke-static {v0}, Ld/f;->W(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0

    .line 46
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_26
    move-object v4, v3

    :goto_f
    iget v1, v0, Li5/d;->x:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Li5/d;->x:I

    iput v6, v0, Li5/d;->c1:I

    iput v11, v0, Li5/d;->d1:I

    iput v13, v0, Li5/d;->e1:I

    iput-object v4, v0, Li5/d;->f1:Ljava/math/BigDecimal;

    goto :goto_10

    .line 48
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "second must be between 00 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minute must be between 00 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hour must be between 00 and 23"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date and time must be separated by \'T\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2c
    :goto_10
    invoke-virtual/range {p0 .. p0}, Li5/d;->m()Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, v0, Li5/d;->c1:I

    if-ne v1, v7, :cond_35

    iget v1, v0, Li5/d;->d1:I

    if-nez v1, :cond_34

    iget v1, v0, Li5/d;->e1:I

    if-nez v1, :cond_34

    iget-object v1, v0, Li5/d;->f1:Ljava/math/BigDecimal;

    .line 54
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_34

    .line 55
    invoke-virtual/range {p0 .. p0}, Li5/d;->p()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 56
    new-instance v1, Li5/e;

    iget v2, v0, Li5/d;->y:I

    iget v4, v0, Li5/d;->Z:I

    iget v5, v0, Li5/d;->b1:I

    iget v6, v0, Li5/d;->c1:I

    iget v8, v0, Li5/d;->d1:I

    iget v10, v0, Li5/d;->e1:I

    iget-object v11, v0, Li5/d;->f1:Ljava/math/BigDecimal;

    iget v12, v0, Li5/d;->g1:I

    iget v13, v0, Li5/d;->h1:I

    iget v14, v0, Li5/d;->i1:I

    .line 57
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v9, v1, Li5/e;->c:I

    if-eqz v2, :cond_32

    if-lez v2, :cond_2d

    goto :goto_11

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    :goto_11
    iput v2, v1, Li5/e;->r:I

    iput v4, v1, Li5/e;->x:I

    iput v5, v1, Li5/e;->y:I

    iput v6, v1, Li5/e;->Z:I

    iput v8, v1, Li5/e;->b1:I

    iput v10, v1, Li5/e;->c1:I

    if-nez v11, :cond_2e

    goto :goto_12

    :cond_2e
    move-object v3, v11

    :goto_12
    iput-object v3, v1, Li5/e;->d1:Ljava/math/BigDecimal;

    iput v12, v1, Li5/e;->e1:I

    iput v13, v1, Li5/e;->f1:I

    iput v14, v1, Li5/e;->g1:I

    .line 58
    invoke-static {v1}, Li5/e;->F(Li5/f;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 59
    invoke-virtual {v1}, Li5/e;->m()Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, v1, Li5/e;->Z:I

    if-eq v2, v7, :cond_2f

    goto :goto_13

    .line 60
    :cond_2f
    invoke-virtual {v1}, Li5/e;->y()V

    :cond_30
    :goto_13
    iget v2, v1, Li5/e;->y:I

    iput v2, v0, Li5/d;->b1:I

    iget v2, v1, Li5/e;->x:I

    iput v2, v0, Li5/d;->Z:I

    .line 61
    invoke-virtual {v1}, Li5/e;->b()I

    move-result v1

    iput v1, v0, Li5/d;->y:I

    const/4 v1, 0x0

    iput v1, v0, Li5/d;->c1:I

    goto :goto_14

    .line 62
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_33
    invoke-virtual/range {p0 .. p0}, Li5/d;->n()Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, v0, Li5/d;->b1:I

    add-int/2addr v1, v8

    iput v1, v0, Li5/d;->b1:I

    const/4 v1, 0x0

    iput v1, v0, Li5/d;->c1:I

    goto :goto_14

    .line 65
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if hour is 24, minutes, seconds and fraction must be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_35
    :goto_14
    invoke-static/range {p0 .. p0}, Li5/e;->F(Li5/f;)Z

    move-result v0

    if-eqz v0, :cond_36

    return-void

    .line 67
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    const/4 v4, 0x0

    .line 73
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->isSet(I)Z

    move-result v5

    const/4 v6, 0x2

    .line 74
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->isSet(I)Z

    move-result v7

    const/4 v8, 0x5

    .line 75
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->isSet(I)Z

    move-result v9

    const/16 v10, 0xb

    .line 76
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->isSet(I)Z

    move-result v11

    const/16 v12, 0xa

    .line 77
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->isSet(I)Z

    move-result v13

    const/16 v14, 0x9

    .line 78
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v15

    const/16 v14, 0xc

    .line 79
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v16

    const/16 v14, 0xd

    .line 80
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v17

    const/16 v14, 0xe

    .line 81
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v18

    const/16 v14, 0xf

    .line 82
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v19

    const/16 v14, 0x10

    .line 83
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->isSet(I)Z

    move-result v20

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v5, :cond_0

    .line 85
    instance-of v5, v1, Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    neg-int v3, v3

    :cond_0
    iget v5, v0, Li5/d;->x:I

    or-int/2addr v5, v6

    iput v5, v0, Li5/d;->x:I

    iput v3, v0, Li5/d;->y:I

    :cond_1
    if-eqz v7, :cond_2

    iget v3, v0, Li5/d;->x:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Li5/d;->x:I

    .line 87
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Li5/d;->Z:I

    :cond_2
    if-eqz v9, :cond_3

    iget v3, v0, Li5/d;->x:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Li5/d;->x:I

    .line 88
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Li5/d;->b1:I

    :cond_3
    if-eqz v11, :cond_4

    .line 89
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v2

    const/16 v6, 0xc

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_5

    if-eqz v15, :cond_5

    .line 90
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    move v5, v2

    goto :goto_0

    :cond_5
    const/16 v6, 0xc

    move v3, v4

    move v5, v3

    :goto_0
    if-eqz v16, :cond_6

    .line 91
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v6, v5

    move v5, v2

    goto :goto_1

    :cond_6
    move v6, v4

    :goto_1
    if-eqz v17, :cond_7

    const/16 v7, 0xd

    .line 92
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v7, v5

    move v5, v2

    goto :goto_2

    :cond_7
    move v7, v4

    :goto_2
    const/4 v8, 0x3

    if-eqz v18, :cond_8

    const/16 v9, 0xe

    .line 93
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v9, v5

    invoke-static {v9, v10, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v9, v5

    move v5, v2

    goto :goto_3

    :cond_8
    sget-object v9, Li5/d;->j1:Ljava/math/BigDecimal;

    :goto_3
    if-eqz v5, :cond_9

    iget v5, v0, Li5/d;->x:I

    or-int/2addr v5, v14

    iput v5, v0, Li5/d;->x:I

    iput v3, v0, Li5/d;->c1:I

    iput v6, v0, Li5/d;->d1:I

    iput v7, v0, Li5/d;->e1:I

    iput-object v9, v0, Li5/d;->f1:Ljava/math/BigDecimal;

    :cond_9
    if-eqz v19, :cond_f

    const/16 v3, 0xf

    .line 94
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v20, :cond_a

    .line 95
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v3, v5

    :cond_a
    iget v5, v0, Li5/d;->x:I

    or-int/2addr v5, v2

    iput v5, v0, Li5/d;->x:I

    const/4 v5, -0x1

    if-nez v3, :cond_d

    iput v4, v0, Li5/d;->g1:I

    iput v4, v0, Li5/d;->h1:I

    iput v4, v0, Li5/d;->i1:I

    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_f

    .line 99
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_c

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_b

    goto :goto_4

    :cond_b
    iput v5, v0, Li5/d;->g1:I

    goto :goto_4

    :cond_c
    iput v2, v0, Li5/d;->g1:I

    goto :goto_4

    :cond_d
    if-gez v3, :cond_e

    move v2, v5

    :cond_e
    iput v2, v0, Li5/d;->g1:I

    mul-int/2addr v3, v2

    const v1, 0x36ee80

    .line 100
    div-int v2, v3, v1

    iput v2, v0, Li5/d;->h1:I

    mul-int/2addr v2, v1

    sub-int/2addr v3, v2

    const v1, 0xea60

    .line 101
    div-int/2addr v3, v1

    iput v3, v0, Li5/d;->i1:I

    :cond_f
    :goto_4
    return-void
.end method

.method public static c([CII)I
    .locals 2

    sget-object v0, Li5/d;->l1:[C

    aget-char v0, v0, p2

    aput-char v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    sget-object v1, Li5/d;->m1:[C

    aget-char p2, v1, p2

    aput-char p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static w(Li5/f;)Ljava/lang/String;
    .locals 10

    invoke-interface {p0}, Li5/f;->a()Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x21

    new-array v2, v2, [C

    invoke-interface {p0}, Li5/f;->v()Z

    move-result v3

    const/16 v4, 0x2d

    if-nez v3, :cond_2

    invoke-interface {p0}, Li5/f;->t()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0}, Li5/f;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-interface {p0}, Li5/f;->v()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {p0}, Li5/f;->b()I

    move-result v3

    if-gez v3, :cond_3

    aput-char v4, v2, v1

    neg-int v3, v3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    const/16 v6, 0x2710

    if-lt v3, v6, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v6, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    move v5, v3

    goto :goto_3

    :cond_4
    div-int/lit8 v6, v3, 0x64

    mul-int/lit8 v7, v6, 0x64

    sub-int/2addr v3, v7

    sget-object v7, Li5/d;->l1:[C

    aget-char v8, v7, v6

    aput-char v8, v2, v5

    add-int/lit8 v8, v5, 0x1

    sget-object v9, Li5/d;->m1:[C

    aget-char v6, v9, v6

    aput-char v6, v2, v8

    add-int/lit8 v6, v5, 0x2

    aget-char v7, v7, v3

    aput-char v7, v2, v6

    add-int/lit8 v6, v5, 0x3

    aget-char v3, v9, v3

    aput-char v3, v2, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    :cond_5
    aput-char v4, v2, v1

    :goto_3
    invoke-interface {p0}, Li5/f;->t()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {p0}, Li5/f;->n()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v5, 0x1

    aput-char v4, v2, v5

    invoke-interface {p0}, Li5/f;->t()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Li5/f;->j()I

    move-result v5

    invoke-static {v2, v3, v5}, Li5/d;->c([CII)I

    move-result v3

    :cond_7
    move v5, v3

    invoke-interface {p0}, Li5/f;->n()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v5, 0x1

    aput-char v4, v2, v5

    invoke-interface {p0}, Li5/f;->f()I

    move-result v5

    invoke-static {v2, v3, v5}, Li5/d;->c([CII)I

    move-result v5

    :goto_4
    invoke-interface {p0}, Li5/f;->m()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x54

    aput-char v6, v2, v5

    move v5, v3

    :cond_9
    :goto_5
    invoke-interface {p0}, Li5/f;->m()Z

    move-result v3

    const/16 v6, 0x3a

    if-eqz v3, :cond_a

    invoke-interface {p0}, Li5/f;->g()I

    move-result v3

    invoke-static {v2, v5, v3}, Li5/d;->c([CII)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    aput-char v6, v2, v3

    invoke-interface {p0}, Li5/f;->i()I

    move-result v3

    invoke-static {v2, v5, v3}, Li5/d;->c([CII)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    aput-char v6, v2, v3

    invoke-interface {p0}, Li5/f;->h()I

    move-result v3

    invoke-static {v2, v5, v3}, Li5/d;->c([CII)I

    move-result v5

    if-eqz v0, :cond_a

    sget-object v3, Li5/d;->j1:Ljava/math/BigDecimal;

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v3, v7, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v5, v0

    :cond_a
    invoke-interface {p0}, Li5/f;->q()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Li5/f;->s()I

    move-result v0

    if-nez v0, :cond_b

    add-int/lit8 p0, v5, 0x1

    const/16 v0, 0x5a

    aput-char v0, v2, v5

    move v5, p0

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v5, 0x1

    invoke-interface {p0}, Li5/f;->s()I

    move-result v3

    if-lez v3, :cond_c

    const/16 v4, 0x2b

    :cond_c
    aput-char v4, v2, v5

    invoke-interface {p0}, Li5/f;->r()I

    move-result v3

    invoke-static {v2, v0, v3}, Li5/d;->c([CII)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    aput-char v6, v2, v0

    invoke-interface {p0}, Li5/f;->u()I

    move-result p0

    invoke-static {v2, v3, p0}, Li5/d;->c([CII)I

    move-result v5

    :cond_d
    :goto_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static x(C)Z
    .locals 1

    add-int/lit8 p0, p0, -0x30

    int-to-char p0, p0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static z(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0}, Li5/d;->x(C)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Li5/d;->x(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p0, p0, -0x30

    add-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x64

    return p0
.end method


# virtual methods
.method public final a()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Li5/d;->y:I

    return p0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Li5/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Li5/d;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Li5/d;->g1:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li5/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li5/d;->n()Z

    move-result v0

    invoke-virtual {p0}, Li5/d;->t()Z

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Li5/d;->n()Z

    move-result v0

    invoke-virtual {p0}, Li5/d;->v()Z

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Li5/e;->h1:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Li5/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li5/d;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_4
    :goto_1
    new-instance v0, Li5/e;

    invoke-direct {v0, p0}, Li5/e;-><init>(Li5/f;)V

    invoke-virtual {v0}, Li5/e;->n()Z

    move-result v2

    invoke-virtual {v0}, Li5/e;->t()Z

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Li5/e;->n()Z

    move-result v2

    invoke-virtual {v0}, Li5/e;->v()Z

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Li5/e;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Li5/e;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1, v1, v1}, Li5/e;->H(III)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Li5/e;->y()V

    :goto_2
    invoke-virtual {v0}, Li5/e;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Li5/d;->j1:Ljava/math/BigDecimal;

    iput-object v1, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    goto :goto_5

    :cond_6
    iget-object v1, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    if-lez v2, :cond_8

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Li5/e;->d1:Ljava/math/BigDecimal;

    :cond_9
    :goto_5
    invoke-static {v0}, Li5/d;->w(Li5/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li5/d;->c:Ljava/lang/String;

    :goto_6
    return-void
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Li5/d;->x:I

    invoke-static {p0}, Li5/e;->B(I)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Li5/d;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Li5/d;->d()V

    iget-object p0, p0, Li5/d;->c:Ljava/lang/String;

    check-cast p1, Li5/d;

    invoke-virtual {p1}, Li5/d;->d()V

    iget-object p1, p1, Li5/d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Li5/d;->b1:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Li5/d;->c1:I

    return p0
.end method

.method public final getFlags()I
    .locals 0

    iget p0, p0, Li5/d;->x:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Li5/d;->e1:I

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Li5/d;->d()V

    iget-object p0, p0, Li5/d;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Li5/d;->d1:I

    return p0
.end method

.method public final isImmutable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Li5/d;->Z:I

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

    iget p0, p0, Li5/d;->x:I

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

    iget p0, p0, Li5/d;->x:I

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

    iget p0, p0, Li5/d;->x:I

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

    iget p0, p0, Li5/d;->x:I

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

    iget p0, p0, Li5/d;->h1:I

    return p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Li5/d;->g1:I

    return p0
.end method

.method public final t()Z
    .locals 0

    iget p0, p0, Li5/d;->x:I

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
    .locals 1

    iget-object v0, p0, Li5/d;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Li5/d;->w(Li5/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li5/d;->r:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Li5/d;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final u()I
    .locals 0

    iget p0, p0, Li5/d;->i1:I

    return p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Li5/d;->x:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
