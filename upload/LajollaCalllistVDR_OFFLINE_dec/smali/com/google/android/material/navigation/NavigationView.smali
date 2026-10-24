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
.field public static final r:[I

.field public static final s:[I

.field public static final t:I


# instance fields
.field public final f:Lcom/google/android/material/internal/f;

.field public final g:Lcom/google/android/material/internal/p;

.field public final h:I

.field public final i:[I

.field public j:Lf/k;

.field public k:Landroidx/appcompat/view/menu/f;

.field public l:Z

.field public m:Z

.field public final n:I

.field public final o:I

.field public p:Landroid/graphics/Path;

.field public final q:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->r:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->s:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->t:I

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
    .locals 22
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
    sget v9, Lcom/google/android/material/navigation/NavigationView;->t:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lb2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v10, Lcom/google/android/material/internal/p;

    invoke-direct {v10}, Lcom/google/android/material/internal/p;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 5
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->i:[I

    const/4 v12, 0x1

    .line 6
    iput-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->l:Z

    .line 7
    iput-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    const/4 v13, 0x0

    .line 8
    iput v13, v0, Lcom/google/android/material/navigation/NavigationView;->n:I

    .line 9
    iput v13, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/RectF;

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 12
    new-instance v15, Lcom/google/android/material/internal/f;

    invoke-direct {v15, v14}, Lcom/google/android/material/internal/f;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    .line 13
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    new-array v6, v13, [I

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/x;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/u2;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v0, v2}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    .line 19
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 20
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_layout_gravity:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->n:I

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
    invoke-static {v14, v7, v8, v9}, Ly1/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ly1/m;

    move-result-object v2

    .line 23
    new-instance v3, Ly1/n;

    invoke-direct {v3, v2}, Ly1/n;-><init>(Ly1/m;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 25
    new-instance v4, Ly1/h;

    invoke-direct {v4, v3}, Ly1/h;-><init>(Ly1/n;)V

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
    invoke-virtual {v4, v2}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    .line 30
    :cond_2
    invoke-virtual {v4, v14}, Ly1/h;->k(Landroid/content/Context;)V

    .line 31
    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {v0, v4}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_3
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 35
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 36
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->h:I

    .line 37
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 38
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v3

    .line 39
    :goto_0
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 40
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    .line 41
    invoke-virtual {v1, v4, v13}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v13

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

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 44
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_2

    .line 45
    :cond_8
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 46
    :goto_2
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 47
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6, v13}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v6

    goto :goto_3

    :cond_9
    move v6, v13

    .line 48
    :goto_3
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 49
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    .line 50
    :cond_a
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 51
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

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

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_f

    .line 54
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v8

    if-nez v8, :cond_e

    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 55
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    move v8, v13

    goto :goto_5

    :cond_e
    :goto_4
    move v8, v12

    :goto_5
    if-eqz v8, :cond_f

    .line 56
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v7

    .line 57
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 58
    invoke-virtual {v1, v8, v13}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v8

    .line 59
    new-instance v9, Ly1/h;

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 61
    new-instance v12, Ly1/a;

    move-object/from16 p2, v3

    int-to-float v3, v13

    invoke-direct {v12, v3}, Ly1/a;-><init>(F)V

    invoke-static {v11, v7, v8, v12}, Ly1/n;->a(Landroid/content/Context;IILy1/c;)Ly1/m;

    move-result-object v3

    .line 62
    new-instance v7, Ly1/n;

    invoke-direct {v7, v3}, Ly1/n;-><init>(Ly1/m;)V

    .line 63
    invoke-direct {v9, v7}, Ly1/h;-><init>(Ly1/n;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 65
    invoke-static {v3, v1, v7}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 66
    invoke-virtual {v9, v3}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    .line 67
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v18

    .line 68
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v19

    .line 69
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v20

    .line 70
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v21

    .line 71
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_6

    :cond_f
    move-object/from16 p2, v3

    .line 72
    :goto_6
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 73
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    .line 74
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 75
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    .line 76
    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 77
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    .line 78
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    .line 80
    :cond_11
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    .line 81
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 82
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    .line 83
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    .line 84
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    .line 86
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    .line 87
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 88
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    .line 89
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    .line 90
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 91
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    .line 92
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->l:Z

    .line 93
    invoke-virtual {v1, v3, v8}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v3

    .line 94
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    .line 95
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 96
    invoke-virtual {v1, v3, v8}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    .line 98
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 99
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v3

    .line 100
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 101
    new-instance v8, Landroidx/fragment/app/n;

    const/4 v11, 0x2

    invoke-direct {v8, v11, v0}, Landroidx/fragment/app/n;-><init>(ILjava/lang/Object;)V

    .line 102
    iput-object v8, v15, Landroidx/appcompat/view/menu/p;->e:Landroidx/appcompat/view/menu/n;

    .line 103
    iput v9, v10, Lcom/google/android/material/internal/p;->d:I

    .line 104
    invoke-virtual {v10, v14, v15}, Lcom/google/android/material/internal/p;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V

    if-eqz v4, :cond_12

    .line 105
    iput v4, v10, Lcom/google/android/material/internal/p;->g:I

    .line 106
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 107
    :cond_12
    iput-object v2, v10, Lcom/google/android/material/internal/p;->h:Landroid/content/res/ColorStateList;

    .line 108
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 109
    iput-object v5, v10, Lcom/google/android/material/internal/p;->k:Landroid/content/res/ColorStateList;

    .line 110
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 112
    iput v2, v10, Lcom/google/android/material/internal/p;->y:I

    .line 113
    iget-object v4, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v4, :cond_13

    .line 114
    invoke-virtual {v4, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_13
    if-eqz v6, :cond_14

    .line 115
    iput v6, v10, Lcom/google/android/material/internal/p;->i:I

    .line 116
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    :cond_14
    move-object/from16 v2, p2

    .line 117
    iput-object v2, v10, Lcom/google/android/material/internal/p;->j:Landroid/content/res/ColorStateList;

    .line 118
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 119
    iput-object v7, v10, Lcom/google/android/material/internal/p;->l:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 121
    iput v3, v10, Lcom/google/android/material/internal/p;->o:I

    .line 122
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 123
    iget-object v2, v15, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-virtual {v15, v10, v2}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    .line 124
    iget-object v2, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_17

    .line 125
    iget-object v2, v10, Lcom/google/android/material/internal/p;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    .line 126
    invoke-virtual {v2, v3, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 127
    new-instance v3, Lcom/google/android/material/internal/m;

    iget-object v4, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v4}, Lcom/google/android/material/internal/m;-><init>(Lcom/google/android/material/internal/p;Lcom/google/android/material/internal/NavigationMenuView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/k1;)V

    .line 128
    iget-object v2, v10, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    if-nez v2, :cond_15

    .line 129
    new-instance v2, Lcom/google/android/material/internal/h;

    invoke-direct {v2, v10}, Lcom/google/android/material/internal/h;-><init>(Lcom/google/android/material/internal/p;)V

    iput-object v2, v10, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    .line 130
    :cond_15
    iget v2, v10, Lcom/google/android/material/internal/p;->y:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 131
    iget-object v3, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 132
    :cond_16
    iget-object v2, v10, Lcom/google/android/material/internal/p;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v4, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 133
    invoke-virtual {v2, v3, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    .line 134
    iget-object v2, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    .line 135
    :cond_17
    iget-object v2, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 138
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v2

    .line 139
    iget-object v3, v10, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    if-eqz v3, :cond_18

    const/4 v4, 0x1

    .line 140
    iput-boolean v4, v3, Lcom/google/android/material/internal/h;->e:Z

    .line 141
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v15}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    iget-object v2, v10, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    if-eqz v2, :cond_19

    .line 143
    iput-boolean v13, v2, Lcom/google/android/material/internal/h;->e:Z

    .line 144
    :cond_19
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/p;->n(Z)V

    .line 145
    :cond_1a
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 146
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v2

    .line 147
    iget-object v3, v10, Lcom/google/android/material/internal/p;->f:Landroid/view/LayoutInflater;

    .line 148
    iget-object v4, v10, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 149
    iget-object v3, v10, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    iget-object v2, v10, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v13, v13, v13, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    :cond_1b
    invoke-virtual {v1}, Landroidx/appcompat/widget/u2;->n()V

    .line 152
    new-instance v1, Landroidx/appcompat/view/menu/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/f;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroidx/appcompat/view/menu/f;

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroidx/appcompat/view/menu/f;

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lf/k;

    if-nez v0, :cond_0

    new-instance v0, Lf/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lf/k;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lf/k;

    return-object p0
.end method


# virtual methods
.method public final a(Lh0/f1;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lh0/f1;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/internal/p;->w:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/google/android/material/internal/p;->w:I

    iget-object v0, p0, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/p;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/internal/p;->w:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Lh0/f1;->a()I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lh0/q0;->b(Landroid/view/View;Lh0/f1;)Lh0/f1;

    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 6

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

    invoke-static {p1, v3}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v3, v3, [[I

    sget-object v4, Lcom/google/android/material/navigation/NavigationView;->s:[I

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v5, Lcom/google/android/material/navigation/NavigationView;->r:[I

    aput-object v5, v3, v2

    const/4 v2, 0x2

    sget-object v5, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    aput-object v5, v3, v2

    invoke-virtual {p1, v4, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, p0, v0}, [I

    move-result-object p0

    invoke-direct {v1, v3, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    iget-object p0, p0, Lcom/google/android/material/internal/h;->d:Landroidx/appcompat/view/menu/r;

    return-object p0
.end method

.method public getDividerInsetEnd()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->r:I

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->q:I

    return p0
.end method

.method public getHeaderCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getItemHorizontalPadding()I
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->m:I

    return p0
.end method

.method public getItemIconPadding()I
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->o:I

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->k:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemMaxLines()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->v:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->j:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemVerticalPadding()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->n:I

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    return-object p0
.end method

.method public getSubheaderInsetEnd()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public getSubheaderInsetStart()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget p0, p0, Lcom/google/android/material/internal/p;->s:I

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    invoke-static {p0}, Ly1/l;->o1(Landroid/view/View;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/google/android/material/navigation/NavigationView;->h:I

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

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->a:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->c:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/p;->t(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->c:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/p;->v(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/RectF;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/android/material/navigation/NavigationView;->o:I

    if-lez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p4, p4, Ly1/h;

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Ly1/h;

    iget-object v0, p4, Ly1/h;->a:Ly1/g;

    iget-object v0, v0, Ly1/g;->a:Ly1/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly1/m;

    invoke-direct {v1, v0}, Ly1/m;-><init>(Ly1/n;)V

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/a0;->d(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->n:I

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    int-to-float p3, p3

    new-instance v0, Ly1/a;

    invoke-direct {v0, p3}, Ly1/a;-><init>(F)V

    iput-object v0, v1, Ly1/m;->f:Ly1/c;

    new-instance v0, Ly1/a;

    invoke-direct {v0, p3}, Ly1/a;-><init>(F)V

    iput-object v0, v1, Ly1/m;->g:Ly1/c;

    goto :goto_0

    :cond_0
    int-to-float p3, p3

    new-instance v0, Ly1/a;

    invoke-direct {v0, p3}, Ly1/a;-><init>(F)V

    iput-object v0, v1, Ly1/m;->e:Ly1/c;

    new-instance v0, Ly1/a;

    invoke-direct {v0, p3}, Ly1/a;-><init>(F)V

    iput-object v0, v1, Ly1/m;->h:Ly1/c;

    :goto_0
    new-instance p3, Ly1/n;

    invoke-direct {p3, v1}, Ly1/n;-><init>(Ly1/m;)V

    invoke-virtual {p4, p3}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    :cond_1
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {v3, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Ly1/o;->a:Ly1/p;

    iget-object p1, p4, Ly1/h;->a:Ly1/g;

    iget-object v1, p1, Ly1/g;->a:Ly1/n;

    iget v2, p1, Ly1/g;->j:F

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ly1/p;->a(Ly1/n;FLandroid/graphics/RectF;Landroidx/fragment/app/n;Landroid/graphics/Path;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    :goto_1
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Landroidx/appcompat/view/menu/r;

    .line 3
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->h(Landroidx/appcompat/view/menu/r;)V

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
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Landroidx/appcompat/view/menu/r;

    .line 7
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->h(Landroidx/appcompat/view/menu/r;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDividerInsetEnd(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->r:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->q:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, Ly1/l;->m1(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput-object p1, p0, Lcom/google/android/material/internal/p;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

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

    sget-object v1, Lx/f;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->m:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

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

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->m:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->o:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->o:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget v0, p0, Lcom/google/android/material/internal/p;->p:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/p;->p:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/p;->t:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput-object p1, p0, Lcom/google/android/material/internal/p;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->v:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->i:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput-object p1, p0, Lcom/google/android/material/internal/p;->j:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->n:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

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

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->n:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

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
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/p;->y:I

    iget-object p0, p0, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->s:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iput p1, p0, Lcom/google/android/material/internal/p;->s:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->n(Z)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Z

    return-void
.end method
