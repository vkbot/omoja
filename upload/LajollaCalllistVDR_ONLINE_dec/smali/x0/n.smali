.class public final Lx0/n;
.super Lx0/e;
.source "SourceFile"


# static fields
.field public static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public c:Lx0/l;

.field public d:Landroid/graphics/PorterDuffColorFilter;

.field public e:Landroid/graphics/ColorFilter;

.field public f:Z

.field public g:Z

.field public final h:[F

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lx0/n;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx0/e;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lx0/n;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lx0/n;->h:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lx0/n;->i:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lx0/n;->j:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lx0/l;

    invoke-direct {v0}, Lx0/l;-><init>()V

    iput-object v0, p0, Lx0/n;->c:Lx0/l;

    return-void
.end method

.method public constructor <init>(Lx0/l;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lx0/e;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lx0/n;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lx0/n;->h:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lx0/n;->i:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lx0/n;->j:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Lx0/n;->c:Lx0/l;

    .line 13
    iget-object v0, p1, Lx0/l;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Lx0/n;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lx0/n;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lx0/e;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v2, v0, Lx0/n;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v3, v0, Lx0/n;->e:Landroid/graphics/ColorFilter;

    if-nez v3, :cond_2

    iget-object v3, v0, Lx0/n;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v4, v0, Lx0/n;->i:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Lx0/n;->h:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x0

    aget v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x4

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x1

    aget v9, v5, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/4 v10, 0x3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v9, :cond_3

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_4

    :cond_3
    move v6, v11

    move v7, v6

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0x800

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v5, :cond_11

    if-gtz v6, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Lx0/n;->isAutoMirrored()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v9

    if-ne v9, v8, :cond_6

    move v9, v8

    goto :goto_0

    :cond_6
    move v9, v4

    :goto_0
    if-eqz v9, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_7
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v9, v0, Lx0/n;->c:Lx0/l;

    iget-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v5, v10, :cond_8

    iget-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ne v6, v10, :cond_8

    move v10, v8

    goto :goto_1

    :cond_8
    move v10, v4

    :goto_1
    if-nez v10, :cond_a

    :cond_9
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    iput-boolean v8, v9, Lx0/l;->k:Z

    :cond_a
    iget-boolean v9, v0, Lx0/n;->g:Z

    if-nez v9, :cond_b

    iget-object v9, v0, Lx0/n;->c:Lx0/l;

    iget-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v9, Lx0/l;->b:Lx0/k;

    iget-object v13, v12, Lx0/k;->g:Lx0/h;

    sget-object v14, Lx0/k;->p:Landroid/graphics/Matrix;

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lx0/k;->a(Lx0/h;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto :goto_3

    :cond_b
    iget-object v9, v0, Lx0/n;->c:Lx0/l;

    iget-boolean v10, v9, Lx0/l;->k:Z

    if-nez v10, :cond_c

    iget-object v10, v9, Lx0/l;->g:Landroid/content/res/ColorStateList;

    iget-object v11, v9, Lx0/l;->c:Landroid/content/res/ColorStateList;

    if-ne v10, v11, :cond_c

    iget-object v10, v9, Lx0/l;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v11, v9, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v10, v11, :cond_c

    iget-boolean v10, v9, Lx0/l;->j:Z

    iget-boolean v11, v9, Lx0/l;->e:Z

    if-ne v10, v11, :cond_c

    iget v10, v9, Lx0/l;->i:I

    iget-object v9, v9, Lx0/l;->b:Lx0/k;

    invoke-virtual {v9}, Lx0/k;->getRootAlpha()I

    move-result v9

    if-ne v10, v9, :cond_c

    move v9, v8

    goto :goto_2

    :cond_c
    move v9, v4

    :goto_2
    if-nez v9, :cond_d

    iget-object v9, v0, Lx0/n;->c:Lx0/l;

    iget-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v10, v9, Lx0/l;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v9, Lx0/l;->b:Lx0/k;

    iget-object v13, v12, Lx0/k;->g:Lx0/h;

    sget-object v14, Lx0/k;->p:Landroid/graphics/Matrix;

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lx0/k;->a(Lx0/h;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    iget-object v5, v0, Lx0/n;->c:Lx0/l;

    iget-object v6, v5, Lx0/l;->c:Landroid/content/res/ColorStateList;

    iput-object v6, v5, Lx0/l;->g:Landroid/content/res/ColorStateList;

    iget-object v6, v5, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v6, v5, Lx0/l;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, v5, Lx0/l;->b:Lx0/k;

    invoke-virtual {v6}, Lx0/k;->getRootAlpha()I

    move-result v6

    iput v6, v5, Lx0/l;->i:I

    iget-boolean v6, v5, Lx0/l;->e:Z

    iput-boolean v6, v5, Lx0/l;->j:Z

    iput-boolean v4, v5, Lx0/l;->k:Z

    :cond_d
    :goto_3
    iget-object v5, v0, Lx0/n;->c:Lx0/l;

    iget-object v6, v5, Lx0/l;->b:Lx0/k;

    invoke-virtual {v6}, Lx0/k;->getRootAlpha()I

    move-result v6

    const/16 v9, 0xff

    if-ge v6, v9, :cond_e

    move v4, v8

    :cond_e
    const/4 v6, 0x0

    if-nez v4, :cond_f

    if-nez v3, :cond_f

    move-object v3, v6

    goto :goto_4

    :cond_f
    iget-object v4, v5, Lx0/l;->l:Landroid/graphics/Paint;

    if-nez v4, :cond_10

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v5, Lx0/l;->l:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_10
    iget-object v4, v5, Lx0/l;->l:Landroid/graphics/Paint;

    iget-object v8, v5, Lx0/l;->b:Lx0/k;

    invoke-virtual {v8}, Lx0/k;->getRootAlpha()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v5, Lx0/l;->l:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, v5, Lx0/l;->l:Landroid/graphics/Paint;

    :goto_4
    iget-object v4, v5, Lx0/l;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v0, v0, Lx0/l;->b:Lx0/k;

    invoke-virtual {v0}, Lx0/k;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lx0/n;->c:Lx0/l;

    invoke-virtual {v1}, Lx0/l;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lx0/n;->e:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Lx0/m;

    iget-object v1, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lx0/m;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    invoke-virtual {p0}, Lx0/n;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lx0/l;->a:I

    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v0, v0, Lx0/l;->b:Lx0/k;

    iget v0, v0, Lx0/k;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v0, v0, Lx0/l;->b:Lx0/k;

    iget v0, v0, Lx0/k;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lx0/n;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 4
    iget-object v0, v1, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v6, v1, Lx0/n;->c:Lx0/l;

    .line 7
    new-instance v0, Lx0/k;

    invoke-direct {v0}, Lx0/k;-><init>()V

    .line 8
    iput-object v0, v6, Lx0/l;->b:Lx0/k;

    .line 9
    sget-object v0, Lcom/google/android/material/slider/h;->q:[I

    invoke-static {v2, v5, v4, v0}, Lx/n;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 10
    iget-object v8, v1, Lx0/n;->c:Lx0/l;

    .line 11
    iget-object v9, v8, Lx0/l;->b:Lx0/k;

    const-string v0, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    .line 12
    invoke-static {v7, v3, v0, v10, v11}, Lx/n;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 13
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v13, 0x9

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eq v0, v15, :cond_2

    if-eq v0, v14, :cond_3

    if-eq v0, v13, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 15
    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 16
    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 17
    :cond_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 19
    :cond_3
    :goto_0
    iput-object v12, v8, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v0, "tint"

    .line 20
    invoke-static {v3, v0}, Lx/n;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x2

    if-eqz v0, :cond_6

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 22
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 23
    iget v11, v0, Landroid/util/TypedValue;->type:I

    if-eq v11, v13, :cond_5

    const/16 v13, 0x1c

    if-lt v11, v13, :cond_4

    const/16 v13, 0x1f

    if-gt v11, v13, :cond_4

    .line 24
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    invoke-virtual {v7, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 27
    sget-object v13, Lx/a;->a:Ljava/lang/ThreadLocal;

    .line 28
    :try_start_0
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 29
    invoke-static {v0, v11, v5}, Lx/a;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v11, "CSLCompat"

    const-string v13, "Failed to inflate ColorStateList."

    .line 30
    invoke-static {v11, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 31
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to resolve attribute at index 1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 32
    iput-object v0, v8, Lx0/l;->c:Landroid/content/res/ColorStateList;

    .line 33
    :cond_7
    iget-boolean v0, v8, Lx0/l;->e:Z

    const-string v11, "autoMirrored"

    .line 34
    invoke-static {v3, v11}, Lx/n;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_3

    .line 35
    :cond_8
    invoke-virtual {v7, v14, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 36
    :goto_3
    iput-boolean v0, v8, Lx0/l;->e:Z

    .line 37
    iget v0, v9, Lx0/k;->j:F

    const-string v8, "viewportWidth"

    const/4 v11, 0x7

    invoke-static {v7, v3, v8, v11, v0}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v9, Lx0/k;->j:F

    .line 38
    iget v0, v9, Lx0/k;->k:F

    const-string v8, "viewportHeight"

    const/16 v13, 0x8

    invoke-static {v7, v3, v8, v13, v0}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v9, Lx0/k;->k:F

    .line 39
    iget v8, v9, Lx0/k;->j:F

    const/16 v18, 0x0

    cmpg-float v8, v8, v18

    if-lez v8, :cond_25

    cmpg-float v0, v0, v18

    if-lez v0, :cond_24

    .line 40
    iget v0, v9, Lx0/k;->h:F

    invoke-virtual {v7, v15, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Lx0/k;->h:F

    .line 41
    iget v0, v9, Lx0/k;->i:F

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Lx0/k;->i:F

    .line 42
    iget v8, v9, Lx0/k;->h:F

    cmpg-float v8, v8, v18

    if-lez v8, :cond_23

    cmpg-float v0, v0, v18

    if-lez v0, :cond_22

    .line 43
    invoke-virtual {v9}, Lx0/k;->getAlpha()F

    move-result v0

    const-string v8, "alpha"

    const/4 v14, 0x4

    .line 44
    invoke-static {v7, v3, v8, v14, v0}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 45
    invoke-virtual {v9, v0}, Lx0/k;->setAlpha(F)V

    .line 46
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 47
    iput-object v0, v9, Lx0/k;->m:Ljava/lang/String;

    .line 48
    iget-object v8, v9, Lx0/k;->o:Lj/b;

    invoke-virtual {v8, v0, v9}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_9
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lx0/n;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, Lx0/l;->a:I

    .line 51
    iput-boolean v10, v6, Lx0/l;->k:Z

    .line 52
    iget-object v0, v1, Lx0/n;->c:Lx0/l;

    .line 53
    iget-object v7, v0, Lx0/l;->b:Lx0/k;

    .line 54
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    iget-object v9, v7, Lx0/k;->g:Lx0/h;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 56
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 57
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    add-int/lit8 v11, v19, 0x1

    move/from16 v19, v10

    :goto_4
    if-eq v9, v10, :cond_20

    .line 58
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v11, :cond_a

    if-eq v9, v15, :cond_20

    :cond_a
    const-string v14, "group"

    const/4 v15, 0x2

    if-ne v9, v15, :cond_1e

    .line 59
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lx0/h;

    const-string v13, "path"

    .line 61
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v10, "fillType"

    const-string v12, "pathData"

    move/from16 v20, v11

    iget-object v11, v7, Lx0/k;->o:Lj/b;

    if-eqz v13, :cond_15

    .line 62
    new-instance v9, Lx0/g;

    invoke-direct {v9}, Lx0/g;-><init>()V

    .line 63
    sget-object v13, Lcom/google/android/material/slider/h;->s:[I

    invoke-static {v2, v5, v4, v13}, Lx/n;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 64
    invoke-static {v3, v12}, Lx/n;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v21, v7

    goto/16 :goto_7

    :cond_b
    const/4 v12, 0x0

    .line 65
    invoke-virtual {v13, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 66
    iput-object v14, v9, Lx0/j;->b:Ljava/lang/String;

    :cond_c
    const/4 v12, 0x2

    .line 67
    invoke-virtual {v13, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 68
    invoke-static {v14}, Lcom/google/android/material/slider/h;->S(Ljava/lang/String;)[Ly/d;

    move-result-object v12

    iput-object v12, v9, Lx0/j;->a:[Ly/d;

    :cond_d
    const-string v12, "fillColor"

    const/4 v14, 0x1

    .line 69
    invoke-static {v13, v3, v5, v12, v14}, Lx/n;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lx/b;

    move-result-object v12

    iput-object v12, v9, Lx0/g;->g:Lx/b;

    .line 70
    iget v12, v9, Lx0/g;->i:F

    const-string v14, "fillAlpha"

    move-object/from16 v21, v7

    const/16 v7, 0xc

    invoke-static {v13, v3, v14, v7, v12}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->i:F

    const-string v7, "strokeLineCap"

    const/16 v12, 0x8

    const/4 v14, -0x1

    .line 71
    invoke-static {v13, v3, v7, v12, v14}, Lx/n;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    .line 72
    iget-object v14, v9, Lx0/g;->m:Landroid/graphics/Paint$Cap;

    if-eqz v7, :cond_10

    const/4 v12, 0x1

    if-eq v7, v12, :cond_f

    const/4 v12, 0x2

    if-eq v7, v12, :cond_e

    goto :goto_5

    .line 73
    :cond_e
    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_5

    .line 74
    :cond_f
    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_5

    .line 75
    :cond_10
    sget-object v14, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 76
    :goto_5
    iput-object v14, v9, Lx0/g;->m:Landroid/graphics/Paint$Cap;

    const-string v7, "strokeLineJoin"

    const/16 v12, 0x9

    const/4 v14, -0x1

    .line 77
    invoke-static {v13, v3, v7, v12, v14}, Lx/n;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    .line 78
    iget-object v12, v9, Lx0/g;->n:Landroid/graphics/Paint$Join;

    if-eqz v7, :cond_13

    const/4 v14, 0x1

    if-eq v7, v14, :cond_12

    const/4 v14, 0x2

    if-eq v7, v14, :cond_11

    goto :goto_6

    .line 79
    :cond_11
    sget-object v12, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_6

    .line 80
    :cond_12
    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_6

    .line 81
    :cond_13
    sget-object v12, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 82
    :goto_6
    iput-object v12, v9, Lx0/g;->n:Landroid/graphics/Paint$Join;

    .line 83
    iget v7, v9, Lx0/g;->o:F

    const-string v12, "strokeMiterLimit"

    const/16 v14, 0xa

    invoke-static {v13, v3, v12, v14, v7}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->o:F

    const-string v7, "strokeColor"

    const/4 v12, 0x3

    .line 84
    invoke-static {v13, v3, v5, v7, v12}, Lx/n;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lx/b;

    move-result-object v7

    iput-object v7, v9, Lx0/g;->e:Lx/b;

    .line 85
    iget v7, v9, Lx0/g;->h:F

    const-string v12, "strokeAlpha"

    const/16 v14, 0xb

    invoke-static {v13, v3, v12, v14, v7}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->h:F

    .line 86
    iget v7, v9, Lx0/g;->f:F

    const-string v12, "strokeWidth"

    const/4 v14, 0x4

    invoke-static {v13, v3, v12, v14, v7}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->f:F

    .line 87
    iget v7, v9, Lx0/g;->k:F

    const-string v12, "trimPathEnd"

    const/4 v14, 0x6

    invoke-static {v13, v3, v12, v14, v7}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->k:F

    .line 88
    iget v7, v9, Lx0/g;->l:F

    const-string v12, "trimPathOffset"

    const/4 v14, 0x7

    invoke-static {v13, v3, v12, v14, v7}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->l:F

    .line 89
    iget v7, v9, Lx0/g;->j:F

    const-string v12, "trimPathStart"

    const/4 v14, 0x5

    invoke-static {v13, v3, v12, v14, v7}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v9, Lx0/g;->j:F

    .line 90
    iget v7, v9, Lx0/j;->c:I

    const/16 v12, 0xd

    invoke-static {v13, v3, v10, v12, v7}, Lx/n;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    iput v7, v9, Lx0/j;->c:I

    .line 91
    :goto_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-object v7, v15, Lx0/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v9}, Lx0/j;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 94
    invoke-virtual {v9}, Lx0/j;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7, v9}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_14
    iget v7, v0, Lx0/l;->a:I

    iget v9, v9, Lx0/j;->d:I

    or-int/2addr v7, v9

    iput v7, v0, Lx0/l;->a:I

    const/4 v10, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/16 v16, -0x1

    const/16 v19, 0x0

    goto/16 :goto_a

    :cond_15
    move-object/from16 v21, v7

    const/16 v13, 0x9

    const/16 v16, -0x1

    const-string v7, "clip-path"

    .line 96
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 97
    new-instance v7, Lx0/f;

    invoke-direct {v7}, Lx0/f;-><init>()V

    .line 98
    invoke-static {v3, v12}, Lx/n;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_8

    .line 99
    :cond_16
    sget-object v9, Lcom/google/android/material/slider/h;->t:[I

    invoke-static {v2, v5, v4, v9}, Lx/n;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v12, 0x0

    .line 100
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_17

    .line 101
    iput-object v14, v7, Lx0/j;->b:Ljava/lang/String;

    :cond_17
    const/4 v14, 0x1

    .line 102
    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_18

    .line 103
    invoke-static/range {v17 .. v17}, Lcom/google/android/material/slider/h;->S(Ljava/lang/String;)[Ly/d;

    move-result-object v14

    iput-object v14, v7, Lx0/j;->a:[Ly/d;

    :cond_18
    const/4 v14, 0x2

    .line 104
    invoke-static {v9, v3, v10, v14, v12}, Lx/n;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    iput v10, v7, Lx0/j;->c:I

    .line 105
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    :goto_8
    iget-object v9, v15, Lx0/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v7}, Lx0/j;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 108
    invoke-virtual {v7}, Lx0/j;->getPathName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9, v7}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_19
    iget v9, v0, Lx0/l;->a:I

    iget v7, v7, Lx0/j;->d:I

    or-int/2addr v7, v9

    iput v7, v0, Lx0/l;->a:I

    goto/16 :goto_9

    .line 110
    :cond_1a
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 111
    new-instance v7, Lx0/h;

    invoke-direct {v7}, Lx0/h;-><init>()V

    .line 112
    sget-object v9, Lcom/google/android/material/slider/h;->r:[I

    invoke-static {v2, v5, v4, v9}, Lx/n;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 113
    iget v10, v7, Lx0/h;->c:F

    const-string v12, "rotation"

    const/4 v14, 0x5

    invoke-static {v9, v3, v12, v14, v10}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v7, Lx0/h;->c:F

    .line 114
    iget v10, v7, Lx0/h;->d:F

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v7, Lx0/h;->d:F

    .line 115
    iget v10, v7, Lx0/h;->e:F

    const/4 v12, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v7, Lx0/h;->e:F

    .line 116
    iget v10, v7, Lx0/h;->f:F

    const-string v12, "scaleX"

    const/4 v13, 0x3

    invoke-static {v9, v3, v12, v13, v10}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v7, Lx0/h;->f:F

    .line 117
    iget v10, v7, Lx0/h;->g:F

    const-string v12, "scaleY"

    const/4 v13, 0x4

    invoke-static {v9, v3, v12, v13, v10}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v7, Lx0/h;->g:F

    .line 118
    iget v10, v7, Lx0/h;->h:F

    const-string v12, "translateX"

    const/4 v13, 0x6

    invoke-static {v9, v3, v12, v13, v10}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v7, Lx0/h;->h:F

    .line 119
    iget v10, v7, Lx0/h;->i:F

    const-string v12, "translateY"

    const/4 v13, 0x7

    invoke-static {v9, v3, v12, v13, v10}, Lx/n;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v7, Lx0/h;->i:F

    const/4 v10, 0x0

    .line 120
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1b

    .line 121
    iput-object v12, v7, Lx0/h;->l:Ljava/lang/String;

    .line 122
    :cond_1b
    invoke-virtual {v7}, Lx0/h;->c()V

    .line 123
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    iget-object v9, v15, Lx0/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v8, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v7}, Lx0/h;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 127
    invoke-virtual {v7}, Lx0/h;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9, v7}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1c
    iget v9, v0, Lx0/l;->a:I

    iget v7, v7, Lx0/h;->k:I

    or-int/2addr v7, v9

    iput v7, v0, Lx0/l;->a:I

    goto :goto_a

    :cond_1d
    :goto_9
    const/4 v10, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x5

    :goto_a
    move v7, v14

    const/4 v11, 0x3

    goto :goto_b

    :cond_1e
    move-object/from16 v21, v7

    move/from16 v20, v11

    move v10, v12

    const/4 v7, 0x5

    const/4 v11, 0x3

    const/4 v13, 0x7

    const/16 v16, -0x1

    if-ne v9, v11, :cond_1f

    .line 129
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 130
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 131
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 132
    :cond_1f
    :goto_b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v12, v10

    move v15, v11

    move/from16 v11, v20

    move-object/from16 v7, v21

    const/4 v10, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x4

    goto/16 :goto_4

    :cond_20
    if-nez v19, :cond_21

    .line 133
    iget-object v0, v6, Lx0/l;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Lx0/n;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, Lx0/n;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 134
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_25
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-boolean v0, v0, Lx0/l;->e:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 2

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lx0/l;->b:Lx0/k;

    iget-object v1, v0, Lx0/k;->n:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    iget-object v1, v0, Lx0/k;->g:Lx0/h;

    invoke-virtual {v1}, Lx0/h;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lx0/k;->n:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, v0, Lx0/k;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v0, v0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lx0/n;->f:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Lx0/l;

    iget-object v1, p0, Lx0/n;->c:Lx0/l;

    invoke-direct {v0, v1}, Lx0/l;-><init>(Lx0/l;)V

    iput-object v0, p0, Lx0/n;->c:Lx0/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx0/n;->f:Z

    :cond_1
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v1, v0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, v0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v3}, Lx0/n;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lx0/n;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lx0/n;->invalidateSelf()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lx0/l;->b:Lx0/k;

    iget-object v4, v3, Lx0/k;->n:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    iget-object v4, v3, Lx0/k;->g:Lx0/h;

    invoke-virtual {v4}, Lx0/h;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lx0/k;->n:Ljava/lang/Boolean;

    :cond_2
    iget-object v3, v3, Lx0/k;->n:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lx0/l;->b:Lx0/k;

    iget-object v3, v3, Lx0/k;->g:Lx0/h;

    invoke-virtual {v3, p1}, Lx0/h;->b([I)Z

    move-result p1

    iget-boolean v3, v0, Lx0/l;->k:Z

    or-int/2addr v3, p1

    iput-boolean v3, v0, Lx0/l;->k:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lx0/n;->invalidateSelf()V

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v0, v0, Lx0/l;->b:Lx0/k;

    invoke-virtual {v0}, Lx0/k;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v0, v0, Lx0/l;->b:Lx0/k;

    invoke-virtual {v0, p1}, Lx0/k;->setRootAlpha(I)V

    invoke-virtual {p0}, Lx0/n;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iput-boolean p1, v0, Lx0/l;->e:Z

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Lx0/n;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lx0/n;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/android/material/slider/h;->o1(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx0/n;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v1, v0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lx0/n;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lx0/n;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lx0/n;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/n;->c:Lx0/l;

    iget-object v1, v0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lx0/l;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Lx0/l;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lx0/n;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lx0/n;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lx0/n;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lx0/e;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
