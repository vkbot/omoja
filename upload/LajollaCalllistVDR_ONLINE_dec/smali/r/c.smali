.class public final Lr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:Landroid/graphics/ColorMatrix;

.field public final c:Landroid/graphics/ColorMatrix;

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lr/c;->a:[F

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lr/c;->b:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lr/c;->c:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr/c;->d:F

    iput v0, p0, Lr/c;->e:F

    iput v0, p0, Lr/c;->f:F

    iput v0, p0, Lr/c;->g:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lr/c;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    iget v2, v0, Lr/c;->e:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    const/16 v7, 0xe

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/4 v5, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x2

    iget-object v6, v0, Lr/c;->a:[F

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-eqz v4, :cond_0

    sub-float v4, v3, v2

    const v22, 0x3e998c7e    # 0.2999f

    mul-float v22, v22, v4

    const v23, 0x3f1645a2    # 0.587f

    mul-float v23, v23, v4

    const v24, 0x3de978d5    # 0.114f

    mul-float v4, v4, v24

    add-float v24, v22, v2

    aput v24, v6, v21

    aput v23, v6, v20

    aput v4, v6, v19

    aput v5, v6, v18

    aput v5, v6, v17

    aput v22, v6, v16

    add-float v24, v23, v2

    aput v24, v6, v15

    aput v4, v6, v14

    aput v5, v6, v13

    aput v5, v6, v12

    aput v22, v6, v11

    aput v23, v6, v10

    add-float/2addr v4, v2

    aput v4, v6, v9

    aput v5, v6, v8

    aput v5, v6, v7

    const/16 v2, 0xf

    aput v5, v6, v2

    const/16 v2, 0x10

    aput v5, v6, v2

    const/16 v2, 0x11

    aput v5, v6, v2

    const/16 v2, 0x12

    aput v3, v6, v2

    const/16 v2, 0x13

    aput v5, v6, v2

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    move/from16 v2, v20

    goto :goto_0

    :cond_0
    move/from16 v2, v21

    :goto_0
    iget v4, v0, Lr/c;->f:F

    cmpl-float v22, v4, v3

    iget-object v7, v0, Lr/c;->c:Landroid/graphics/ColorMatrix;

    if-eqz v22, :cond_1

    invoke-virtual {v7, v4, v4, v4, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move/from16 v2, v20

    :cond_1
    iget v4, v0, Lr/c;->g:F

    cmpl-float v22, v4, v3

    if-eqz v22, :cond_6

    cmpg-float v2, v4, v5

    if-gtz v2, :cond_2

    const v4, 0x3c23d70a    # 0.01f

    :cond_2
    const v2, 0x459c4000    # 5000.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42840000    # 66.0f

    cmpl-float v22, v2, v4

    const v24, 0x43211e9c

    const v25, 0x42c6f10d

    const/high16 v3, 0x437f0000    # 255.0f

    if-lez v22, :cond_3

    const/high16 v22, 0x42700000    # 60.0f

    sub-float v8, v2, v22

    float-to-double v9, v8

    const-wide v11, -0x403ef32580000000L    # -0.13320475816726685

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    const v12, 0x43a4d970

    mul-float/2addr v11, v12

    const-wide v13, 0x3fb354f0e0000000L

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x43900fa3

    mul-float/2addr v9, v10

    goto :goto_1

    :cond_3
    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v25

    sub-float v9, v9, v24

    move v11, v3

    :goto_1
    cmpg-float v4, v2, v4

    const v10, 0x439885bc

    const v13, 0x430a848a

    if-gez v4, :cond_5

    const/high16 v4, 0x41980000    # 19.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v2, v4

    move v14, v9

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v2, v13

    sub-float/2addr v2, v10

    goto :goto_2

    :cond_4
    move v14, v9

    move v2, v5

    goto :goto_2

    :cond_5
    move v14, v9

    move v2, v3

    :goto_2
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move v9, v14

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v11, 0x42480000    # 50.0f

    float-to-double v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v25

    sub-float v3, v3, v24

    const/high16 v4, 0x42200000    # 40.0f

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    double-to-float v4, v14

    mul-float/2addr v4, v13

    sub-float/2addr v4, v10

    const/high16 v10, 0x437f0000    # 255.0f

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v8, v13

    div-float/2addr v9, v3

    div-float/2addr v2, v4

    aput v8, v6, v21

    aput v5, v6, v20

    aput v5, v6, v19

    aput v5, v6, v18

    aput v5, v6, v17

    aput v5, v6, v16

    const/4 v3, 0x6

    aput v9, v6, v3

    const/4 v3, 0x7

    aput v5, v6, v3

    const/16 v3, 0x8

    aput v5, v6, v3

    const/16 v3, 0x9

    aput v5, v6, v3

    const/16 v3, 0xa

    aput v5, v6, v3

    const/16 v3, 0xb

    aput v5, v6, v3

    const/16 v3, 0xc

    aput v2, v6, v3

    const/16 v2, 0xd

    aput v5, v6, v2

    const/16 v2, 0xe

    aput v5, v6, v2

    const/16 v2, 0xf

    aput v5, v6, v2

    const/16 v2, 0x10

    aput v5, v6, v2

    const/16 v2, 0x11

    aput v5, v6, v2

    const/16 v2, 0x12

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v6, v2

    const/16 v2, 0x13

    aput v5, v6, v2

    invoke-virtual {v7, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move/from16 v2, v20

    :cond_6
    iget v4, v0, Lr/c;->d:F

    cmpl-float v9, v4, v3

    if-eqz v9, :cond_7

    aput v4, v6, v21

    aput v5, v6, v20

    aput v5, v6, v19

    aput v5, v6, v18

    aput v5, v6, v17

    aput v5, v6, v16

    const/4 v2, 0x6

    aput v4, v6, v2

    const/4 v2, 0x7

    aput v5, v6, v2

    const/16 v2, 0x8

    aput v5, v6, v2

    const/16 v2, 0x9

    aput v5, v6, v2

    const/16 v2, 0xa

    aput v5, v6, v2

    const/16 v2, 0xb

    aput v5, v6, v2

    const/16 v2, 0xc

    aput v4, v6, v2

    const/16 v2, 0xd

    aput v5, v6, v2

    const/16 v2, 0xe

    aput v5, v6, v2

    const/16 v2, 0xf

    aput v5, v6, v2

    const/16 v2, 0x10

    aput v5, v6, v2

    const/16 v2, 0x11

    aput v5, v6, v2

    const/16 v2, 0x12

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v6, v2

    const/16 v2, 0x13

    aput v5, v6, v2

    invoke-virtual {v7, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_3

    :cond_7
    move/from16 v20, v2

    :goto_3
    if-eqz v20, :cond_8

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4

    :cond_8
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_4
    return-void
.end method
