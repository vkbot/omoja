.class public final Lt4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/a$a;
    }
.end annotation


# static fields
.field public static final a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lt4/a;->a:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
        0x43c0e1b3be415a00L    # 2.43290200817664E18
        0x4406283be9b5c620L    # 5.109094217170944E19
        0x444e77526159f06cL    # 1.1240007277776077E21
        0x4495e5c335f8a4ceL    # 2.585201673888498E22
        0x44e06c52687a7b9aL    # 6.204484017332394E23
    .end array-data
.end method

.method public static a(DD)D
    .locals 55

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    double-to-int v4, v0

    int-to-double v5, v4

    sub-double v5, v0, v5

    add-int/lit8 v7, v4, 0x1

    new-array v8, v7, [D

    double-to-int v9, v2

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    if-lez v7, :cond_3b

    cmpl-double v14, v2, v12

    if-ltz v14, :cond_3b

    const-wide v15, 0x40c3880000000000L    # 10000.0

    cmpg-double v15, v2, v15

    if-gtz v15, :cond_3b

    cmpl-double v15, v5, v12

    if-ltz v15, :cond_3b

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v5, v16

    if-gez v18, :cond_3b

    move v11, v10

    :goto_0
    if-ge v11, v7, :cond_0

    aput-wide v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-wide v19, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v11, v2, v19

    const-wide v19, 0x2fffba634018dbL    # 8.9E-308

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    if-gez v11, :cond_a

    add-double v23, v5, v16

    cmpl-double v9, v2, v19

    if-lez v9, :cond_1

    mul-double v21, v21, v2

    move-wide/from16 v12, v21

    :cond_1
    if-eqz v15, :cond_2

    invoke-static {v12, v13, v5, v6}, Lz4/b;->j(DD)D

    move-result-wide v21

    invoke-static {v5, v6}, Lt4/e;->a(D)D

    move-result-wide v27

    mul-double v27, v27, v5

    div-double v21, v21, v27

    goto :goto_1

    :cond_2
    move-wide/from16 v21, v16

    :goto_1
    add-double v5, v2, v16

    cmpl-double v5, v5, v16

    if-lez v5, :cond_3

    neg-double v5, v12

    mul-double/2addr v5, v12

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    :goto_2
    mul-double v27, v21, v5

    div-double v27, v27, v23

    add-double v27, v27, v21

    aput-wide v27, v8, v10

    if-eqz v14, :cond_4

    const-wide/16 v14, 0x0

    cmpl-double v9, v27, v14

    if-nez v9, :cond_5

    move v11, v10

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v14, 0x0

    :cond_5
    move v11, v7

    goto :goto_3

    :goto_4
    if-eq v7, v9, :cond_3e

    cmpg-double v9, v2, v14

    if-gtz v9, :cond_6

    const/4 v5, 0x1

    :goto_5
    if-ge v5, v7, :cond_3e

    aput-wide v14, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    cmpl-double v9, v5, v14

    if-eqz v9, :cond_7

    div-double v19, v19, v5

    goto :goto_6

    :cond_7
    const-wide v14, 0x3fffba634018dbL    # 1.78E-307

    div-double v19, v14, v2

    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-ge v9, v7, :cond_3e

    div-double v21, v21, v23

    add-double v23, v23, v16

    mul-double v14, v21, v12

    mul-double v21, v19, v23

    cmpg-double v21, v14, v21

    if-gtz v21, :cond_8

    const-wide/16 v21, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v21, v14

    :goto_8
    mul-double v14, v21, v5

    div-double v14, v14, v23

    add-double v14, v14, v21

    aput-wide v14, v8, v9

    const-wide/16 v25, 0x0

    cmpl-double v14, v14, v25

    if-nez v14, :cond_9

    if-le v11, v9, :cond_9

    move v11, v9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    const-wide/high16 v11, 0x4039000000000000L    # 25.0

    cmpl-double v11, v2, v11

    const/4 v13, 0x3

    if-lez v11, :cond_1a

    add-int/lit8 v11, v9, 0x1

    if-gt v7, v11, :cond_1a

    const-wide v19, 0x3fe45f306dc9c883L    # 0.6366197723675814

    div-double v23, v19, v2

    sget-object v9, Lz4/b;->a:[[D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    const-wide/high16 v27, 0x3fc0000000000000L    # 0.125

    div-double v27, v27, v2

    mul-double v29, v27, v27

    const-wide v31, 0x4060400000000000L    # 130.0

    cmpl-double v9, v2, v31

    if-ltz v9, :cond_b

    const/4 v9, 0x4

    goto :goto_9

    :cond_b
    const-wide v31, 0x4041800000000000L    # 35.0

    cmpl-double v9, v2, v31

    if-ltz v9, :cond_c

    const/16 v9, 0x8

    goto :goto_9

    :cond_c
    const/16 v9, 0xb

    :goto_9
    int-to-double v14, v9

    const-wide/high16 v33, 0x4010000000000000L    # 4.0

    mul-double v14, v14, v33

    const-wide v35, 0x401921fb54442d18L    # 6.283185307179586

    div-double v35, v2, v35

    add-double v10, v35, v21

    double-to-int v10, v10

    int-to-double v10, v10

    const-wide v35, 0x4019200000000000L    # 6.28125

    mul-double v35, v35, v10

    sub-double v35, v2, v35

    const-wide v37, 0x3f5fb54442d1846aL    # 0.001935307179586477

    mul-double v10, v10, v37

    sub-double v35, v35, v10

    add-double v10, v5, v21

    div-double v10, v10, v19

    sub-double v10, v35, v10

    invoke-static {v10, v11}, Lz4/b;->m(D)D

    move-result-wide v19

    const-wide/16 v25, 0x0

    cmpg-double v35, v10, v25

    if-gez v35, :cond_d

    neg-double v10, v10

    :cond_d
    cmpl-double v35, v10, v10

    const-wide/high16 v37, 0x7ff8000000000000L    # Double.NaN

    if-nez v35, :cond_e

    const-wide/high16 v35, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v35, v10, v35

    if-nez v35, :cond_f

    :cond_e
    move-wide/from16 v39, v14

    goto :goto_b

    :cond_f
    const-wide v35, 0x414921fb00000000L    # 3294198.0

    cmpl-double v35, v10, v35

    if-lez v35, :cond_10

    new-array v12, v13, [D

    invoke-static {v10, v11, v12}, Lz4/b;->l(D[D)V

    const/4 v10, 0x0

    aget-wide v0, v12, v10

    double-to-int v0, v0

    and-int/2addr v0, v13

    const/4 v1, 0x1

    aget-wide v10, v12, v1

    const/4 v1, 0x2

    aget-wide v25, v12, v1

    move-wide/from16 v39, v14

    move-wide/from16 v13, v25

    goto :goto_a

    :cond_10
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v10, v0

    if-lez v0, :cond_11

    new-instance v0, Lz4/b$a;

    invoke-direct {v0, v10, v11}, Lz4/b$a;-><init>(D)V

    iget v1, v0, Lz4/b$a;->a:I

    and-int/2addr v1, v13

    iget-wide v10, v0, Lz4/b$a;->b:D

    move-wide/from16 v39, v14

    iget-wide v13, v0, Lz4/b$a;->c:D

    move v0, v1

    goto :goto_a

    :cond_11
    move-wide/from16 v39, v14

    const/4 v0, 0x0

    const-wide/16 v13, 0x0

    :goto_a
    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    :goto_b
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_d

    :cond_12
    invoke-static {v10, v11, v13, v14}, Lz4/b;->n(DD)D

    move-result-wide v37

    goto :goto_b

    :cond_13
    invoke-static {v10, v11, v13, v14}, Lz4/b;->c(DD)D

    move-result-wide v0

    :goto_c
    neg-double v0, v0

    move-wide/from16 v37, v0

    goto :goto_b

    :cond_14
    invoke-static {v10, v11, v13, v14}, Lz4/b;->n(DD)D

    move-result-wide v0

    goto :goto_c

    :cond_15
    invoke-static {v10, v11, v13, v14}, Lz4/b;->c(DD)D

    move-result-wide v37

    goto :goto_b

    :goto_d
    mul-double/2addr v5, v0

    move-wide v12, v5

    move-wide/from16 v10, v37

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_e
    if-gt v0, v1, :cond_18

    sub-double v14, v39, v16

    sub-double v25, v14, v12

    add-double/2addr v14, v12

    mul-double v14, v14, v25

    mul-double v14, v14, v29

    mul-double v14, v14, v21

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    sub-double v37, v39, v25

    sub-double v41, v12, v37

    add-double v37, v12, v37

    mul-double v37, v37, v41

    mul-double v41, v14, v37

    sget-object v1, Lt4/a;->a:[D

    mul-int/lit8 v36, v9, 0x2

    aget-wide v43, v1, v36

    div-double v41, v41, v43

    add-double v43, v39, v16

    sub-double v45, v12, v43

    add-double v43, v12, v43

    mul-double v43, v43, v45

    mul-double v43, v43, v14

    add-int/lit8 v14, v36, 0x1

    aget-wide v14, v1, v14

    div-double v43, v43, v14

    move-wide/from16 v45, v39

    const/4 v14, 0x2

    :goto_f
    if-gt v14, v9, :cond_16

    sub-double v45, v45, v33

    sub-double v47, v45, v16

    sub-double v49, v47, v12

    add-double v47, v47, v12

    mul-double v47, v47, v49

    sub-double v49, v45, v25

    sub-double v51, v12, v49

    add-double v49, v12, v49

    mul-double v49, v49, v51

    add-int/lit8 v15, v36, -0x2

    aget-wide v51, v1, v15

    div-double v51, v16, v51

    add-double v51, v51, v41

    mul-double v51, v51, v47

    mul-double v51, v51, v49

    mul-double v41, v51, v29

    add-int/lit8 v15, v36, -0x1

    aget-wide v51, v1, v15

    div-double v51, v16, v51

    add-double v51, v51, v43

    mul-double v51, v51, v47

    mul-double v51, v51, v37

    mul-double v43, v51, v29

    add-int/lit8 v36, v36, -0x2

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v37, v49

    goto :goto_f

    :cond_16
    add-double v41, v41, v16

    add-double v43, v43, v16

    mul-double v14, v12, v12

    sub-double v14, v14, v16

    mul-double v14, v14, v43

    mul-double v14, v14, v27

    add-int/lit8 v1, v0, -0x1

    mul-double v41, v41, v10

    mul-double v14, v14, v19

    sub-double v41, v41, v14

    mul-double v41, v41, v23

    aput-wide v41, v8, v1

    const/4 v1, 0x1

    if-ne v7, v1, :cond_17

    new-instance v0, Lt4/a$a;

    new-array v1, v7, [D

    sget-object v5, Lz4/b;->a:[[D

    const/4 v5, 0x0

    invoke-static {v8, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v0, v1, v7}, Lt4/a$a;-><init>([DI)V

    goto/16 :goto_25

    :cond_17
    neg-double v10, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-double/2addr v12, v14

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    move-wide/from16 v53, v10

    move-wide/from16 v10, v19

    move-wide/from16 v19, v53

    goto/16 :goto_e

    :cond_18
    move v0, v1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    if-le v7, v0, :cond_19

    add-double/2addr v5, v14

    const/4 v12, 0x2

    :goto_10
    if-ge v12, v7, :cond_19

    add-int/lit8 v0, v12, -0x1

    aget-wide v0, v8, v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v2

    add-int/lit8 v9, v12, -0x2

    aget-wide v9, v8, v9

    sub-double/2addr v0, v9

    aput-wide v0, v8, v12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v5, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_19
    move v11, v7

    goto/16 :goto_24

    :cond_1a
    sub-int v0, v7, v9

    add-int/lit8 v1, v9, 0x1

    int-to-double v10, v1

    add-double/2addr v10, v5

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v13

    div-double v23, v10, v2

    const-wide v27, 0x4351c37937e08000L    # 2.0E16

    const/4 v12, 0x3

    if-lt v0, v12, :cond_22

    const/4 v0, 0x2

    add-int/2addr v9, v0

    move v0, v1

    move v1, v9

    move-wide/from16 v29, v16

    :goto_11
    const-wide v33, 0x4341c37937e08000L    # 1.0E16

    if-gt v1, v4, :cond_20

    add-double/2addr v10, v13

    mul-double v12, v10, v23

    div-double/2addr v12, v2

    sub-double v12, v12, v29

    const-wide v14, 0x7c9008896bcf54faL    # 1.0E292

    cmpl-double v0, v12, v14

    if-lez v0, :cond_1f

    const-wide v14, 0x7fe1ccf385ebc8a0L    # 1.0E308

    div-double v29, v12, v14

    div-double v37, v23, v14

    add-int/lit8 v0, v1, 0x1

    move-wide/from16 v12, v29

    move-wide/from16 v23, v37

    :goto_12
    add-int/lit8 v9, v1, 0x1

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    add-double v10, v10, v27

    mul-double v27, v10, v12

    div-double v27, v27, v2

    sub-double v27, v27, v23

    cmpg-double v36, v27, v16

    if-lez v36, :cond_1e

    div-double v27, v10, v2

    mul-double v23, v23, v12

    mul-double v27, v27, v27

    div-double v27, v21, v27

    sub-double v27, v21, v27

    mul-double v27, v27, v23

    div-double v27, v27, v33

    mul-double/2addr v14, v12

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v23

    sget-object v9, Lz4/b;->a:[[D

    if-gt v7, v1, :cond_1b

    move v9, v7

    goto :goto_13

    :cond_1b
    move v9, v1

    :goto_13
    if-gt v0, v9, :cond_1d

    mul-double v23, v10, v29

    div-double v23, v23, v2

    sub-double v23, v23, v37

    mul-double v37, v23, v29

    cmpl-double v36, v37, v27

    if-lez v36, :cond_1c

    goto :goto_14

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v37, v29

    move-wide/from16 v29, v23

    goto :goto_13

    :cond_1d
    :goto_14
    move v0, v1

    move v1, v9

    move-wide/from16 v29, v12

    move-wide/from16 v23, v14

    move-wide/from16 v13, v27

    const/4 v12, 0x1

    goto :goto_15

    :cond_1e
    move v1, v9

    move-wide/from16 v23, v12

    move-wide/from16 v12, v27

    goto :goto_12

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move-wide/from16 v29, v23

    move-wide/from16 v23, v12

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    move/from16 v53, v1

    move v1, v0

    move/from16 v0, v53

    goto/16 :goto_11

    :cond_20
    move v1, v4

    move v9, v7

    move-wide/from16 v13, v27

    const/4 v12, 0x0

    :goto_15
    if-nez v12, :cond_21

    int-to-double v10, v1

    add-double/2addr v10, v5

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v27

    mul-double v33, v33, v29

    sget-object v0, Lz4/b;->a:[[D

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    mul-double v37, v23, v27

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    move v15, v1

    mul-double v0, v27, v33

    invoke-static {v13, v14, v0, v1}, Lz4/b;->i(DD)D

    move-result-wide v27

    move v1, v15

    goto :goto_16

    :cond_21
    move v1, v0

    move-wide/from16 v27, v13

    goto :goto_16

    :cond_22
    move v9, v7

    move-wide/from16 v29, v16

    const/4 v12, 0x0

    :goto_16
    const/4 v0, 0x1

    if-nez v12, :cond_24

    :goto_17
    add-int/2addr v1, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    add-double/2addr v10, v12

    mul-double v14, v10, v23

    div-double/2addr v14, v2

    sub-double v14, v14, v29

    cmpg-double v18, v14, v27

    if-ltz v18, :cond_23

    move-wide/from16 v23, v14

    goto :goto_18

    :cond_23
    move-wide/from16 v29, v23

    move-wide/from16 v23, v14

    goto :goto_17

    :cond_24
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    :goto_18
    add-int/2addr v1, v0

    add-double/2addr v10, v12

    div-double v12, v16, v23

    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v14, v1, 0x2

    mul-int/lit8 v15, v14, 0x4

    sub-int/2addr v0, v15

    int-to-double v14, v14

    sub-double v23, v14, v16

    add-double v23, v23, v5

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v29, v14, v27

    add-double v29, v29, v5

    if-eqz v0, :cond_25

    mul-double v23, v23, v12

    mul-double v23, v23, v29

    div-double v23, v23, v14

    move/from16 v27, v0

    goto :goto_19

    :cond_25
    move/from16 v27, v0

    const-wide/16 v23, 0x0

    :goto_19
    sub-int v0, v1, v7

    move-wide/from16 v33, v12

    const/4 v12, 0x1

    const-wide/16 v28, 0x0

    :goto_1a
    if-gt v12, v0, :cond_29

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v30

    mul-double v37, v10, v33

    div-double v37, v37, v2

    sub-double v37, v37, v28

    rsub-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_28

    sub-double v14, v14, v16

    mul-double v28, v14, v30

    add-double v28, v28, v5

    const/4 v13, 0x1

    if-ne v1, v13, :cond_26

    move-wide/from16 v28, v33

    move-wide/from16 v33, v37

    goto :goto_1b

    :cond_26
    sub-double v39, v14, v16

    add-double v39, v39, v5

    const-wide/16 v25, 0x0

    cmpl-double v13, v39, v25

    if-nez v13, :cond_27

    move-wide/from16 v39, v16

    :cond_27
    mul-double v28, v28, v37

    add-double v28, v28, v23

    mul-double v28, v28, v39

    div-double v28, v28, v14

    move-wide/from16 v23, v28

    :cond_28
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v28, v33

    move-wide/from16 v33, v37

    goto :goto_1a

    :cond_29
    :goto_1b
    add-int/lit8 v12, v1, -0x1

    aput-wide v33, v8, v12

    if-ltz v0, :cond_2f

    const/4 v0, 0x1

    if-gt v7, v0, :cond_2b

    add-double v12, v5, v16

    cmpl-double v0, v12, v16

    if-nez v0, :cond_2a

    move-wide/from16 v12, v16

    :goto_1c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2a
    move-wide v12, v5

    goto :goto_1c

    :goto_1d
    aget-wide v28, v8, v0

    mul-double v28, v28, v12

    add-double v23, v28, v23

    const/4 v0, 0x1

    :goto_1e
    const/4 v12, 0x0

    goto :goto_1f

    :cond_2b
    add-int/lit8 v0, v1, -0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double/2addr v10, v12

    add-int/lit8 v1, v1, -0x2

    mul-double v33, v33, v10

    div-double v33, v33, v2

    sub-double v33, v33, v28

    aput-wide v33, v8, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    move v1, v0

    const/4 v0, 0x0

    const/4 v12, 0x1

    goto :goto_1f

    :cond_2c
    rsub-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_2e

    sub-double v14, v14, v16

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v28, v14, v12

    add-double v28, v28, v5

    sub-double v12, v14, v16

    add-double/2addr v12, v5

    const-wide/16 v25, 0x0

    cmpl-double v1, v12, v25

    if-nez v1, :cond_2d

    move-wide/from16 v12, v16

    :cond_2d
    mul-double v33, v33, v28

    add-double v33, v33, v23

    mul-double v33, v33, v12

    div-double v23, v33, v14

    :cond_2e
    move v1, v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_1e

    :goto_1f
    if-nez v0, :cond_32

    if-nez v12, :cond_32

    add-int/lit8 v13, v1, -0x2

    if-eqz v13, :cond_32

    move/from16 v28, v27

    move/from16 v27, v9

    const/4 v9, 0x1

    :goto_20
    if-gt v9, v13, :cond_33

    add-int/lit8 v29, v1, -0x1

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    sub-double v10, v10, v30

    add-int/lit8 v30, v1, -0x2

    aget-wide v33, v8, v29

    mul-double v33, v33, v10

    div-double v33, v33, v2

    aget-wide v37, v8, v1

    sub-double v33, v33, v37

    aput-wide v33, v8, v30

    const/4 v1, 0x2

    rsub-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_31

    sub-double v14, v14, v16

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v37, v14, v30

    add-double v37, v37, v5

    sub-double v39, v14, v16

    add-double v39, v39, v5

    const-wide/16 v25, 0x0

    cmpl-double v1, v39, v25

    if-nez v1, :cond_30

    move-wide/from16 v39, v16

    :cond_30
    mul-double v33, v33, v37

    add-double v33, v33, v23

    mul-double v33, v33, v39

    div-double v33, v33, v14

    move-wide/from16 v23, v33

    :cond_31
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v29

    goto :goto_20

    :cond_32
    move/from16 v27, v9

    :cond_33
    if-nez v0, :cond_36

    if-nez v12, :cond_34

    add-double v0, v5, v16

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v9

    const/4 v11, 0x1

    aget-wide v12, v8, v11

    mul-double/2addr v0, v12

    div-double/2addr v0, v2

    const/4 v11, 0x2

    aget-wide v11, v8, v11

    sub-double/2addr v0, v11

    const/4 v11, 0x0

    aput-wide v0, v8, v11

    goto :goto_21

    :cond_34
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x0

    :goto_21
    sub-double v14, v14, v16

    mul-double/2addr v14, v9

    add-double/2addr v14, v5

    const-wide/16 v0, 0x0

    cmpl-double v9, v14, v0

    if-nez v9, :cond_35

    move-wide/from16 v14, v16

    :cond_35
    aget-wide v0, v8, v11

    mul-double/2addr v0, v14

    add-double v23, v0, v23

    :cond_36
    invoke-static {v5, v6}, Lz4/b;->a(D)D

    move-result-wide v0

    const-wide v9, 0x3c9cd2b297d889bcL    # 1.0E-16

    cmpl-double v0, v0, v9

    if-lez v0, :cond_37

    invoke-static {v5, v6}, Lt4/e;->a(D)D

    move-result-wide v0

    mul-double v9, v2, v21

    neg-double v5, v5

    invoke-static {v9, v10, v5, v6}, Lz4/b;->j(DD)D

    move-result-wide v5

    mul-double/2addr v5, v0

    mul-double v23, v23, v5

    :cond_37
    cmpl-double v0, v23, v16

    if-lez v0, :cond_38

    mul-double v19, v19, v23

    :cond_38
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v7, :cond_3a

    aget-wide v5, v8, v0

    invoke-static {v5, v6}, Lz4/b;->a(D)D

    move-result-wide v5

    cmpg-double v1, v5, v19

    if-gez v1, :cond_39

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v0

    :cond_39
    aget-wide v5, v8, v0

    div-double v5, v5, v23

    aput-wide v5, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3a
    move/from16 v11, v27

    goto :goto_24

    :cond_3b
    if-lez v7, :cond_3c

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v0

    :cond_3c
    sget-object v0, Lz4/b;->a:[[D

    if-gtz v7, :cond_3d

    move v10, v7

    const/4 v0, 0x1

    goto :goto_23

    :cond_3d
    const/4 v0, 0x1

    const/4 v10, 0x0

    :goto_23
    add-int/lit8 v11, v10, -0x1

    :cond_3e
    :goto_24
    new-instance v0, Lt4/a$a;

    new-array v1, v7, [D

    sget-object v5, Lz4/b;->a:[[D

    const/4 v5, 0x0

    invoke-static {v8, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v0, v1, v11}, Lt4/a$a;-><init>([DI)V

    :goto_25
    iget-object v1, v0, Lt4/a$a;->a:[D

    iget v0, v0, Lt4/a$a;->b:I

    if-lt v0, v7, :cond_3f

    aget-wide v0, v1, v4

    return-wide v0

    :cond_3f
    if-ltz v0, :cond_41

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    aget-wide v5, v1, v0

    invoke-static {v5, v6}, Lz4/b;->a(D)D

    move-result-wide v5

    const-wide v7, 0x2b2bff2ee48e0530L    # 1.0E-100

    cmpg-double v0, v5, v7

    if-gez v0, :cond_40

    aget-wide v0, v1, v4

    return-wide v0

    :cond_40
    new-instance v0, Lp4/a;

    sget-object v1, Lq4/c;->Z:Lq4/c;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lp4/a;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v0

    :cond_41
    new-instance v0, Lp4/d;

    sget-object v1, Lq4/c;->y:Lq4/c;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw v0
.end method
