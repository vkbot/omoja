.class public final Lcom/google/android/material/textfield/l;
.super Lcom/google/android/material/textfield/m;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/material/textfield/h;

.field public final f:Landroidx/appcompat/widget/a2;

.field public final g:Lcom/google/android/material/textfield/i;

.field public final h:Lcom/google/android/material/textfield/a;

.field public final i:Lcom/google/android/material/textfield/b;

.field public j:Z

.field public k:Z

.field public l:J

.field public m:Landroid/graphics/drawable/StateListDrawable;

.field public n:Ly1/h;

.field public o:Landroid/view/accessibility/AccessibilityManager;

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/m;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p2, Lcom/google/android/material/textfield/h;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p2, p0, Lcom/google/android/material/textfield/l;->e:Lcom/google/android/material/textfield/h;

    new-instance p2, Landroidx/appcompat/widget/a2;

    const/4 v1, 0x2

    invoke-direct {p2, v1, p0}, Landroidx/appcompat/widget/a2;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/textfield/l;->f:Landroidx/appcompat/widget/a2;

    new-instance p2, Lcom/google/android/material/textfield/i;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/textfield/i;-><init>(Lcom/google/android/material/textfield/l;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p2, p0, Lcom/google/android/material/textfield/l;->g:Lcom/google/android/material/textfield/i;

    new-instance p1, Lcom/google/android/material/textfield/a;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/l;->h:Lcom/google/android/material/textfield/a;

    new-instance p1, Lcom/google/android/material/textfield/b;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/l;->i:Lcom/google/android/material/textfield/b;

    iput-boolean v0, p0, Lcom/google/android/material/textfield/l;->j:Z

    iput-boolean v0, p0, Lcom/google/android/material/textfield/l;->k:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/android/material/textfield/l;->l:J

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/l;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/l;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_2

    const-wide/16 v5, 0x12c

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/google/android/material/textfield/l;->j:Z

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/l;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/textfield/l;->k:Z

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/l;->f(Z)V

    iget-boolean p0, p0, Lcom/google/android/material/textfield/l;->k:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, Lcom/google/android/material/textfield/l;->j:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/textfield/m;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0, v1, v1, v2, v3}, Lcom/google/android/material/textfield/l;->e(FFFI)Ly1/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/google/android/material/textfield/l;->e(FFFI)Ly1/h;

    move-result-object v1

    iput-object v4, p0, Lcom/google/android/material/textfield/l;->n:Ly1/h;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/l;->m:Landroid/graphics/drawable/StateListDrawable;

    const v3, 0x10100aa

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/google/android/material/textfield/l;->m:Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/google/android/material/textfield/m;->d:I

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/appcompat/widget/v1;

    const/4 v3, 0x6

    invoke-direct {v1, v3, p0}, Landroidx/appcompat/widget/v1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lcom/google/android/material/textfield/l;->h:Lcom/google/android/material/textfield/a;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    invoke-virtual {v4, v2}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_1
    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/google/android/material/textfield/l;->i:Lcom/google/android/material/textfield/b;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Le1/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0x43

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lf1/d;

    const/4 v6, 0x3

    invoke-direct {v5, v6, p0}, Lf1/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/l;->q:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v2, 0x32

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lf1/d;

    invoke-direct {v2, v6, p0}, Lf1/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/l;->p:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/appcompat/widget/e;

    invoke-direct {v2, v3, p0}, Landroidx/appcompat/widget/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/l;->o:Landroid/view/accessibility/AccessibilityManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(FFFI)Ly1/h;
    .locals 2

    new-instance v0, Ly1/m;

    invoke-direct {v0}, Ly1/m;-><init>()V

    new-instance v1, Ly1/a;

    invoke-direct {v1, p1}, Ly1/a;-><init>(F)V

    iput-object v1, v0, Ly1/m;->e:Ly1/c;

    new-instance v1, Ly1/a;

    invoke-direct {v1, p1}, Ly1/a;-><init>(F)V

    iput-object v1, v0, Ly1/m;->f:Ly1/c;

    new-instance p1, Ly1/a;

    invoke-direct {p1, p2}, Ly1/a;-><init>(F)V

    iput-object p1, v0, Ly1/m;->h:Ly1/c;

    new-instance p1, Ly1/a;

    invoke-direct {p1, p2}, Ly1/a;-><init>(F)V

    iput-object p1, v0, Ly1/m;->g:Ly1/c;

    new-instance p1, Ly1/n;

    invoke-direct {p1, v0}, Ly1/n;-><init>(Ly1/m;)V

    sget-object p2, Ly1/h;->w:Landroid/graphics/Paint;

    sget p2, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v0, Ly1/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/textfield/m;->b:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lv1/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ly1/h;

    invoke-direct {v0}, Ly1/h;-><init>()V

    invoke-virtual {v0, p0}, Ly1/h;->k(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p3}, Ly1/h;->m(F)V

    invoke-virtual {v0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    iget-object p0, v0, Ly1/h;->a:Ly1/g;

    iget-object p1, p0, Ly1/g;->h:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ly1/g;->h:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, v0, Ly1/h;->a:Ly1/g;

    iget-object p0, p0, Ly1/g;->h:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4, p1, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Ly1/h;->invalidateSelf()V

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/l;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/l;->k:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/l;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/google/android/material/textfield/l;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
