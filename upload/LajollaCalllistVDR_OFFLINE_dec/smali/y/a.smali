.class public abstract Ly/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ly/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-static {p0, p1, v0, p2}, Ly/a;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "selector"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x14

    new-array v6, v5, [[I

    new-array v5, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_22

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v3, :cond_0

    const/4 v11, 0x3

    if-eq v9, v11, :cond_22

    :cond_0
    const/4 v11, 0x2

    if-ne v9, v11, :cond_21

    if-gt v10, v3, :cond_21

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_17

    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    if-nez v2, :cond_2

    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    :goto_1
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const v13, -0xff01

    if-eq v10, v12, :cond_5

    sget-object v12, Ly/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/TypedValue;

    if-nez v14, :cond_3

    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0, v10, v14, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v12, v14, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1c

    if-lt v12, v14, :cond_4

    const/16 v14, 0x1f

    if-gt v12, v14, :cond_4

    move v12, v4

    goto :goto_2

    :cond_4
    move v12, v7

    :goto_2
    if-nez v12, :cond_5

    :try_start_0
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v0, v10, v2}, Ly/a;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v9, v10, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    goto :goto_3

    :cond_5
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v9, v10, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    :goto_3
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_6

    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_4

    :cond_6
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_7

    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v9, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_4

    :cond_7
    move v12, v13

    :goto_4
    invoke-static {}, Ld0/a;->a()Z

    move-result v14

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v14, :cond_8

    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_8

    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto :goto_5

    :cond_8
    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    new-array v15, v9, [I

    move v4, v7

    move v11, v4

    :goto_6
    if-ge v11, v9, :cond_b

    invoke-interface {v1, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v13

    const v7, 0x10101a5

    if-eq v13, v7, :cond_a

    const v7, 0x101031f

    if-eq v13, v7, :cond_a

    sget v7, Landroidx/core/R$attr;->alpha:I

    if-eq v13, v7, :cond_a

    sget v7, Landroidx/core/R$attr;->lStar:I

    if-eq v13, v7, :cond_a

    add-int/lit8 v7, v4, 0x1

    const/4 v0, 0x0

    invoke-interface {v1, v11, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    if-eqz v19, :cond_9

    goto :goto_7

    :cond_9
    neg-int v13, v13

    :goto_7
    aput v13, v15, v4

    move v4, v7

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    invoke-static {v15, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const/4 v4, 0x0

    cmpl-float v7, v14, v4

    const/high16 v9, 0x42c80000    # 100.0f

    if-ltz v7, :cond_c

    cmpg-float v7, v14, v9

    if-gtz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v13, v12, v11

    if-nez v13, :cond_d

    if-nez v7, :cond_d

    move-object v7, v0

    move/from16 v28, v3

    const/16 v17, 0x1

    goto/16 :goto_14

    :cond_d
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v11, v13, v12}, Ly1/l;->D(III)I

    move-result v11

    if-eqz v7, :cond_1c

    invoke-static {v10}, Lm/o;->b(I)Lm/o;

    move-result-object v7

    sget-object v10, Ly/n;->k:Ly/n;

    iget v12, v7, Lm/o;->b:F

    move-object v15, v10

    float-to-double v9, v12

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v9, v19

    if-ltz v9, :cond_1b

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-double v9, v9

    const-wide/16 v19, 0x0

    cmpg-double v9, v9, v19

    if-lez v9, :cond_1b

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-double v9, v9

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    cmpl-double v9, v9, v19

    if-ltz v9, :cond_e

    goto/16 :goto_12

    :cond_e
    iget v7, v7, Lm/o;->a:F

    cmpg-float v9, v7, v4

    if-gez v9, :cond_f

    move v7, v4

    goto :goto_9

    :cond_f
    const/high16 v9, 0x43b40000    # 360.0f

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_9
    move/from16 v20, v4

    move v10, v12

    const/4 v9, 0x0

    const/16 v19, 0x1

    :goto_a
    sub-float v21, v20, v12

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const v22, 0x3ecccccd    # 0.4f

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_19

    const/high16 v21, 0x447a0000    # 1000.0f

    move/from16 v23, v4

    move/from16 v22, v21

    const/high16 v24, 0x42c80000    # 100.0f

    const/16 v25, 0x0

    :goto_b
    sub-float v26, v23, v24

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x3c23d70a    # 0.01f

    cmpl-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    if-lez v26, :cond_15

    sub-float v26, v24, v23

    div-float v26, v26, v27

    add-float v13, v26, v23

    invoke-static {v13, v10, v7}, Lm/o;->c(FFF)Lm/o;

    move-result-object v4

    sget-object v1, Ly/n;->k:Ly/n;

    invoke-virtual {v4, v1}, Lm/o;->d(Ly/n;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ly1/l;->M0(I)F

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ly1/l;->M0(I)F

    move-result v28

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ly1/l;->M0(I)F

    move-result v29

    sget-object v30, Ly1/l;->t:[[F

    const/16 v17, 0x1

    aget-object v30, v30, v17

    const/16 v18, 0x0

    aget v31, v30, v18

    mul-float v4, v4, v31

    aget v31, v30, v17

    mul-float v28, v28, v31

    add-float v28, v28, v4

    const/4 v4, 0x2

    aget v16, v30, v4

    mul-float v29, v29, v16

    add-float v29, v29, v28

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v4, v29, v16

    const v28, 0x3c111aa7

    cmpg-float v28, v4, v28

    if-gtz v28, :cond_10

    const v28, 0x4461d2f7

    mul-float v4, v4, v28

    move/from16 v28, v3

    goto :goto_c

    :cond_10
    move/from16 v28, v3

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42e80000    # 116.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    sub-float v4, v2, v3

    :goto_c
    sub-float v2, v14, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_11

    invoke-static {v1}, Lm/o;->b(I)Lm/o;

    move-result-object v1

    iget v3, v1, Lm/o;->c:F

    move/from16 v29, v2

    iget v2, v1, Lm/o;->b:F

    invoke-static {v3, v2, v7}, Lm/o;->c(FFF)Lm/o;

    move-result-object v2

    iget v3, v2, Lm/o;->d:F

    move/from16 v30, v7

    iget v7, v1, Lm/o;->d:F

    sub-float/2addr v7, v3

    iget v3, v1, Lm/o;->e:F

    move/from16 v31, v10

    iget v10, v2, Lm/o;->e:F

    sub-float/2addr v3, v10

    iget v10, v1, Lm/o;->f:F

    iget v2, v2, Lm/o;->f:F

    sub-float/2addr v10, v2

    mul-float/2addr v7, v7

    mul-float/2addr v3, v3

    add-float/2addr v3, v7

    mul-float/2addr v10, v10

    add-float/2addr v10, v3

    float-to-double v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object v7, v0

    move-object v10, v1

    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_12

    move/from16 v22, v0

    move-object/from16 v25, v10

    move/from16 v21, v29

    goto :goto_d

    :cond_11
    move/from16 v30, v7

    move/from16 v31, v10

    const/high16 v1, 0x3f800000    # 1.0f

    move-object v7, v0

    :cond_12
    :goto_d
    const/4 v0, 0x0

    cmpl-float v2, v21, v0

    if-nez v2, :cond_13

    cmpl-float v2, v22, v0

    if-nez v2, :cond_13

    goto :goto_f

    :cond_13
    cmpg-float v2, v4, v14

    if-gez v2, :cond_14

    move/from16 v23, v13

    goto :goto_e

    :cond_14
    move/from16 v24, v13

    :goto_e
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v4, v0

    move-object v0, v7

    move/from16 v3, v28

    move/from16 v7, v30

    move/from16 v10, v31

    goto/16 :goto_b

    :cond_15
    move/from16 v28, v3

    move/from16 v30, v7

    move/from16 v31, v10

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v16, 0x42c80000    # 100.0f

    const/16 v17, 0x1

    move-object v7, v0

    move v0, v4

    :goto_f
    move-object/from16 v2, v25

    if-eqz v19, :cond_17

    if-eqz v2, :cond_16

    move-object v3, v15

    invoke-virtual {v2, v3}, Lm/o;->d(Ly/n;)I

    move-result v10

    goto :goto_13

    :cond_16
    move-object v3, v15

    sub-float v2, v12, v20

    div-float v2, v2, v27

    add-float v2, v2, v20

    move v10, v2

    const/16 v19, 0x0

    goto :goto_11

    :cond_17
    move-object v3, v15

    if-nez v2, :cond_18

    move/from16 v10, v20

    move/from16 v12, v31

    goto :goto_10

    :cond_18
    move-object v9, v2

    move/from16 v10, v31

    :goto_10
    sub-float v2, v12, v10

    div-float v2, v2, v27

    add-float/2addr v2, v10

    move/from16 v20, v10

    move v10, v2

    :goto_11
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v4, v0

    move-object v15, v3

    move-object v0, v7

    move/from16 v3, v28

    move/from16 v7, v30

    goto/16 :goto_a

    :cond_19
    move-object v7, v0

    move/from16 v28, v3

    move-object v3, v15

    const/16 v17, 0x1

    if-nez v9, :cond_1a

    invoke-static {v14}, Ly1/l;->G0(F)I

    move-result v10

    goto :goto_13

    :cond_1a
    invoke-virtual {v9, v3}, Lm/o;->d(Ly/n;)I

    move-result v10

    goto :goto_13

    :cond_1b
    :goto_12
    move-object v7, v0

    move/from16 v28, v3

    const/16 v17, 0x1

    invoke-static {v14}, Ly1/l;->G0(F)I

    move-result v10

    goto :goto_13

    :cond_1c
    move-object v7, v0

    move/from16 v28, v3

    const/16 v17, 0x1

    :goto_13
    const v0, 0xffffff

    and-int/2addr v0, v10

    shl-int/lit8 v1, v11, 0x18

    or-int v10, v0, v1

    :goto_14
    add-int/lit8 v0, v8, 0x1

    array-length v1, v5

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-le v0, v1, :cond_1e

    if-gt v8, v3, :cond_1d

    move v1, v2

    goto :goto_15

    :cond_1d
    mul-int/lit8 v1, v8, 0x2

    :goto_15
    new-array v1, v1, [I

    const/4 v4, 0x0

    invoke-static {v5, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v1

    :cond_1e
    aput v10, v5, v8

    array-length v1, v6

    if-le v0, v1, :cond_20

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-gt v8, v3, :cond_1f

    goto :goto_16

    :cond_1f
    mul-int/lit8 v2, v8, 0x2

    :goto_16
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    :cond_20
    aput-object v7, v6, v8

    check-cast v6, [[I

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v8, v0

    move/from16 v4, v17

    move/from16 v3, v28

    const/4 v7, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_21
    :goto_17
    move/from16 v28, v3

    move/from16 v17, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, v17

    move/from16 v3, v28

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_22
    new-array v0, v8, [I

    new-array v1, v8, [[I

    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid color state list tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
