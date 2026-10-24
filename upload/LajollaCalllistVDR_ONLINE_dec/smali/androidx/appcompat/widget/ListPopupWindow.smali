.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g0;


# static fields
.field public static final A:Ljava/lang/reflect/Method;

.field public static final B:Ljava/lang/reflect/Method;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/widget/ListAdapter;

.field public d:Landroidx/appcompat/widget/g1;

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public final n:I

.field public o:Landroidx/appcompat/widget/n1;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public final r:Landroidx/appcompat/widget/l1;

.field public final s:Landroidx/appcompat/widget/p1;

.field public final t:Landroidx/appcompat/widget/o1;

.field public final u:Landroidx/appcompat/widget/l1;

.field public final v:Landroid/os/Handler;

.field public final w:Landroid/graphics/Rect;

.field public x:Landroid/graphics/Rect;

.field public y:Z

.field public final z:Landroidx/appcompat/widget/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "ListPopupWindow"

    const-class v1, Landroid/widget/PopupWindow;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "setClipToScreenEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/appcompat/widget/ListPopupWindow;->A:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v4, "setEpicenterBounds"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/ListPopupWindow;->B:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget v1, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    const/16 v0, 0x3ea

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->i:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->m:I

    const v1, 0x7fffffff

    .line 9
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->n:I

    .line 10
    new-instance v1, Landroidx/appcompat/widget/l1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/l1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroidx/appcompat/widget/l1;

    .line 11
    new-instance v1, Landroidx/appcompat/widget/p1;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/widget/p1;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->s:Landroidx/appcompat/widget/p1;

    .line 12
    new-instance v1, Landroidx/appcompat/widget/o1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/o1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->t:Landroidx/appcompat/widget/o1;

    .line 13
    new-instance v1, Landroidx/appcompat/widget/l1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/l1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->u:Landroidx/appcompat/widget/l1;

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroid/graphics/Rect;

    .line 15
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->b:Landroid/content/Context;

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->v:Landroid/os/Handler;

    .line 17
    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 18
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    .line 19
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    if-eqz v0, :cond_0

    .line 20
    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->j:Z

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->v:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroidx/appcompat/widget/l1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 13

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->y:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v4, v0}, Landroidx/appcompat/widget/ListPopupWindow;->q(Landroid/content/Context;Z)Landroidx/appcompat/widget/g1;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    new-instance v5, Landroidx/appcompat/widget/m1;

    invoke-direct {v5, v3, p0}, Landroidx/appcompat/widget/m1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->t:Landroidx/appcompat/widget/o1;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iget-boolean v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->j:Z

    if-nez v7, :cond_2

    neg-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/view/View;

    iget v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    invoke-virtual {v1, v8, v9, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    iget v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->e:I

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    add-int/2addr v0, v6

    goto :goto_5

    :cond_4
    iget v11, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    if-eq v11, v9, :cond_6

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v10, :cond_5

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v5

    sub-int/2addr v4, v11

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v5

    sub-int/2addr v4, v11

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    add-int/2addr v0, v3

    invoke-virtual {v5, v4, v0}, Landroidx/appcompat/widget/g1;->a(II)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    add-int/2addr v0, v5

    :goto_5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v4

    if-ne v4, v7, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v3

    :goto_6
    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->i:I

    invoke-static {v1, v5}, Landroidx/core/widget/j;->d(Landroid/widget/PopupWindow;I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/view/View;

    sget-object v6, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Lg0/d0;->b(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_9

    return-void

    :cond_9
    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    if-ne v5, v10, :cond_a

    move v5, v10

    goto :goto_7

    :cond_a
    if-ne v5, v9, :cond_b

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_b
    :goto_7
    if-ne v8, v10, :cond_10

    if-eqz v4, :cond_c

    move v8, v0

    goto :goto_8

    :cond_c
    move v8, v10

    :goto_8
    if-eqz v4, :cond_e

    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    if-ne v0, v10, :cond_d

    move v0, v10

    goto :goto_9

    :cond_d
    move v0, v3

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_e
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    if-ne v0, v10, :cond_f

    move v3, v10

    :cond_f
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_10
    if-ne v8, v9, :cond_11

    move v8, v0

    :cond_11
    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    if-gez v5, :cond_12

    move v5, v10

    :cond_12
    if-gez v8, :cond_13

    move v6, v10

    goto :goto_b

    :cond_13
    move v6, v8

    :goto_b
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/g0;->update(Landroid/view/View;IIII)V

    goto/16 :goto_10

    :cond_14
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    if-ne v4, v10, :cond_15

    move v4, v10

    goto :goto_c

    :cond_15
    if-ne v4, v9, :cond_16

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :cond_16
    :goto_c
    if-ne v8, v10, :cond_17

    move v8, v10

    goto :goto_d

    :cond_17
    if-ne v8, v9, :cond_18

    move v8, v0

    :cond_18
    :goto_d
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "ListPopupWindow"

    const/16 v5, 0x1c

    if-gt v0, v5, :cond_19

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->A:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_0
    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_19
    invoke-static {v1}, Landroidx/appcompat/widget/v0;->m(Landroidx/appcompat/widget/g0;)V

    :cond_1a
    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->s:Landroidx/appcompat/widget/p1;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->k:Z

    invoke-static {v1, v0}, Landroidx/core/widget/j;->c(Landroid/widget/PopupWindow;Z)V

    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_1c

    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->B:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_1
    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->x:Landroid/graphics/Rect;

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v3, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->x:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Landroidx/appcompat/widget/v0;->n(Landroidx/appcompat/widget/g0;Landroid/graphics/Rect;)V

    :cond_1d
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->g:I

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->m:I

    invoke-static {v1, v0, v3, v4, v5}, Landroidx/core/widget/i;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->y:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/g1;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->y:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->v:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->u:Landroidx/appcompat/widget/l1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    :goto_10
    return-void
.end method

.method public final f()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    return v0
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Landroidx/appcompat/widget/g1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    return-object v0
.end method

.method public final m(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->j:Z

    return-void
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroidx/appcompat/widget/n1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/n1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/n1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroidx/appcompat/widget/n1;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroidx/appcompat/widget/n1;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public q(Landroid/content/Context;Z)Landroidx/appcompat/widget/g1;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/g1;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/g1;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    :goto_0
    return-void
.end method
