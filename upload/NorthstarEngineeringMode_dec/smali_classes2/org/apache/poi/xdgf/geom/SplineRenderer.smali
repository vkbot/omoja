.class public Lorg/apache/poi/xdgf/geom/SplineRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNurbsSpline(Li0/b;Li0/j;Li0/j;I)Li0/i;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Li0/j;->b(I)D

    move-result-wide v4

    iget v6, v1, Li0/j;->a:I

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v1, v7}, Li0/j;->b(I)D

    move-result-wide v7

    move v9, v3

    :goto_0
    const-string v10, ")"

    if-ge v9, v6, :cond_1

    invoke-virtual {v1, v9}, Li0/j;->b(I)D

    move-result-wide v11

    sub-double/2addr v11, v4

    div-double/2addr v11, v7

    if-ltz v9, :cond_0

    iget v13, v1, Li0/j;->a:I

    if-ge v9, v13, :cond_0

    iget-object v10, v1, Li0/j;->b:[D

    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "required: (index >= 0 && index < size) but: (index = "

    const-string v3, ", size = "

    invoke-static {v2, v9, v3}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Li0/j;->a:I

    invoke-static {v2, v1, v10}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v4, v0, Li0/b;->a:Lm0/a;

    iget v4, v4, Lm0/a;->a:I

    add-int v4, v4, p3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :goto_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ge v6, v4, :cond_2

    invoke-virtual {v1, v7, v8}, Li0/j;->a(D)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Li0/d;

    iget-object v6, v0, Li0/b;->a:Lm0/a;

    iget v6, v6, Lm0/a;->a:I

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-object v9, v4, Li0/d;->a:[I

    iput v3, v4, Li0/d;->b:I

    iput v3, v4, Li0/d;->c:I

    move v11, v3

    move v12, v11

    move v13, v5

    :goto_2
    const/4 v14, 0x5

    const-string v15, "0:n-1"

    const/16 v9, 0x29

    const/16 v7, 0x28

    const/16 v8, 0x2c

    if-ge v11, v14, :cond_6

    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_3

    if-nez v12, :cond_3

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    if-ne v14, v7, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    if-ne v14, v9, :cond_5

    add-int/lit8 v12, v12, -0x1

    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    if-nez v12, :cond_34

    const/4 v11, 0x2

    mul-int/2addr v13, v11

    new-array v13, v13, [I

    new-instance v9, Lk0/l;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    iput-object v7, v9, Lk0/l;->b:[Ljava/lang/String;

    new-array v7, v11, [D

    iput-object v7, v9, Lk0/l;->c:[D

    iput v3, v9, Lk0/l;->d:I

    iput-boolean v5, v9, Lk0/l;->a:Z

    new-instance v7, Lk0/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x32

    new-array v11, v8, [Ljava/lang/String;

    iput-object v11, v7, Lk0/e;->a:[Ljava/lang/String;

    new-array v8, v8, [Ll0/b;

    iput-object v8, v7, Lk0/e;->b:[Ll0/b;

    iput v3, v7, Lk0/e;->c:I

    new-instance v8, Ll/q;

    const/4 v11, 0x7

    invoke-direct {v8, v11}, Ll/q;-><init>(I)V

    const-string v3, "min"

    invoke-virtual {v7, v3, v8}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    invoke-direct {v3, v11}, Lv3/c0;-><init>(I)V

    const-string v8, "max"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/16 v8, 0xc

    invoke-direct {v3, v8}, La/a;-><init>(I)V

    const-string v8, "sum"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    const/4 v8, 0x3

    invoke-direct {v3, v8}, Lv3/c0;-><init>(I)V

    const-string v5, "avg"

    invoke-virtual {v7, v5, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lv3/c0;-><init>(I)V

    const-string v5, "pi"

    invoke-virtual {v7, v5, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/4 v5, 0x6

    invoke-direct {v3, v5}, La/a;-><init>(I)V

    const-string v5, "e"

    invoke-virtual {v7, v5, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, La/a;-><init>(I)V

    const-string v14, "rand"

    invoke-virtual {v7, v14, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/16 v14, 0xb

    invoke-direct {v3, v14}, La/a;-><init>(I)V

    const-string v11, "sin"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    const/4 v11, 0x4

    invoke-direct {v3, v11}, Lv3/c0;-><init>(I)V

    const-string v11, "cos"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    invoke-direct {v3, v14}, Lv3/c0;-><init>(I)V

    const-string v11, "tan"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    invoke-direct {v3, v5}, Ll/q;-><init>(I)V

    const-string v11, "sqrt"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    invoke-direct {v3, v8}, La/a;-><init>(I)V

    const-string v11, "abs"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    invoke-direct {v3, v8}, Ll/q;-><init>(I)V

    const-string v8, "ceil"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/4 v8, 0x7

    invoke-direct {v3, v8}, La/a;-><init>(I)V

    const-string v8, "floor"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    const/4 v8, 0x5

    invoke-direct {v3, v8}, Lv3/c0;-><init>(I)V

    const-string v8, "exp"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Lv3/c0;-><init>(I)V

    const-string v11, "lg"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    invoke-direct {v3, v8}, Ll/q;-><init>(I)V

    const-string v8, "ln"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    const/16 v8, 0x9

    invoke-direct {v3, v8}, Ll/q;-><init>(I)V

    const-string v11, "sign"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    invoke-direct {v3, v8}, Lv3/c0;-><init>(I)V

    const-string v11, "round"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    const/4 v11, 0x5

    invoke-direct {v3, v11}, Ll/q;-><init>(I)V

    const-string v11, "fact"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    const/4 v11, 0x4

    invoke-direct {v3, v11}, Ll/q;-><init>(I)V

    const-string v11, "cosh"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    invoke-direct {v3, v5}, Lv3/c0;-><init>(I)V

    const-string v11, "sinh"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    invoke-direct {v3, v14}, Ll/q;-><init>(I)V

    const-string v11, "tanh"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    const/4 v11, 0x1

    invoke-direct {v3, v11}, Lv3/c0;-><init>(I)V

    const-string v11, "acos"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/4 v11, 0x4

    invoke-direct {v3, v11}, La/a;-><init>(I)V

    const-string v11, "asin"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    const/4 v11, 0x2

    invoke-direct {v3, v11}, Ll/q;-><init>(I)V

    const-string v14, "atan"

    invoke-virtual {v7, v14, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    const/4 v14, 0x1

    invoke-direct {v3, v14}, Ll/q;-><init>(I)V

    const-string v14, "acosh"

    invoke-virtual {v7, v14, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Lv3/c0;

    invoke-direct {v3, v11}, Lv3/c0;-><init>(I)V

    const-string v11, "asinh"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/4 v11, 0x5

    invoke-direct {v3, v11}, La/a;-><init>(I)V

    const-string v11, "atanh"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll/q;

    const/16 v11, 0x8

    invoke-direct {v3, v11}, Ll/q;-><init>(I)V

    const-string v11, "pow"

    invoke-virtual {v7, v11, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    invoke-direct {v3, v8}, La/a;-><init>(I)V

    const-string v8, "mod"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, Ll0/a;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Ll0/a;-><init>(I)V

    const-string v8, "combin"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    new-instance v3, La/a;

    const/16 v8, 0x8

    invoke-direct {v3, v8}, La/a;-><init>(I)V

    const-string v8, "log"

    invoke-virtual {v7, v8, v3}, Lk0/e;->a(Ljava/lang/String;Ll0/b;)V

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    const/4 v14, 0x5

    if-gt v3, v14, :cond_e

    if-ge v3, v14, :cond_7

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v23

    :goto_5
    move-object/from16 v24, v15

    move/from16 v15, v23

    goto :goto_6

    :cond_7
    const/16 v23, 0x20

    goto :goto_5

    :goto_6
    if-eq v3, v14, :cond_8

    const/16 v14, 0x2c

    if-ne v15, v14, :cond_9

    if-nez v12, :cond_9

    :cond_8
    const/4 v14, -0x1

    goto :goto_7

    :cond_9
    const/16 v14, 0x28

    if-ne v15, v14, :cond_a

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_a
    const/16 v14, 0x29

    if-ne v15, v14, :cond_b

    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    :cond_b
    const/16 v14, 0x3a

    if-ne v15, v14, :cond_d

    move v5, v3

    goto :goto_9

    :goto_7
    if-ne v5, v14, :cond_c

    invoke-static {v9, v6, v8, v3}, Li0/d;->b(Lk0/l;III)Lk0/c;

    move-result-object v5

    invoke-virtual {v5, v9, v7}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v5, v14

    aput v5, v13, v11

    add-int/lit8 v8, v11, 0x1

    aput v5, v13, v8

    add-int/lit8 v11, v11, 0x2

    goto :goto_8

    :cond_c
    invoke-static {v9, v6, v8, v5}, Li0/d;->b(Lk0/l;III)Lk0/c;

    move-result-object v8

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v9, v7}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, v13, v11

    add-int/lit8 v5, v5, 0x1

    invoke-static {v9, v6, v5, v3}, Li0/d;->b(Lk0/l;III)Lk0/c;

    move-result-object v1

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v9, v7}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, v13, v14

    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v8, v1

    const/4 v5, -0x1

    :cond_d
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v24

    goto :goto_4

    :cond_e
    iput-object v13, v4, Li0/d;->a:[I

    new-instance v1, Li0/f;

    invoke-direct {v1, v0, v4}, Li0/f;-><init>(Li0/b;Li0/d;)V

    if-lez p3, :cond_33

    const/4 v0, 0x1

    add-int/lit8 v2, p3, 0x1

    iput v2, v1, Li0/a;->g:I

    const/4 v0, 0x2

    iput v0, v1, Li0/a;->h:I

    move-object/from16 v0, p1

    iput-object v0, v1, Li0/a;->d:Li0/j;

    move-object/from16 v0, p2

    if-nez v0, :cond_f

    const/4 v2, 0x0

    iput-boolean v2, v1, Li0/f;->m:Z

    goto :goto_a

    :cond_f
    iput-object v0, v1, Li0/f;->l:Li0/j;

    :goto_a
    new-instance v0, Li0/i;

    invoke-direct {v0}, Li0/e;-><init>()V

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    iput-wide v2, v0, Li0/e;->d:D

    iget-object v2, v1, Li0/g;->b:Li0/d;

    iget-object v3, v1, Li0/g;->a:Li0/b;

    iget-object v3, v3, Li0/b;->a:Lm0/a;

    iget v3, v3, Lm0/a;->a:I

    const/4 v4, 0x0

    :goto_b
    iget-object v5, v2, Li0/d;->a:[I

    array-length v6, v5

    if-ge v4, v6, :cond_12

    aget v5, v5, v4

    if-ltz v5, :cond_11

    if-lt v5, v3, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_11
    :goto_c
    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    const/4 v2, 0x1

    :goto_d
    const-string v3, "Group iterator not in range"

    if-eqz v2, :cond_32

    iget-object v2, v1, Li0/g;->b:Li0/d;

    invoke-virtual {v2}, Li0/d;->a()I

    move-result v2

    iget-object v4, v1, Li0/f;->k:Li0/f$b;

    iget-object v5, v4, Li0/f$b;->a:[D

    array-length v5, v5

    if-ge v5, v2, :cond_13

    mul-int/lit8 v5, v2, 0x2

    new-array v6, v5, [D

    iput-object v6, v4, Li0/f$b;->a:[D

    new-array v5, v5, [D

    iput-object v5, v4, Li0/f$b;->b:[D

    :cond_13
    iget-boolean v5, v1, Li0/f;->m:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_16

    iget-object v5, v1, Li0/f;->l:Li0/j;

    iget v5, v5, Li0/j;->a:I

    if-ne v5, v2, :cond_15

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v2, :cond_17

    iget-object v8, v4, Li0/f$b;->b:[D

    iget-object v9, v1, Li0/f;->l:Li0/j;

    invoke-virtual {v9, v5}, Li0/j;->b(I)D

    move-result-wide v9

    aput-wide v9, v8, v5

    iget-object v8, v4, Li0/f$b;->b:[D

    aget-wide v8, v8, v5

    cmpg-double v8, v8, v6

    if-ltz v8, :cond_14

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative weight not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "weightVector.size("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Li0/f;->l:Li0/j;

    iget v1, v1, Li0/j;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") != group iterator size("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_17

    iget-object v8, v4, Li0/f$b;->b:[D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    iget-object v2, v1, Li0/g;->b:Li0/d;

    iget-object v4, v1, Li0/g;->a:Li0/b;

    iget-object v4, v4, Li0/b;->a:Lm0/a;

    iget v4, v4, Lm0/a;->a:I

    const/4 v5, 0x0

    :goto_10
    iget-object v8, v2, Li0/d;->a:[I

    array-length v9, v8

    if-ge v5, v9, :cond_19

    aget v8, v8, v5

    if-ltz v8, :cond_18

    if-ge v8, v4, :cond_18

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v2, v1, Li0/g;->b:Li0/d;

    invoke-virtual {v2}, Li0/d;->a()I

    move-result v2

    iget v3, v1, Li0/a;->g:I

    sub-int v4, v2, v3

    if-ltz v4, :cond_31

    add-int/2addr v2, v3

    iget-object v3, v1, Li0/a;->c:Li0/a$b;

    iget-object v5, v3, Li0/a$b;->c:[D

    array-length v5, v5

    if-ge v5, v2, :cond_1a

    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [D

    iput-object v5, v3, Li0/a$b;->c:[D

    :cond_1a
    iget v5, v1, Li0/a;->h:I

    iget-wide v8, v1, Li0/a;->e:D

    const/4 v10, 0x2

    if-ne v5, v10, :cond_1e

    iget-object v4, v1, Li0/a;->d:Li0/j;

    iget v5, v4, Li0/j;->a:I

    if-ne v5, v2, :cond_1d

    iget-object v5, v3, Li0/a$b;->c:[D

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Li0/j;->b(I)D

    move-result-wide v11

    aput-wide v11, v5, v10

    const/4 v4, 0x1

    :goto_11
    if-ge v4, v2, :cond_1c

    iget-object v5, v3, Li0/a$b;->c:[D

    iget-object v10, v1, Li0/a;->d:Li0/j;

    invoke-virtual {v10, v4}, Li0/j;->b(I)D

    move-result-wide v10

    aput-wide v10, v5, v4

    iget-object v5, v3, Li0/a$b;->c:[D

    aget-wide v10, v5, v4

    add-int/lit8 v12, v4, -0x1

    aget-wide v12, v5, v12

    cmpg-double v5, v10, v12

    if-ltz v5, :cond_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Knot not in sorted order! (knot["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] < knot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-1])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v11, 0x1

    goto/16 :goto_18

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "knotVector.size("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Li0/a;->d:Li0/j;

    iget v1, v1, Li0/j;->a:I

    const-string v4, ") != "

    invoke-static {v3, v1, v4, v2}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-boolean v10, v1, Li0/a;->i:Z

    const/4 v11, 0x1

    if-ne v5, v11, :cond_21

    add-int/lit8 v4, v2, -0x1

    int-to-double v4, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v4, v11, v4

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v2, :cond_1f

    iget-object v12, v3, Li0/a$b;->c:[D

    int-to-double v13, v11

    mul-double/2addr v13, v4

    aput-wide v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_1f
    if-eqz v10, :cond_20

    iget v2, v1, Li0/a;->g:I

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    int-to-double v8, v2

    mul-double/2addr v8, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v4, v12, v8

    goto :goto_13

    :cond_20
    const/4 v11, 0x1

    move-wide v4, v8

    move-wide v8, v6

    :goto_13
    move-wide/from16 v27, v4

    move-wide v4, v8

    move-wide/from16 v7, v27

    goto :goto_19

    :cond_21
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_25

    add-int/lit8 v5, v4, 0x1

    int-to-double v14, v5

    div-double v14, v12, v14

    const/4 v5, 0x0

    :goto_14
    iget v12, v1, Li0/a;->g:I

    if-ge v5, v12, :cond_22

    iget-object v12, v3, Li0/a$b;->c:[D

    aput-wide v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_22
    move v5, v11

    :goto_15
    if-gt v5, v4, :cond_23

    iget-object v13, v3, Li0/a$b;->c:[D

    add-int/lit8 v19, v12, 0x1

    int-to-double v6, v5

    mul-double/2addr v6, v14

    aput-wide v6, v13, v12

    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v19

    const-wide/16 v6, 0x0

    goto :goto_15

    :cond_23
    :goto_16
    if-ge v12, v2, :cond_24

    iget-object v4, v3, Li0/a$b;->c:[D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_24
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v10, :cond_25

    move-wide v7, v5

    :goto_17
    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_25
    :goto_18
    move-wide v7, v8

    goto :goto_17

    :goto_19
    iget-object v2, v3, Li0/a$b;->a:[I

    array-length v2, v2

    iget v6, v1, Li0/a;->g:I

    if-ge v2, v6, :cond_26

    const/4 v2, 0x2

    mul-int/2addr v6, v2

    new-array v2, v6, [I

    iput-object v2, v3, Li0/a$b;->a:[I

    new-array v2, v6, [I

    iput-object v2, v3, Li0/a$b;->b:[I

    :cond_26
    iget v2, v0, Li0/e;->e:I

    add-int/lit8 v3, v2, 0x1

    new-array v6, v3, [D

    aput-wide v4, v6, v2

    invoke-virtual {v1, v6}, Li0/f;->a([D)V

    sget-object v9, Li0/e;->f:Ljava/lang/Object;

    invoke-virtual {v0, v6, v9}, Li0/e;->a([DLjava/lang/Object;)V

    cmpl-double v6, v4, v7

    if-gtz v6, :cond_30

    const/16 v6, 0xa

    new-array v6, v6, [[D

    new-array v9, v3, [D

    aput-wide v4, v9, v2

    invoke-virtual {v1, v9}, Li0/f;->a([D)V

    new-array v10, v3, [D

    aput-wide v7, v10, v2

    invoke-virtual {v1, v10}, Li0/f;->a([D)V

    const/4 v12, 0x0

    aput-object v10, v6, v12

    iget v10, v1, Li0/a;->f:I

    new-array v13, v10, [[D

    iget-wide v14, v0, Li0/e;->d:D

    mul-double/2addr v14, v14

    new-array v11, v3, [D

    const/4 v12, 0x1

    :goto_1a
    add-double v16, v4, v7

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    move-wide/from16 p2, v7

    new-array v7, v3, [D

    aput-wide v16, v7, v2

    invoke-virtual {v1, v7}, Li0/f;->a([D)V

    add-int/lit8 v8, v12, -0x1

    aget-object v8, v6, v8

    invoke-static {v9, v8, v7, v11, v2}, Ld/f;->T([D[D[D[DI)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_2f

    cmpg-double v8, v20, v14

    if-gez v8, :cond_2b

    const/4 v8, 0x0

    const-wide/16 v20, 0x0

    :goto_1b
    if-ge v8, v10, :cond_28

    add-double v20, v4, v16

    div-double v20, v20, v18

    move-wide/from16 v22, v4

    new-array v4, v3, [D

    aput-object v4, v13, v8

    aput-wide v20, v4, v2

    invoke-virtual {v1, v4}, Li0/f;->a([D)V

    invoke-static {v9, v7, v4, v11, v2}, Ld/f;->T([D[D[D[DI)D

    move-result-wide v4

    cmpl-double v4, v4, v14

    if-ltz v4, :cond_27

    goto :goto_1c

    :cond_27
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v16, v20

    move-wide/from16 v4, v22

    goto :goto_1b

    :cond_28
    move-wide/from16 v22, v4

    :goto_1c
    if-ne v8, v10, :cond_29

    move-wide/from16 v20, p2

    const/4 v4, 0x1

    goto :goto_1f

    :cond_29
    invoke-static {v12, v6}, Ld/f;->i(I[[D)[[D

    move-result-object v4

    add-int/lit8 v5, v12, 0x1

    aput-object v7, v4, v12

    move-object v6, v4

    move v12, v5

    const/4 v4, 0x0

    :goto_1d
    if-gt v4, v8, :cond_2a

    invoke-static {v12, v6}, Ld/f;->i(I[[D)[[D

    move-result-object v6

    add-int/lit8 v5, v12, 0x1

    aget-object v18, v13, v4

    aput-object v18, v6, v12

    add-int/lit8 v4, v4, 0x1

    move v12, v5

    goto :goto_1d

    :cond_2a
    :goto_1e
    const/4 v4, 0x0

    goto :goto_1f

    :cond_2b
    move-wide/from16 v22, v4

    move-wide/from16 v20, p2

    goto :goto_1e

    :goto_1f
    if-eqz v4, :cond_2d

    sget-object v4, Li0/e;->g:Ljava/lang/Object;

    invoke-virtual {v0, v9, v4}, Li0/e;->a([DLjava/lang/Object;)V

    invoke-virtual {v0, v7, v4}, Li0/e;->a([DLjava/lang/Object;)V

    add-int/lit8 v5, v12, -0x1

    aget-object v7, v6, v5

    if-nez v5, :cond_2c

    invoke-virtual {v0, v7, v4}, Li0/e;->a([DLjava/lang/Object;)V

    return-object v0

    :cond_2c
    add-int/lit8 v12, v12, -0x2

    aget-object v4, v6, v12

    aget-wide v8, v4, v2

    move v12, v5

    move-wide/from16 v4, v20

    move-wide/from16 v27, v8

    move-object v9, v7

    move-wide/from16 v7, v27

    goto/16 :goto_1a

    :cond_2d
    cmpl-double v4, v20, v16

    if-lez v4, :cond_2e

    invoke-static {v12, v6}, Ld/f;->i(I[[D)[[D

    move-result-object v4

    add-int/lit8 v5, v12, 0x1

    aput-object v7, v4, v12

    move-object v6, v4

    move v12, v5

    move-wide/from16 v7, v16

    :goto_20
    move-wide/from16 v4, v22

    goto/16 :goto_1a

    :cond_2e
    move-wide/from16 v7, v20

    goto :goto_20

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NaN or infinity resulted from calling the eval method of the "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Li0/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " class."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t_min <= t_max required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "group iterator size - degree < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Degree > 0 required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Li0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Li0/c;->r:I

    iput v1, v0, Li0/c;->x:I

    const/4 v1, 0x0

    iput-object v1, v0, Li0/c;->y:Lk0/d;

    const-string v1, "round brackets do not balance"

    iput-object v1, v0, Li0/c;->c:Ljava/lang/String;

    throw v0
.end method
