.class public final Landroidx/appcompat/widget/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/v2;

.field public c:Landroidx/appcompat/widget/v2;

.field public d:Landroidx/appcompat/widget/v2;

.field public e:Landroidx/appcompat/widget/v2;

.field public f:Landroidx/appcompat/widget/v2;

.field public g:Landroidx/appcompat/widget/v2;

.field public h:Landroidx/appcompat/widget/v2;

.field public final i:Landroidx/appcompat/widget/y0;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/t0;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/t0;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/y0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/u1;

    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/u1;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/appcompat/widget/v2;

    invoke-direct {p1}, Landroidx/appcompat/widget/v2;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/widget/v2;->d:Z

    iput-object p0, p1, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static f(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-lt v0, v1, :cond_0

    invoke-static {p2, p0}, Li0/a;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v0, v1, :cond_1

    invoke-static {p2, p0}, Li0/a;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_1
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v0, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le p1, v0, :cond_2

    add-int/lit8 v1, v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-le p1, v0, :cond_3

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    if-ltz v1, :cond_d

    if-le p1, v0, :cond_4

    goto/16 :goto_6

    :cond_4
    iget v4, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    const/4 v6, 0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v6

    :goto_3
    if-eqz v4, :cond_7

    invoke-static {p2, v3, v2, v2}, Lcom/google/android/material/slider/h;->n1(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_7

    :cond_7
    const/16 v3, 0x800

    if-gt v0, v3, :cond_8

    invoke-static {p2, p0, v1, p1}, Lcom/google/android/material/slider/h;->n1(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_7

    :cond_8
    sub-int v0, p1, v1

    const/16 v3, 0x400

    if-le v0, v3, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v0

    :goto_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p1

    rsub-int v5, v3, 0x800

    const-wide v7, 0x3fe999999999999aL    # 0.8

    int-to-double v9, v5

    mul-double/2addr v9, v7

    double-to-int v7, v9

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_a
    add-int v7, p1, v4

    sub-int/2addr v7, v6

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v4, v4, -0x1

    :cond_b
    add-int v7, v5, v3

    add-int/2addr v7, v4

    if-eq v3, v0, :cond_c

    add-int v0, v1, v5

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    add-int/2addr v4, p1

    invoke-interface {p0, p1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v0, p1, v2

    aput-object p0, p1, v6

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_5

    :cond_c
    add-int/2addr v7, v1

    invoke-interface {p0, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_5
    add-int/2addr v5, v2

    add-int/2addr v3, v5

    invoke-static {p2, p0, v5, v3}, Lcom/google/android/material/slider/h;->n1(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_7

    :cond_d
    :goto_6
    invoke-static {p2, v3, v2, v2}, Lcom/google/android/material/slider/h;->n1(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    :cond_e
    :goto_7
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/c0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroidx/appcompat/widget/v2;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->c:Landroidx/appcompat/widget/v2;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->d:Landroidx/appcompat/widget/v2;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->e:Landroidx/appcompat/widget/v2;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Landroidx/appcompat/widget/t0;->b:Landroidx/appcompat/widget/v2;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/t0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Landroidx/appcompat/widget/t0;->c:Landroidx/appcompat/widget/v2;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/t0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Landroidx/appcompat/widget/t0;->d:Landroidx/appcompat/widget/v2;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/t0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Landroidx/appcompat/widget/t0;->e:Landroidx/appcompat/widget/v2;

    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/t0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/t0;->f:Landroidx/appcompat/widget/v2;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->g:Landroidx/appcompat/widget/v2;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/t0;->f:Landroidx/appcompat/widget/v2;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/t0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/t0;->g:Landroidx/appcompat/widget/v2;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/t0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;)V

    :cond_3
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v9, v0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Landroidx/appcompat/widget/c0;->a()Landroidx/appcompat/widget/c0;

    move-result-object v11

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    invoke-static {v10, v7, v1, v8}, Landroidx/appcompat/widget/x2;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/x2;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    iget-object v5, v12, Landroidx/appcompat/widget/x2;->b:Landroid/content/res/TypedArray;

    move-object v1, v9

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lg0/s0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v13, -0x1

    invoke-virtual {v12, v1, v13}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v1

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v12, v2, v14}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v2

    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/t0;->b:Landroidx/appcompat/widget/v2;

    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v12, v2, v14}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v2

    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/t0;->c:Landroidx/appcompat/widget/v2;

    :cond_1
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v12, v2, v14}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v2

    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/t0;->d:Landroidx/appcompat/widget/v2;

    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v12, v2, v14}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v2

    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;

    move-result-object v2

    iput-object v2, v0, Landroidx/appcompat/widget/t0;->e:Landroidx/appcompat/widget/v2;

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v12, v3}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v12, v3, v14}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v3

    invoke-static {v10, v11, v3}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/t0;->f:Landroidx/appcompat/widget/v2;

    :cond_4
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v12, v3}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v12, v3, v14}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v3

    invoke-static {v10, v11, v3}, Landroidx/appcompat/widget/t0;->c(Landroid/content/Context;Landroidx/appcompat/widget/c0;I)Landroidx/appcompat/widget/v2;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/t0;->g:Landroidx/appcompat/widget/v2;

    :cond_5
    invoke-virtual {v12}, Landroidx/appcompat/widget/x2;->n()V

    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    if-eq v1, v13, :cond_9

    sget-object v4, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    new-instance v5, Landroidx/appcompat/widget/x2;

    invoke-virtual {v10, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v5, v10, v1}, Landroidx/appcompat/widget/x2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v3, :cond_6

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v1, v14}, Landroidx/appcompat/widget/x2;->a(IZ)Z

    move-result v1

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    move v1, v14

    move v4, v1

    :goto_0
    invoke-virtual {v0, v10, v5}, Landroidx/appcompat/widget/t0;->j(Landroid/content/Context;Landroidx/appcompat/widget/x2;)V

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/x2;->j(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v15

    if-eqz v15, :cond_8

    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/x2;->j(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v5}, Landroidx/appcompat/widget/x2;->n()V

    goto :goto_3

    :cond_9
    move v1, v14

    move v4, v1

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_3
    sget-object v5, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    new-instance v12, Landroidx/appcompat/widget/x2;

    invoke-virtual {v10, v7, v5, v8, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {v12, v10, v5}, Landroidx/appcompat/widget/x2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v3, :cond_a

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v5

    if-eqz v5, :cond_a

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v1, v14}, Landroidx/appcompat/widget/x2;->a(IZ)Z

    move-result v1

    const/4 v4, 0x1

    :cond_a
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v5

    if-eqz v5, :cond_b

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/x2;->j(I)Ljava/lang/String;

    move-result-object v6

    :cond_b
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v5

    if-eqz v5, :cond_c

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/x2;->j(I)Ljava/lang/String;

    move-result-object v15

    :cond_c
    const/16 v5, 0x1c

    if-lt v2, v5, :cond_d

    sget v2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v12, v2, v13}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v9, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v0, v10, v12}, Landroidx/appcompat/widget/t0;->j(Landroid/content/Context;Landroidx/appcompat/widget/x2;)V

    invoke-virtual {v12}, Landroidx/appcompat/widget/x2;->n()V

    if-nez v3, :cond_e

    if-eqz v4, :cond_e

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_e
    iget-object v1, v0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v2, v0, Landroidx/appcompat/widget/t0;->k:I

    if-ne v2, v13, :cond_f

    iget v2, v0, Landroidx/appcompat/widget/t0;->j:I

    invoke-virtual {v9, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_f
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v15, :cond_11

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v6, :cond_12

    invoke-static {v6}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    iget-object v12, v0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    iget-object v15, v12, Landroidx/appcompat/widget/y0;->j:Landroid/content/Context;

    invoke-virtual {v15, v7, v1, v8, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    iget-object v1, v12, Landroidx/appcompat/widget/y0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    move-object/from16 v4, p1

    move-object v5, v6

    move-object v13, v6

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lg0/s0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v12, Landroidx/appcompat/widget/y0;->a:I

    :cond_13
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_14

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v13, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_5

    :cond_14
    move v1, v2

    :goto_5
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_15

    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_6

    :cond_15
    move v3, v2

    :goto_6
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v13, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_7

    :cond_16
    move v4, v2

    :goto_7
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_19

    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v13, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-lez v5, :cond_19

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v8, v6, [I

    if-lez v6, :cond_18

    :goto_8
    if-ge v14, v6, :cond_17

    const/4 v2, -0x1

    invoke-virtual {v5, v14, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    aput v16, v8, v14

    add-int/lit8 v14, v14, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_8

    :cond_17
    invoke-static {v8}, Landroidx/appcompat/widget/y0;->b([I)[I

    move-result-object v2

    iput-object v2, v12, Landroidx/appcompat/widget/y0;->f:[I

    invoke-virtual {v12}, Landroidx/appcompat/widget/y0;->h()Z

    :cond_18
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v12}, Landroidx/appcompat/widget/y0;->i()Z

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-eqz v2, :cond_1e

    iget v2, v12, Landroidx/appcompat/widget/y0;->a:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1f

    iget-boolean v2, v12, Landroidx/appcompat/widget/y0;->g:Z

    if-nez v2, :cond_1d

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v13, v3, v8

    if-nez v13, :cond_1a

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v6, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_1a
    cmpl-float v13, v4, v8

    if-nez v13, :cond_1b

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-static {v6, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    :cond_1b
    cmpl-float v2, v1, v8

    if-nez v2, :cond_1c

    move v1, v5

    :cond_1c
    invoke-virtual {v12, v3, v4, v1}, Landroidx/appcompat/widget/y0;->j(FFF)V

    :cond_1d
    invoke-virtual {v12}, Landroidx/appcompat/widget/y0;->g()Z

    goto :goto_9

    :cond_1e
    const/4 v1, 0x0

    iput v1, v12, Landroidx/appcompat/widget/y0;->a:I

    :cond_1f
    :goto_9
    sget-boolean v1, Landroidx/core/widget/b;->a:Z

    if-eqz v1, :cond_21

    iget v1, v12, Landroidx/appcompat/widget/y0;->a:I

    if-eqz v1, :cond_21

    iget-object v1, v12, Landroidx/appcompat/widget/y0;->f:[I

    array-length v2, v1

    if-lez v2, :cond_21

    invoke-virtual {v9}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_20

    iget v1, v12, Landroidx/appcompat/widget/y0;->d:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v12, Landroidx/appcompat/widget/y0;->e:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v12, Landroidx/appcompat/widget/y0;->c:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_a

    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v9, v1, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_21
    :goto_a
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    new-instance v2, Landroidx/appcompat/widget/x2;

    invoke-virtual {v10, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v2, v10, v1}, Landroidx/appcompat/widget/x2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v1

    if-eq v1, v3, :cond_22

    invoke-virtual {v11, v10, v1}, Landroidx/appcompat/widget/c0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_b

    :cond_22
    const/4 v1, 0x0

    :goto_b
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v4

    if-eq v4, v3, :cond_23

    invoke-virtual {v11, v10, v4}, Landroidx/appcompat/widget/c0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_c

    :cond_23
    const/4 v4, 0x0

    :goto_c
    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v2, v7, v3}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v7

    if-eq v7, v3, :cond_24

    invoke-virtual {v11, v10, v7}, Landroidx/appcompat/widget/c0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_d

    :cond_24
    const/4 v7, 0x0

    :goto_d
    sget v8, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v2, v8, v3}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v8

    if-eq v8, v3, :cond_25

    invoke-virtual {v11, v10, v8}, Landroidx/appcompat/widget/c0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_e

    :cond_25
    const/4 v8, 0x0

    :goto_e
    sget v12, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v2, v12, v3}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v12

    if-eq v12, v3, :cond_26

    invoke-virtual {v11, v10, v12}, Landroidx/appcompat/widget/c0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_f

    :cond_26
    const/4 v12, 0x0

    :goto_f
    sget v13, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v2, v13, v3}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v13

    if-eq v13, v3, :cond_27

    invoke-virtual {v11, v10, v13}, Landroidx/appcompat/widget/c0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_10

    :cond_27
    const/4 v3, 0x0

    :goto_10
    const/4 v10, 0x3

    if-nez v12, :cond_32

    if-eqz v3, :cond_28

    goto :goto_18

    :cond_28
    if-nez v1, :cond_29

    if-nez v4, :cond_29

    if-nez v7, :cond_29

    if-eqz v8, :cond_37

    :cond_29
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v11, 0x0

    aget-object v12, v3, v11

    if-nez v12, :cond_2f

    aget-object v13, v3, v6

    if-eqz v13, :cond_2a

    goto :goto_15

    :cond_2a
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v1, :cond_2b

    goto :goto_11

    :cond_2b
    aget-object v1, v3, v11

    :goto_11
    if-eqz v4, :cond_2c

    goto :goto_12

    :cond_2c
    const/4 v4, 0x1

    aget-object v4, v3, v4

    :goto_12
    if-eqz v7, :cond_2d

    goto :goto_13

    :cond_2d
    aget-object v7, v3, v6

    :goto_13
    if-eqz v8, :cond_2e

    goto :goto_14

    :cond_2e
    aget-object v8, v3, v10

    :goto_14
    invoke-virtual {v9, v1, v4, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_2f
    :goto_15
    if-eqz v4, :cond_30

    goto :goto_16

    :cond_30
    const/4 v1, 0x1

    aget-object v4, v3, v1

    :goto_16
    aget-object v1, v3, v6

    if-eqz v8, :cond_31

    goto :goto_17

    :cond_31
    aget-object v8, v3, v10

    :goto_17
    invoke-virtual {v9, v12, v4, v1, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_32
    :goto_18
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v12, :cond_33

    goto :goto_19

    :cond_33
    const/4 v7, 0x0

    aget-object v12, v1, v7

    :goto_19
    if-eqz v4, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v4, 0x1

    aget-object v4, v1, v4

    :goto_1a
    if-eqz v3, :cond_35

    goto :goto_1b

    :cond_35
    aget-object v3, v1, v6

    :goto_1b
    if-eqz v8, :cond_36

    goto :goto_1c

    :cond_36
    aget-object v8, v1, v10

    :goto_1c
    invoke-virtual {v9, v12, v4, v3, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_37
    :goto_1d
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v1

    if-eqz v1, :cond_38

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/x2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_38
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v1

    if-eqz v1, :cond_39

    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/appcompat/widget/e1;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1e

    :cond_39
    const/4 v3, -0x1

    :goto_1e
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v1

    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v4

    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v6

    invoke-virtual {v2}, Landroidx/appcompat/widget/x2;->n()V

    if-eq v1, v3, :cond_3a

    invoke-static {v9, v1}, Landroidx/core/widget/l;->b(Landroid/widget/TextView;I)V

    :cond_3a
    if-eq v4, v3, :cond_3b

    invoke-static {v9, v4}, Landroidx/core/widget/l;->c(Landroid/widget/TextView;I)V

    :cond_3b
    if-eq v6, v3, :cond_3c

    invoke-static {v6}, Lf0/d;->b(I)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    if-eq v6, v1, :cond_3c

    sub-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v9, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_3c
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    new-instance v1, Landroidx/appcompat/widget/x2;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/x2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/widget/x2;->a(IZ)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v1, p2, v3}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/t0;->j(Landroid/content/Context;Landroidx/appcompat/widget/x2;)V

    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/x2;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/x2;->n()V

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget p2, p0, Landroidx/appcompat/widget/t0;->j:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final g(IIII)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/y0;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/y0;->j(FFF)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->a()V

    :cond_0
    return-void
.end method

.method public final h([II)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    new-array v3, v1, [I

    if-nez p2, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/appcompat/widget/y0;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/appcompat/widget/y0;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/y0;->f:[I

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None of the preset sizes is valid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/y0;->g:Z

    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->a()V

    :cond_4
    return-void
.end method

.method public final i(I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Landroidx/appcompat/widget/y0;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v1, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, p1, v1}, Landroidx/appcompat/widget/y0;->j(FFF)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, Landroidx/activity/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    iput p1, v0, Landroidx/appcompat/widget/y0;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/appcompat/widget/y0;->d:F

    iput v1, v0, Landroidx/appcompat/widget/y0;->e:F

    iput v1, v0, Landroidx/appcompat/widget/y0;->c:F

    new-array v1, p1, [I

    iput-object v1, v0, Landroidx/appcompat/widget/y0;->f:[I

    iput-boolean p1, v0, Landroidx/appcompat/widget/y0;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final j(Landroid/content/Context;Landroidx/appcompat/widget/x2;)V
    .locals 10

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/t0;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/t0;->j:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_0

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v5, v2}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/t0;->k:I

    if-eq v5, v2, :cond_0

    iget v5, p0, Landroidx/appcompat/widget/t0;->j:I

    and-int/2addr v5, v1

    or-int/2addr v5, v3

    iput v5, p0, Landroidx/appcompat/widget/t0;->j:I

    :cond_0
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_6

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Landroidx/appcompat/widget/t0;->m:Z

    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v6}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result p1

    if-eq p1, v6, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_2

    :cond_7
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    :goto_2
    iget v7, p0, Landroidx/appcompat/widget/t0;->k:I

    iget v8, p0, Landroidx/appcompat/widget/t0;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v9, Landroidx/appcompat/widget/r0;

    invoke-direct {v9, p0, v7, v8, p1}, Landroidx/appcompat/widget/r0;-><init>(Landroidx/appcompat/widget/t0;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/t0;->j:I

    invoke-virtual {p2, v5, p1, v9}, Landroidx/appcompat/widget/x2;->g(IILandroidx/appcompat/widget/r0;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v4, :cond_9

    iget v0, p0, Landroidx/appcompat/widget/t0;->k:I

    if-eq v0, v2, :cond_9

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/t0;->k:I

    iget v7, p0, Landroidx/appcompat/widget/t0;->j:I

    and-int/2addr v7, v1

    if-eqz v7, :cond_8

    move v7, v6

    goto :goto_3

    :cond_8
    move v7, v3

    :goto_3
    invoke-static {p1, v0, v7}, Landroidx/appcompat/widget/q0;->d(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    :cond_a
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v6

    goto :goto_5

    :cond_b
    move p1, v3

    :goto_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/t0;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/x2;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/t0;->k:I

    if-eq p2, v2, :cond_e

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/t0;->k:I

    iget v0, p0, Landroidx/appcompat/widget/t0;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move v3, v6

    :cond_d
    invoke-static {p1, p2, v3}, Landroidx/appcompat/widget/q0;->d(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/t0;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_6
    return-void
.end method
