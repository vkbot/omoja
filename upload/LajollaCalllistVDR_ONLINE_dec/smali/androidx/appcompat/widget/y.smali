.class public final Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILg2/m;Landroid/graphics/Rect;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lf0/d;->b(I)V

    .line 7
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Lf0/d;->b(I)V

    .line 8
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lf0/d;->b(I)V

    .line 9
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Lf0/d;->b(I)V

    .line 10
    iput-object p6, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Landroidx/appcompat/widget/y;->c:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    .line 14
    iput p4, p0, Landroidx/appcompat/widget/y;->a:I

    .line 15
    iput-object p5, p0, Landroidx/appcompat/widget/y;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/c0;->a()Landroidx/appcompat/widget/c0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/y;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v2, v1}, Lf0/d;->a(Ljava/lang/String;Z)V

    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    invoke-static {p0, p1, v1}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    invoke-static {p0, p1, v1}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    invoke-static {p0, p1, v1}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, Lg2/a;

    int-to-float v0, v0

    invoke-direct {v3, v0}, Lg2/a;-><init>(F)V

    invoke-static {p0, v1, v2, v3}, Lg2/m;->a(Landroid/content/Context;IILg2/c;)Lg2/l;

    move-result-object p0

    new-instance v10, Lg2/m;

    invoke-direct {v10, p0}, Lg2/m;-><init>(Lg2/l;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Landroidx/appcompat/widget/y;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILg2/m;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/v2;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/y;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/v2;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/appcompat/widget/v2;

    invoke-direct {v2}, Landroidx/appcompat/widget/v2;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/y;->f:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/y;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/v2;

    const/4 v5, 0x0

    iput-object v5, v2, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    iput-boolean v3, v2, Landroidx/appcompat/widget/v2;->d:Z

    iput-object v5, v2, Landroidx/appcompat/widget/v2;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, v2, Landroidx/appcompat/widget/v2;->c:Z

    sget-object v5, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg0/g0;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-boolean v4, v2, Landroidx/appcompat/widget/v2;->d:Z

    iput-object v5, v2, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    :cond_2
    invoke-static {v0}, Lg0/g0;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-boolean v4, v2, Landroidx/appcompat/widget/v2;->c:Z

    iput-object v5, v2, Landroidx/appcompat/widget/v2;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    iget-boolean v5, v2, Landroidx/appcompat/widget/v2;->d:Z

    if-nez v5, :cond_4

    iget-boolean v5, v2, Landroidx/appcompat/widget/v2;->c:Z

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/c0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;[I)V

    move v3, v4

    :cond_5
    if-eqz v3, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/v2;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/c0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;[I)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/v2;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/c0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/v2;[I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final c()Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/v2;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/widget/v2;

    iget-object v0, v0, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/v2;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/widget/v2;

    iget-object v0, v0, Landroidx/appcompat/widget/v2;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    invoke-static {v2, p1, v3, p2}, Landroidx/appcompat/widget/x2;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/x2;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    iget-object v5, v7, Landroidx/appcompat/widget/x2;->b:Landroid/content/res/TypedArray;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lg0/s0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    :try_start_0
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/y;->a:I

    iget-object p1, p0, Landroidx/appcompat/widget/y;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/c0;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/y;->a:I

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/u1;

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/u1;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/y;->h(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_0
    :goto_0
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/x2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1, v1}, Lg0/g0;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v0, Landroid/view/View;

    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/widget/e1;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {v0, p1}, Lg0/g0;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    invoke-virtual {v7}, Landroidx/appcompat/widget/x2;->n()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v7}, Landroidx/appcompat/widget/x2;->n()V

    throw p1
.end method

.method public final f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/y;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->a()V

    return-void
.end method

.method public final g(I)V
    .locals 3

    iput p1, p0, Landroidx/appcompat/widget/y;->a:I

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/c0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/u1;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/u1;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->a()V

    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/v2;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/v2;

    invoke-direct {v0}, Landroidx/appcompat/widget/v2;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/v2;

    iput-object p1, v1, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    check-cast v0, Landroidx/appcompat/widget/v2;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/v2;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->a()V

    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/v2;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/v2;

    invoke-direct {v0}, Landroidx/appcompat/widget/v2;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/v2;

    iput-object p1, v0, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/v2;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->a()V

    return-void
.end method

.method public final j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/v2;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/v2;

    invoke-direct {v0}, Landroidx/appcompat/widget/v2;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/v2;

    iput-object p1, v0, Landroidx/appcompat/widget/v2;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/v2;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->a()V

    return-void
.end method

.method public final k(Landroid/widget/TextView;)V
    .locals 9

    new-instance v0, Lg2/h;

    invoke-direct {v0}, Lg2/h;-><init>()V

    new-instance v1, Lg2/h;

    invoke-direct {v1}, Lg2/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/widget/y;->f:Ljava/lang/Object;

    check-cast v2, Lg2/m;

    invoke-virtual {v0, v2}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    iget-object v2, p0, Landroidx/appcompat/widget/y;->f:Ljava/lang/Object;

    check-cast v2, Lg2/m;

    invoke-virtual {v1, v2}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    iget-object v2, p0, Landroidx/appcompat/widget/y;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    iget v2, p0, Landroidx/appcompat/widget/y;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/widget/y;->e:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/ColorStateList;

    iget-object v4, v0, Lg2/h;->b:Lg2/g;

    iput v2, v4, Lg2/g;->k:F

    invoke-virtual {v0}, Lg2/h;->invalidateSelf()V

    invoke-virtual {v0, v3}, Lg2/h;->s(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroidx/appcompat/widget/y;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Lg0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
