.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;
    }
.end annotation


# static fields
.field public static final s:[I

.field public static final t:[I

.field public static final u:I


# instance fields
.field public final g:Lcom/google/android/material/internal/f;

.field public final h:Lcom/google/android/material/internal/p;

.field public final i:I

.field public final j:[I

.field public k:Le/j;

.field public l:Landroidx/appcompat/view/menu/f;

.field public m:Z

.field public n:Z

.field public final o:I

.field public final p:I

.field public q:Landroid/graphics/Path;

.field public final r:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->s:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->t:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 3
    sget v9, Lcom/google/android/material/navigation/NavigationView;->u:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lj2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v10, Lcom/google/android/material/internal/p;

    invoke-direct {v10}, Lcom/google/android/material/internal/p;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    const/4 v11, 0x1

    .line 6
    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 7
    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    const/4 v12, 0x0

    .line 8
    iput v12, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 9
    iput v12, v0, Lcom/google/android/material/navigation/NavigationView;->p:I

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->r:Landroid/graphics/RectF;

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 12
    new-instance v14, Lcom/google/android/material/internal/f;

    invoke-direct {v14, v13}, Lcom/google/android/material/internal/f;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/f;

    .line 13
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    new-array v6, v12, [I

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/x;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/x2;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lg0/s0;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v0, v2}, Lg0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    .line 19
    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->p:I

    .line 20
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_layout_gravity:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 22
    :cond_1
    invoke-static {v13, v7, v8, v9}, Lg2/m;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg2/l;

    move-result-object v2

    .line 23
    new-instance v3, Lg2/m;

    invoke-direct {v3, v2}, Lg2/m;-><init>(Lg2/l;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 25
    new-instance v4, Lg2/h;

    invoke-direct {v4, v3}, Lg2/h;-><init>(Lg2/m;)V

    .line 26
    instance-of v3, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 27
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 28
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 29
    invoke-virtual {v4, v2}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    .line 30
    :cond_2
    invoke-virtual {v4, v13}, Lg2/h;->k(Landroid/content/Context;)V

    .line 31
    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {v0, v4}, Lg0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_3
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 35
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 36
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->i:I

    .line 37
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 38
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v3

    .line 39
    :goto_0
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 40
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    .line 41
    invoke-virtual {v1, v4, v12}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v12

    :goto_1
    const v5, 0x1010038

    if-nez v4, :cond_7

    if-nez v2, :cond_7

    .line 42
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 43
    :cond_7
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 44
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/x2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_2

    .line 45
    :cond_8
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 46
    :goto_2
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 47
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6, v12}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v6

    goto :goto_3

    :cond_9
    move v6, v12

    .line 48
    :goto_3
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 49
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v7, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    .line 50
    :cond_a
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 51
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/x2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_b
    if-nez v6, :cond_c

    if-nez v3, :cond_c

    const v3, 0x1010036

    .line 52
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 53
    :cond_c
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/x2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_f

    .line 54
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v8

    if-nez v8, :cond_e

    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 55
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    move v8, v12

    goto :goto_5

    :cond_e
    :goto_4
    move v8, v11

    :goto_5
    if-eqz v8, :cond_f

    .line 56
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v7, v12}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v7

    .line 57
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 58
    invoke-virtual {v1, v8, v12}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v8

    .line 59
    new-instance v9, Lg2/h;

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 61
    new-instance v11, Lg2/a;

    move-object/from16 p2, v3

    int-to-float v3, v12

    invoke-direct {v11, v3}, Lg2/a;-><init>(F)V

    invoke-static {v15, v7, v8, v11}, Lg2/m;->a(Landroid/content/Context;IILg2/c;)Lg2/l;

    move-result-object v3

    .line 62
    new-instance v7, Lg2/m;

    invoke-direct {v7, v3}, Lg2/m;-><init>(Lg2/l;)V

    .line 63
    invoke-direct {v9, v7}, Lg2/h;-><init>(Lg2/m;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 65
    invoke-static {v3, v1, v7}, Ld2/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/x2;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 66
    invoke-virtual {v9, v3}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    .line 67
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v17

    .line 68
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v18

    .line 69
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v19

    .line 70
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v20

    .line 71
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v15, v7

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_6

    :cond_f
    move-object/from16 p2, v3

    .line 72
    :goto_6
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 73
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    .line 74
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 75
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    .line 76
    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 77
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    .line 78
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    .line 80
    :cond_11
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    .line 81
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 82
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    .line 83
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    .line 84
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    .line 86
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    .line 87
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 88
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    .line 89
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    .line 90
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 91
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    .line 92
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 93
    invoke-virtual {v1, v3, v8}, Landroidx/appcompat/widget/x2;->a(IZ)Z

    move-result v3

    .line 94
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    .line 95
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    .line 96
    invoke-virtual {v1, v3, v8}, Landroidx/appcompat/widget/x2;->a(IZ)Z

    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    .line 98
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 99
    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result v3

    .line 100
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 101
    new-instance v8, Landroidx/fragment/app/n;

    invoke-direct {v8, v9, v0}, Landroidx/fragment/app/n;-><init>(ILjava/lang/Object;)V

    .line 102
    iput-object v8, v14, Landroidx/appcompat/view/menu/p;->e:Landroidx/appcompat/view/menu/n;

    .line 103
    iput v9, v10, Lcom/google/android/material/internal/p;->e:I

    .line 104
    invoke-virtual {v10, v13, v14}, Lcom/google/android/material/internal/p;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V

    if-eqz v4, :cond_12

    .line 105
    iput v4, v10, Lcom/google/android/material/internal/p;->h:I

    .line 106
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 107
    :cond_12
    iput-object v2, v10, Lcom/google/android/material/internal/p;->i:Landroid/content/res/ColorStateList;

    .line 108
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 109
    iput-object v5, v10, Lcom/google/android/material/internal/p;->l:Landroid/content/res/ColorStateList;

    .line 110
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 112
    iput v2, v10, Lcom/google/android/material/internal/p;->z:I

    .line 113
    iget-object v4, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v4, :cond_13

    .line 114
    invoke-virtual {v4, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_13
    if-eqz v6, :cond_14

    .line 115
    iput v6, v10, Lcom/google/android/material/internal/p;->j:I

    .line 116
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    :cond_14
    move-object/from16 v2, p2

    .line 117
    iput-object v2, v10, Lcom/google/android/material/internal/p;->k:Landroid/content/res/ColorStateList;

    .line 118
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 119
    iput-object v7, v10, Lcom/google/android/material/internal/p;->m:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 121
    iput v3, v10, Lcom/google/android/material/internal/p;->p:I

    .line 122
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 123
    iget-object v2, v14, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-virtual {v14, v10, v2}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    .line 124
    iget-object v2, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_17

    .line 125
    iget-object v2, v10, Lcom/google/android/material/internal/p;->g:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    .line 126
    invoke-virtual {v2, v3, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 127
    new-instance v3, Lcom/google/android/material/internal/m;

    iget-object v4, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v4}, Lcom/google/android/material/internal/m;-><init>(Lcom/google/android/material/internal/p;Lcom/google/android/material/internal/NavigationMenuView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/k1;)V

    .line 128
    iget-object v2, v10, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    if-nez v2, :cond_15

    .line 129
    new-instance v2, Lcom/google/android/material/internal/h;

    invoke-direct {v2, v10}, Lcom/google/android/material/internal/h;-><init>(Lcom/google/android/material/internal/p;)V

    iput-object v2, v10, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    .line 130
    :cond_15
    iget v2, v10, Lcom/google/android/material/internal/p;->z:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 131
    iget-object v3, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 132
    :cond_16
    iget-object v2, v10, Lcom/google/android/material/internal/p;->g:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v4, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 133
    invoke-virtual {v2, v3, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    .line 134
    iget-object v2, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    .line 135
    :cond_17
    iget-object v2, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 138
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v2

    .line 139
    iget-object v3, v10, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    if-eqz v3, :cond_18

    const/4 v4, 0x1

    .line 140
    iput-boolean v4, v3, Lcom/google/android/material/internal/h;->e:Z

    .line 141
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v14}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    iget-object v2, v10, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    if-eqz v2, :cond_19

    .line 143
    iput-boolean v12, v2, Lcom/google/android/material/internal/h;->e:Z

    .line 144
    :cond_19
    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 145
    :cond_1a
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 146
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result v2

    .line 147
    iget-object v3, v10, Lcom/google/android/material/internal/p;->g:Landroid/view/LayoutInflater;

    .line 148
    iget-object v4, v10, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 149
    iget-object v3, v10, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    iget-object v2, v10, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v12, v12, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    :cond_1b
    invoke-virtual {v1}, Landroidx/appcompat/widget/x2;->n()V

    .line 152
    new-instance v1, Landroidx/appcompat/view/menu/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/f;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroidx/appcompat/view/menu/f;

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroidx/appcompat/view/menu/f;

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Le/j;

    if-nez v0, :cond_0

    new-instance v0, Le/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Le/j;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Le/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lg0/i1;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lg0/i1;->d()I

    move-result v1

    iget v2, v0, Lcom/google/android/material/internal/p;->x:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    iput v1, v0, Lcom/google/android/material/internal/p;->x:I

    iget-object v1, v0, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/material/internal/p;->v:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/material/internal/p;->x:I

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, v0, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v3, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Lg0/i1;->a()I

    move-result v4

    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v0, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lg0/s0;->b(Landroid/view/View;Lg0/i1;)Lg0/i1;

    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v4, v4, [[I

    sget-object v5, Lcom/google/android/material/navigation/NavigationView;->t:[I

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->s:[I

    aput-object v6, v4, v2

    const/4 v2, 0x2

    sget-object v6, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    aput-object v6, v4, v2

    invoke-virtual {p1, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    iget-object v0, v0, Lcom/google/android/material/internal/h;->d:Landroidx/appcompat/view/menu/r;

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->s:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->r:I

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->n:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->p:I

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->w:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->o:I

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/f;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v0, v0, Lcom/google/android/material/internal/p;->t:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/slider/h;->l1(Landroid/view/View;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->b:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/f;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->t(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/f;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/p;->v(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroid/graphics/RectF;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    if-lez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p4, p4, Lg2/h;

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lg2/h;

    iget-object v0, p4, Lg2/h;->b:Lg2/g;

    iget-object v0, v0, Lg2/g;->a:Lg2/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg2/l;

    invoke-direct {v1, v0}, Lg2/l;-><init>(Lg2/m;)V

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->o:I

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    int-to-float p3, p3

    new-instance v0, Lg2/a;

    invoke-direct {v0, p3}, Lg2/a;-><init>(F)V

    iput-object v0, v1, Lg2/l;->f:Lg2/c;

    new-instance v0, Lg2/a;

    invoke-direct {v0, p3}, Lg2/a;-><init>(F)V

    iput-object v0, v1, Lg2/l;->g:Lg2/c;

    goto :goto_0

    :cond_0
    int-to-float p3, p3

    new-instance v0, Lg2/a;

    invoke-direct {v0, p3}, Lg2/a;-><init>(F)V

    iput-object v0, v1, Lg2/l;->e:Lg2/c;

    new-instance v0, Lg2/a;

    invoke-direct {v0, p3}, Lg2/a;-><init>(F)V

    iput-object v0, v1, Lg2/l;->h:Lg2/c;

    :goto_0
    new-instance p3, Lg2/m;

    invoke-direct {p3, v1}, Lg2/m;-><init>(Lg2/l;)V

    invoke-virtual {p4, p3}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    :cond_1
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {v3, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lg2/n;->a:Lg2/o;

    iget-object p1, p4, Lg2/h;->b:Lg2/g;

    iget-object v1, p1, Lg2/g;->a:Lg2/m;

    iget v2, p1, Lg2/g;->j:F

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lg2/o;->a(Lg2/m;FLandroid/graphics/RectF;Landroidx/fragment/app/n;Landroid/graphics/Path;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    :goto_1
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Landroidx/appcompat/view/menu/r;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->h(Landroidx/appcompat/view/menu/r;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/f;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Landroidx/appcompat/view/menu/r;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget-object v0, v0, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->h(Landroidx/appcompat/view/menu/r;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->s:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->r:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, Lcom/google/android/material/slider/h;->j1(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput-object p1, v0, Lcom/google/android/material/internal/p;->m:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lw/f;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lw/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->n:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->n:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->p:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->p:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iget v1, v0, Lcom/google/android/material/internal/p;->q:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/internal/p;->q:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/material/internal/p;->u:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput-object p1, v0, Lcom/google/android/material/internal/p;->l:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->w:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->j:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput-object p1, v0, Lcom/google/android/material/internal/p;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->o:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->o:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/j;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/google/android/material/internal/p;->z:I

    iget-object v0, v0, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->t:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/p;

    iput p1, v0, Lcom/google/android/material/internal/p;->t:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    return-void
.end method
