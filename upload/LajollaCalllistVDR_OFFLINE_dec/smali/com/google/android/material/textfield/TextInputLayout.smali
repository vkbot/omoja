.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$EndIconMode;,
        Lcom/google/android/material/textfield/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final N0:I


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public A0:Landroid/content/res/ColorStateList;

.field public final B:Landroidx/appcompat/widget/AppCompatTextView;

.field public B0:I

.field public C:Z

.field public C0:I

.field public D:Ljava/lang/CharSequence;

.field public D0:I

.field public E:Z

.field public E0:I

.field public F:Ly1/h;

.field public F0:I

.field public G:Ly1/h;

.field public G0:Z

.field public final H:Ly1/n;

.field public final H0:Lcom/google/android/material/internal/c;

.field public final I:I

.field public I0:Z

.field public J:I

.field public J0:Z

.field public K:I

.field public K0:Landroid/animation/ValueAnimator;

.field public L:I

.field public L0:Z

.field public M:I

.field public M0:Z

.field public N:I

.field public O:I

.field public P:I

.field public final Q:Landroid/graphics/Rect;

.field public final R:Landroid/graphics/Rect;

.field public final S:Landroid/graphics/RectF;

.field public T:Landroid/graphics/Typeface;

.field public final U:Lcom/google/android/material/internal/CheckableImageButton;

.field public V:Landroid/content/res/ColorStateList;

.field public W:Z

.field public final a:Landroid/widget/FrameLayout;

.field public a0:Landroid/graphics/PorterDuff$Mode;

.field public final b:Landroid/widget/LinearLayout;

.field public b0:Z

.field public final c:Landroid/widget/LinearLayout;

.field public c0:Landroid/graphics/drawable/ColorDrawable;

.field public final d:Landroid/widget/FrameLayout;

.field public d0:I

.field public e:Landroid/widget/EditText;

.field public e0:Landroid/view/View$OnLongClickListener;

.field public f:Ljava/lang/CharSequence;

.field public final f0:Ljava/util/LinkedHashSet;

.field public g:I

.field public g0:I

.field public h:I

.field public final h0:Landroid/util/SparseArray;

.field public final i:Lcom/google/android/material/textfield/o;

.field public final i0:Lcom/google/android/material/internal/CheckableImageButton;

.field public j:Z

.field public final j0:Ljava/util/LinkedHashSet;

.field public k:I

.field public k0:Landroid/content/res/ColorStateList;

.field public l:Z

.field public l0:Z

.field public m:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Landroid/graphics/PorterDuff$Mode;

.field public n:I

.field public n0:Z

.field public o:I

.field public o0:Landroid/graphics/drawable/ColorDrawable;

.field public p:Ljava/lang/CharSequence;

.field public p0:I

.field public q:Z

.field public q0:Landroid/graphics/drawable/Drawable;

.field public r:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Landroid/view/View$OnLongClickListener;

.field public s:Landroid/content/res/ColorStateList;

.field public s0:Landroid/view/View$OnLongClickListener;

.field public t:I

.field public final t0:Lcom/google/android/material/internal/CheckableImageButton;

.field public u:Lw0/h;

.field public u0:Landroid/content/res/ColorStateList;

.field public v:Lw0/h;

.field public v0:Landroid/content/res/ColorStateList;

.field public w:Landroid/content/res/ColorStateList;

.field public w0:Landroid/content/res/ColorStateList;

.field public x:Landroid/content/res/ColorStateList;

.field public x0:I

.field public y:Ljava/lang/CharSequence;

.field public y0:I

.field public final z:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TextInputLayout:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->N0:I

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget v0, Lcom/google/android/material/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
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
    sget v9, Lcom/google/android/material/textfield/TextInputLayout;->N0:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lb2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, -0x1

    .line 4
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 5
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 6
    new-instance v1, Lcom/google/android/material/textfield/o;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/o;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Rect;

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/graphics/RectF;

    .line 10
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    const/4 v11, 0x0

    .line 11
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 12
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;

    .line 13
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;

    .line 14
    new-instance v1, Lcom/google/android/material/internal/c;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/c;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    .line 16
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 18
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 19
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 21
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 24
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const v4, 0x800003

    invoke-direct {v3, v6, v10, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;

    .line 27
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const v4, 0x800005

    invoke-direct {v3, v6, v10, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    .line 31
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    sget-object v2, Le1/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 33
    iput-object v2, v1, Lcom/google/android/material/internal/c;->O:Landroid/animation/TimeInterpolator;

    .line 34
    invoke-virtual {v1, v11}, Lcom/google/android/material/internal/c;->i(Z)V

    .line 35
    iput-object v2, v1, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    .line 36
    invoke-virtual {v1, v11}, Lcom/google/android/material/internal/c;->i(Z)V

    const v2, 0x800033

    .line 37
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/c;->l(I)V

    .line 38
    sget-object v3, Lcom/google/android/material/R$styleable;->TextInputLayout:[I

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    filled-new-array {v1, v2, v6, v11, v10}, [I

    move-result-object v6

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v10, v4

    move/from16 v4, p3

    move-object v11, v5

    move v5, v9

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/x;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/u2;

    move-result-object v1

    .line 40
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 41
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 42
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z

    .line 43
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_expandedHintEnabled:I

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    .line 44
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 46
    :goto_0
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 48
    :cond_1
    invoke-static {v13, v7, v8, v9}, Ly1/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ly1/m;

    move-result-object v2

    .line 49
    new-instance v3, Ly1/n;

    invoke-direct {v3, v2}, Ly1/n;-><init>(Ly1/m;)V

    .line 50
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ly1/n;

    .line 51
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 52
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:I

    .line 53
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/u2;->c(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    .line 55
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidth:I

    .line 56
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 57
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 58
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    .line 59
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidthFocused:I

    .line 60
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 61
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 62
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/u2;->d(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 63
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    .line 64
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    .line 65
    iget-object v4, v1, Landroidx/appcompat/widget/u2;->b:Landroid/content/res/TypedArray;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 66
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    .line 67
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 68
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 69
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 70
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 71
    invoke-virtual {v4, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 72
    new-instance v8, Ly1/m;

    invoke-direct {v8, v3}, Ly1/m;-><init>(Ly1/n;)V

    const/4 v3, 0x0

    cmpl-float v9, v2, v3

    if-ltz v9, :cond_2

    .line 73
    new-instance v9, Ly1/a;

    invoke-direct {v9, v2}, Ly1/a;-><init>(F)V

    iput-object v9, v8, Ly1/m;->e:Ly1/c;

    :cond_2
    cmpl-float v2, v6, v3

    if-ltz v2, :cond_3

    .line 74
    new-instance v2, Ly1/a;

    invoke-direct {v2, v6}, Ly1/a;-><init>(F)V

    iput-object v2, v8, Ly1/m;->f:Ly1/c;

    :cond_3
    cmpl-float v2, v7, v3

    if-ltz v2, :cond_4

    .line 75
    new-instance v2, Ly1/a;

    invoke-direct {v2, v7}, Ly1/a;-><init>(F)V

    iput-object v2, v8, Ly1/m;->g:Ly1/c;

    :cond_4
    cmpl-float v2, v5, v3

    if-ltz v2, :cond_5

    .line 76
    new-instance v2, Ly1/a;

    invoke-direct {v2, v5}, Ly1/a;-><init>(F)V

    iput-object v2, v8, Ly1/m;->h:Ly1/c;

    .line 77
    :cond_5
    new-instance v2, Ly1/n;

    invoke-direct {v2, v8}, Ly1/n;-><init>(Ly1/m;)V

    .line 78
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ly1/n;

    .line 79
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 80
    invoke-static {v13, v1, v2}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 81
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    .line 82
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 83
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    const v5, 0x1010367

    const v6, -0x101009e

    if-eqz v3, :cond_6

    .line 84
    filled-new-array {v6}, [I

    move-result-object v3

    const/4 v7, -0x1

    .line 85
    invoke-virtual {v2, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    const v3, 0x101009c

    const v6, 0x101009e

    .line 86
    filled-new-array {v3, v6}, [I

    move-result-object v3

    .line 87
    invoke-virtual {v2, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 88
    filled-new-array {v5, v6}, [I

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    goto :goto_1

    :cond_6
    const/4 v7, -0x1

    .line 90
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 91
    sget v2, Lcom/google/android/material/R$color;->mtrl_filled_background_color:I

    .line 92
    invoke-static {v13, v2}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 93
    filled-new-array {v6}, [I

    move-result-object v3

    .line 94
    invoke-virtual {v2, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    .line 95
    filled-new-array {v5}, [I

    move-result-object v3

    .line 96
    invoke-virtual {v2, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 97
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 98
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    .line 99
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    .line 100
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    .line 101
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    .line 102
    :goto_1
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 103
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 104
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    .line 105
    :cond_8
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    .line 106
    invoke-static {v13, v1, v2}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 107
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    const/4 v5, 0x0

    .line 108
    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 109
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    .line 110
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 111
    sget-object v4, Lx/f;->a:Ljava/lang/Object;

    .line 112
    invoke-static {v13, v3}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 113
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    .line 114
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_disabled_color:I

    .line 115
    invoke-static {v13, v3}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 116
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 117
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 118
    invoke-static {v13, v3}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 119
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    if-eqz v2, :cond_9

    .line 120
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 121
    :cond_9
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    .line 123
    invoke-static {v13, v1, v2}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 125
    :cond_a
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v2

    if-eq v2, v3, :cond_b

    .line 126
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    .line 127
    :goto_2
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    .line 128
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v2

    .line 129
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_errorContentDescription:I

    .line 130
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 131
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v5

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$layout;->design_text_input_end_icon:I

    .line 133
    invoke-virtual {v6, v7, v11, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 134
    sget v7, Lcom/google/android/material/R$id;->text_input_error_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    const/16 v7, 0x8

    .line 135
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-static {v13}, Lv1/d;->e(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 137
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 139
    :cond_c
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 140
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_d
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 142
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    .line 143
    invoke-static {v13, v1, v3}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    :cond_e
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_f

    .line 146
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    const/4 v9, -0x1

    .line 147
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v3

    .line 148
    invoke-static {v3, v8}, Lcom/google/android/material/internal/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 150
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/google/android/material/R$string;->error_icon_content_description:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 151
    invoke-virtual {v6, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    sget-object v3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    const/4 v3, 0x2

    .line 153
    invoke-static {v6, v3}, Lh0/z;->s(Landroid/view/View;I)V

    const/4 v9, 0x0

    .line 154
    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 155
    invoke-virtual {v6, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 156
    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 157
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    .line 158
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v3

    .line 159
    sget v14, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 160
    invoke-virtual {v1, v14, v9}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v14

    .line 161
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 162
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextAppearance:I

    .line 163
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v7

    .line 164
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderText:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v9

    move/from16 v16, v7

    .line 165
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextAppearance:I

    move-object/from16 v17, v9

    const/4 v9, 0x0

    .line 166
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v7

    .line 167
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixText:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v9

    move/from16 v18, v7

    .line 168
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextAppearance:I

    move-object/from16 v19, v9

    const/4 v9, 0x0

    .line 169
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v7

    .line 170
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixText:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v9

    move/from16 v20, v7

    .line 171
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_counterEnabled:I

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v7

    .line 172
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_counterMaxLength:I

    move/from16 v22, v7

    const/4 v7, -0x1

    invoke-virtual {v1, v9, v7}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 173
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v7

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    .line 174
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    .line 175
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v7

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object/from16 v23, v4

    sget v4, Lcom/google/android/material/R$layout;->design_text_input_start_icon:I

    .line 177
    invoke-virtual {v7, v4, v15, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v7, 0x8

    .line 178
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-static {v13}, Lv1/d;->e(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 180
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_10
    const/4 v7, 0x0

    .line 182
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 185
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 187
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    .line 188
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 189
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    :cond_11
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconCheckable:I

    const/4 v9, 0x1

    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V

    .line 191
    :cond_12
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 192
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    .line 193
    invoke-static {v13, v1, v7}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 194
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    :cond_13
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 196
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    const/4 v9, -0x1

    .line 197
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v7

    const/4 v9, 0x0

    .line 198
    invoke-static {v7, v9}, Lcom/google/android/material/internal/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 199
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 200
    :cond_14
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundMode:I

    const/4 v9, 0x0

    .line 201
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v7

    .line 202
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move/from16 v24, v2

    sget v2, Lcom/google/android/material/R$layout;->design_text_input_end_icon:I

    .line 204
    invoke-virtual {v7, v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 205
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v7, 0x8

    .line 206
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-static {v13}, Lv1/d;->e(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 209
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 210
    :cond_15
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v2, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v2

    .line 211
    new-instance v7, Lcom/google/android/material/textfield/f;

    invoke-direct {v7, v0, v2}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v9, -0x1

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 212
    new-instance v7, Lcom/google/android/material/textfield/f;

    invoke-direct {v7, v0}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 213
    new-instance v7, Lcom/google/android/material/textfield/p;

    if-nez v2, :cond_16

    move/from16 p3, v5

    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    .line 214
    invoke-virtual {v1, v5, v9}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v5

    goto :goto_3

    :cond_16
    move/from16 p3, v5

    move v5, v2

    :goto_3
    invoke-direct {v7, v0, v5}, Lcom/google/android/material/textfield/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v5, 0x1

    .line 215
    invoke-virtual {v12, v5, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 216
    new-instance v5, Lcom/google/android/material/textfield/e;

    invoke-direct {v5, v0, v2}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v7, 0x2

    invoke-virtual {v12, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 217
    new-instance v5, Lcom/google/android/material/textfield/l;

    invoke-direct {v5, v0, v2}, Lcom/google/android/material/textfield/l;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v2, 0x3

    invoke-virtual {v12, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 218
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 219
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 220
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 221
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    .line 222
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    :cond_17
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconCheckable:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    goto :goto_4

    .line 225
    :cond_18
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 226
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    const/4 v5, 0x0

    .line 227
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    .line 228
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 229
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 230
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 232
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 233
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    .line 234
    invoke-static {v13, v1, v2}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 236
    :cond_19
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 237
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    const/4 v5, -0x1

    .line 238
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v2

    const/4 v5, 0x0

    .line 239
    invoke-static {v2, v5}, Lcom/google/android/material/internal/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 240
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 241
    :cond_1a
    :goto_4
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 242
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 243
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    .line 244
    invoke-static {v13, v1, v2}, Lv1/d;->b(Landroid/content/Context;Landroidx/appcompat/widget/u2;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 246
    :cond_1b
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 247
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    const/4 v5, -0x1

    .line 248
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v2

    const/4 v5, 0x0

    .line 249
    invoke-static {v2, v5}, Lcom/google/android/material/internal/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 251
    :cond_1c
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    sget v5, Lcom/google/android/material/R$id;->textinput_prefix_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 253
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    .line 254
    invoke-static {v2, v5}, Lh0/c0;->f(Landroid/view/View;I)V

    .line 255
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    sget v4, Lcom/google/android/material/R$id;->textinput_suffix_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 259
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x50

    invoke-direct {v4, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 260
    invoke-static {v2, v4}, Lh0/c0;->f(Landroid/view/View;I)V

    .line 261
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 265
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    move/from16 v2, p3

    .line 267
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    move/from16 v2, v24

    .line 268
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    move-object/from16 v2, v23

    .line 269
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 271
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    move-object/from16 v2, v17

    .line 272
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    move/from16 v2, v16

    .line 273
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    move-object/from16 v2, v19

    .line 274
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    move/from16 v2, v18

    .line 275
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextAppearance(I)V

    move-object/from16 v2, v21

    .line 276
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    move/from16 v2, v20

    .line 277
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextAppearance(I)V

    .line 278
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 279
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 280
    :cond_1d
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 281
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 282
    :cond_1e
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 283
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 284
    :cond_1f
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 285
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 286
    :cond_20
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 287
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    .line 288
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 290
    :cond_21
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 291
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    .line 292
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 293
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    :cond_22
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 295
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V

    .line 296
    :cond_23
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 297
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    :cond_24
    move/from16 v2, v22

    .line 298
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 299
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/u2;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 300
    invoke-virtual {v1}, Landroidx/appcompat/widget/u2;->n()V

    const/4 v1, 0x2

    .line 301
    invoke-static {v0, v1}, Lh0/z;->s(Landroid/view/View;I)V

    .line 302
    invoke-static {v0, v3}, Lh0/i0;->l(Landroid/view/View;I)V

    return-void
.end method

.method public static d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private getEndIconDelegate()Lcom/google/android/material/textfield/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/util/SparseArray;

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/m;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/m;

    :goto_0
    return-object p0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/y;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    invoke-static {p0, v2}, Lh0/z;->s(Landroid/view/View;I)V

    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    new-instance v0, Lcom/google/android/material/textfield/r;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/r;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/r;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    iget-object v2, v1, Lcom/google/android/material/internal/c;->B:Lv1/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-boolean v3, v2, Lv1/b;->c:Z

    :cond_1
    iget-object v2, v1, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    if-eq v2, v0, :cond_2

    iput-object v0, v1, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v5, v1, Lcom/google/android/material/internal/c;->A:Lv1/b;

    if-eqz v5, :cond_3

    iput-boolean v3, v5, Lv1/b;->c:Z

    :cond_3
    iget-object v5, v1, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    if-eq v5, v0, :cond_4

    iput-object v0, v1, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v1, v4}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v2, v1, Lcom/google/android/material/internal/c;->m:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_7

    iput v0, v1, Lcom/google/android/material/internal/c;->m:F

    invoke-virtual {v1, v4}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/c;->l(I)V

    iget v2, v1, Lcom/google/android/material/internal/c;->k:I

    if-eq v2, v0, :cond_8

    iput v0, v1, Lcom/google/android/material/internal/c;->k:I

    invoke-virtual {v1, v4}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    new-instance v1, Landroidx/appcompat/widget/y1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/y1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_a
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    :cond_b
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->b()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/s;

    check-cast v1, Lcom/google/android/material/textfield/a;

    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    invoke-virtual {p0, v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setErrorIconVisible(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    :cond_3
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/internal/c;->C:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iput-object p1, v0, Lcom/google/android/material/internal/c;->C:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/material/internal/c;->D:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/google/android/material/internal/c;->G:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, v0, Lcom/google/android/material/internal/c;->G:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    :cond_3
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/google/android/material/R$id;->textinput_placeholder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Lw0/h;

    invoke-direct {v0}, Lw0/h;-><init>()V

    const-wide/16 v1, 0x57

    iput-wide v1, v0, Lw0/p;->c:J

    sget-object v3, Le1/a;->a:Landroid/view/animation/LinearInterpolator;

    iput-object v3, v0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lw0/h;

    const-wide/16 v4, 0x43

    iput-wide v4, v0, Lw0/p;->b:J

    new-instance v0, Lw0/h;

    invoke-direct {v0}, Lw0/h;-><init>()V

    iput-wide v1, v0, Lw0/p;->c:J

    iput-object v3, v0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Lw0/h;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh0/c0;->f(Landroid/view/View;I)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    iget v1, v0, Lcom/google/android/material/internal/c;->c:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    sget-object v2, Le1/a;->b:Lp0/b;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    new-instance v2, Lf1/d;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lf1/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v0, v0, Lcom/google/android/material/internal/c;->c:F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ly1/n;

    invoke-virtual {v0, v1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    int-to-float v1, v1

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    iget-object v6, v0, Ly1/h;->a:Ly1/g;

    iput v1, v6, Ly1/g;->k:F

    invoke-virtual {v0}, Ly1/h;->invalidateSelf()V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly1/h;->s(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-ne v1, v4, :cond_4

    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Ly1/l;->e0(Landroid/content/Context;II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    invoke-static {v1, v0}, Lz/a;->b(II)I

    move-result v0

    :cond_4
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-eqz v1, :cond_7

    move v3, v4

    :cond_7
    if-eqz v3, :cond_8

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    throw p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/c;->d(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    invoke-virtual {p0, p1}, Ly1/h;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/c;->p([I)Z

    move-result v1

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    sget-object v3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:Z

    return-void
.end method

.method public final e()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->e()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->e()F

    move-result p0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    instance-of p0, p0, Lcom/google/android/material/textfield/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBaseline()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getBoxBackground()Ly1/h;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    return-object p0
.end method

.method public getBoxBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    return p0
.end method

.method public getBoxBackgroundMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    return p0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    return p0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    iget-object v0, p0, Ly1/h;->a:Ly1/g;

    iget-object v0, v0, Ly1/g;->a:Ly1/n;

    iget-object v0, v0, Ly1/n;->h:Ly1/c;

    invoke-virtual {p0}, Ly1/h;->h()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    iget-object v0, p0, Ly1/h;->a:Ly1/g;

    iget-object v0, v0, Ly1/g;->a:Ly1/n;

    iget-object v0, v0, Ly1/n;->g:Ly1/c;

    invoke-virtual {p0}, Ly1/h;->h()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    iget-object v0, p0, Ly1/h;->a:Ly1/g;

    iget-object v0, v0, Ly1/g;->a:Ly1/n;

    iget-object v0, v0, Ly1/n;->f:Ly1/c;

    invoke-virtual {p0}, Ly1/h;->h()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    invoke-virtual {p0}, Ly1/h;->j()F

    move-result p0

    return p0
.end method

.method public getBoxStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    return p0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBoxStrokeWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    return p0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    return p0
.end method

.method public getCounterMaxLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    return p0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getEndIconMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    return p0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getErrorCurrentTextColors()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->g()I

    move-result p0

    return p0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getErrorTextCurrentColor()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->g()I

    move-result p0

    return p0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->e()F

    move-result p0

    return p0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    iget-object v0, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getMaxWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    return p0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    return p0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final h()V
    .locals 6

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ly1/n;

    if-eq v0, v1, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    instance-of v0, v0, Lcom/google/android/material/textfield/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/textfield/g;

    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/g;-><init>(Ly1/n;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    goto :goto_0

    :cond_0
    new-instance v0, Ly1/h;

    invoke-direct {v0, v3}, Ly1/h;-><init>(Ly1/n;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    :goto_0
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ly1/h;

    invoke-direct {v0, v3}, Ly1/h;-><init>(Ly1/n;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    new-instance v0, Ly1/h;

    invoke-direct {v0}, Ly1/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    sget-object v3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$dimen;->material_font_2_0_box_collapsed_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$dimen;->material_font_1_3_box_collapsed_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-eq v0, v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/a0;->f(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-static {v3}, Lh0/a0;->e(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lh0/a0;->k(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/a0;->f(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-static {v3}, Lh0/a0;->e(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lh0/a0;->k(Landroid/view/View;IIII)V

    :cond_a
    :goto_4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    :cond_b
    return-void
.end method

.method public final i()V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    iget-object v4, v3, Lcom/google/android/material/internal/c;->C:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/c;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/material/internal/c;->E:Z

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x5

    iget-object v7, v3, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    const v8, 0x800005

    const/4 v9, 0x1

    const/16 v10, 0x11

    if-eq v2, v10, :cond_6

    and-int/lit8 v11, v2, 0x7

    if-ne v11, v9, :cond_1

    goto :goto_2

    :cond_1
    and-int v11, v2, v8

    if-eq v11, v8, :cond_4

    and-int/lit8 v11, v2, 0x5

    if-ne v11, v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    iget v12, v3, Lcom/google/android/material/internal/c;->a0:F

    goto :goto_3

    :cond_3
    iget v11, v7, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    iget v11, v7, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v11, v11

    goto :goto_4

    :cond_5
    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    iget v12, v3, Lcom/google/android/material/internal/c;->a0:F

    goto :goto_3

    :cond_6
    :goto_2
    int-to-float v11, v1

    div-float/2addr v11, v5

    iget v12, v3, Lcom/google/android/material/internal/c;->a0:F

    div-float/2addr v12, v5

    :goto_3
    sub-float/2addr v11, v12

    :goto_4
    iput v11, v0, Landroid/graphics/RectF;->left:F

    iget v12, v7, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iput v12, v0, Landroid/graphics/RectF;->top:F

    if-eq v2, v10, :cond_c

    and-int/lit8 v10, v2, 0x7

    if-ne v10, v9, :cond_7

    goto :goto_7

    :cond_7
    and-int v1, v2, v8

    if-eq v1, v8, :cond_a

    and-int/lit8 v1, v2, 0x5

    if-ne v1, v6, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    iget v1, v7, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_9
    iget v1, v3, Lcom/google/android/material/internal/c;->a0:F

    add-float/2addr v1, v11

    goto :goto_8

    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    iget v1, v3, Lcom/google/android/material/internal/c;->a0:F

    add-float/2addr v1, v11

    goto :goto_8

    :cond_b
    iget v1, v7, Landroid/graphics/Rect;->right:I

    :goto_6
    int-to-float v1, v1

    goto :goto_8

    :cond_c
    :goto_7
    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, v3, Lcom/google/android/material/internal/c;->a0:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    :goto_8
    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Lcom/google/android/material/internal/c;->e()F

    move-result v1

    add-float/2addr v1, v12

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    check-cast p0, Lcom/google/android/material/textfield/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/material/textfield/g;->w(FFFF)V

    return-void
.end method

.method public final k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    sget p2, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/google/android/material/R$color;->design_error:I

    sget-object v0, Lx/f;->a:Ljava/lang/Object;

    invoke-static {p0, p2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final n(I)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x1

    if-le p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v7, :cond_2

    sget v7, Lcom/google/android/material/R$string;->character_counter_overflowed_content_description:I

    goto :goto_1

    :cond_2
    sget v7, Lcom/google/android/material/R$string;->character_counter_content_description:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_3
    sget-object v1, Lf0/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget v5, Lf0/j;->a:I

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-eqz v2, :cond_5

    sget-object v1, Lf0/c;->g:Lf0/c;

    goto :goto_3

    :cond_5
    sget-object v1, Lf0/c;->f:Lf0/c;

    :goto_3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$string;->character_counter_pattern:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {p1, v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lf0/c;->c:Lf0/g;

    invoke-virtual {v1, p1, v3}, Lf0/c;->c(Ljava/lang/CharSequence;Lf0/g;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eq v0, p1, :cond_7

    invoke-virtual {p0, v4, v4}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    :cond_7
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroid/widget/TextView;I)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_14

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/d;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ly1/h;

    if-eqz p1, :cond_0

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    sub-int p4, p3, p4

    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p5, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    iget p4, p3, Lcom/google/android/material/internal/c;->m:F

    cmpl-float p4, p4, p1

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    iput p1, p3, Lcom/google/android/material/internal/c;->m:F

    invoke-virtual {p3, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p4, p1, -0x71

    or-int/lit8 p4, p4, 0x30

    invoke-virtual {p3, p4}, Lcom/google/android/material/internal/c;->l(I)V

    iget p4, p3, Lcom/google/android/material/internal/c;->k:I

    if-eq p4, p1, :cond_2

    iput p1, p3, Lcom/google/android/material/internal/c;->k:I

    invoke-virtual {p3, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_13

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_3

    move p1, p4

    goto :goto_0

    :cond_3
    move p1, p5

    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    if-eq v0, p4, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v3, v0

    :cond_4
    iput v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/2addr v0, p1

    :cond_5
    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_6
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_7
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v3, v0

    :cond_8
    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/2addr v0, p1

    :cond_9
    iput v0, v1, Landroid/graphics/Rect;->right:I

    :goto_1
    iget p1, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p3, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-ne v5, p1, :cond_a

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ne v5, v0, :cond_a

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v2, :cond_a

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v3, :cond_a

    move v5, p4

    goto :goto_2

    :cond_a
    move v5, p5

    :goto_2
    if-nez v5, :cond_b

    invoke-virtual {v4, p1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p4, p3, Lcom/google/android/material/internal/c;->K:Z

    invoke-virtual {p3}, Lcom/google/android/material/internal/c;->h()V

    :cond_b
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_12

    iget-object p1, p3, Lcom/google/android/material/internal/c;->M:Landroid/text/TextPaint;

    iget v0, p3, Lcom/google/android/material/internal/c;->m:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p3, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p3, Lcom/google/android/material/internal/c;->Y:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    neg-float p1, p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-ne v0, p4, :cond_c

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    if-gt v0, p4, :cond_c

    move v0, p4

    goto :goto_3

    :cond_c
    move v0, p5

    :goto_3
    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_4

    :cond_d
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    :goto_4
    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-ne v0, p4, :cond_e

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    if-gt v0, p4, :cond_e

    move v0, p4

    goto :goto_5

    :cond_e
    move v0, p5

    :goto_5
    if-eqz v0, :cond_f

    iget p2, v1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    float-to-int p1, p2

    goto :goto_6

    :cond_f
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    :goto_6
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p3, Lcom/google/android/material/internal/c;->h:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ne v3, p2, :cond_10

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v0, :cond_10

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v1, :cond_10

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, p1, :cond_10

    move v3, p4

    goto :goto_7

    :cond_10
    move v3, p5

    :goto_7
    if-nez v3, :cond_11

    invoke-virtual {v2, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p4, p3, Lcom/google/android/material/internal/c;->K:Z

    invoke-virtual {p3}, Lcom/google/android/material/internal/c;->h()V

    :cond_11
    invoke-virtual {p3, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    goto :goto_8

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_14
    :goto_8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    new-instance v0, Lcom/google/android/material/textfield/q;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/textfield/q;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->a:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/material/textfield/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/q;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->g:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->c:Ljava/lang/CharSequence;

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->d:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->g:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public final p()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    if-eq v2, v0, :cond_4

    :cond_3
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    if-eq v2, v7, :cond_6

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    aget-object v8, v0, v3

    aget-object v9, v0, v5

    aget-object v0, v0, v6

    invoke-virtual {v2, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    aget-object v7, v0, v3

    aget-object v8, v0, v5

    aget-object v0, v0, v6

    invoke-virtual {v2, v4, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    if-eqz v2, :cond_7

    move v2, v3

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_a

    move v2, v3

    goto :goto_4

    :cond_a
    move v2, v1

    :goto_4
    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    add-int/2addr v2, v7

    :cond_b
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_c

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    if-eq v8, v2, :cond_c

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    aget-object v1, v4, v1

    aget-object v2, v4, v3

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    aget-object v4, v4, v6

    invoke-virtual {v0, v1, v2, p0, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_c
    if-nez v7, :cond_d

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_d
    aget-object v2, v4, v5

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    if-eq v2, v5, :cond_e

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    aget-object v0, v4, v1

    aget-object v1, v4, v3

    aget-object v2, v4, v6

    invoke-virtual {p0, v0, v1, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_e
    move v3, v0

    goto :goto_6

    :cond_f
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v5, v2, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    if-ne v5, v7, :cond_10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v5, v2, v3

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v5, v7, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_10
    move v3, v0

    :goto_5
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/graphics/drawable/ColorDrawable;

    :goto_6
    move v0, v3

    :cond_11
    return v0
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/b1;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/o;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/material/textfield/o;->g()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v1}, Landroidx/appcompat/widget/c0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v1}, Landroidx/appcompat/widget/c0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    move-result p0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq p0, v2, :cond_0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final s(ZZ)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->e()Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Lcom/google/android/material/internal/c;->k(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    iget-object v9, v8, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    if-eq v9, v7, :cond_2

    iput-object v7, v8, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v3}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_2
    const/4 v7, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    const v5, -0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    :goto_2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/android/material/internal/c;->k(Landroid/content/res/ColorStateList;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v5, v8, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    if-eq v5, v0, :cond_8

    iput-object v0, v8, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v3}, Lcom/google/android/material/internal/c;->i(Z)V

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_6

    iget-object v0, v5, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v7

    :goto_3
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/c;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/c;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/c;->k(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_4
    if-nez v1, :cond_f

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez p2, :cond_15

    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 p2, 0x0

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_5

    :cond_c
    invoke-virtual {v8, p2}, Lcom/google/android/material/internal/c;->n(F)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    check-cast p1, Lcom/google/android/material/textfield/g;

    iget-object p1, p1, Lcom/google/android/material/textfield/g;->y:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    check-cast p1, Lcom/google/android/material/textfield/g;

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/material/textfield/g;->w(FFFF)V

    :cond_d
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_e

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Lw0/h;

    invoke-static {p1, p2}, Lw0/s;->a(Landroid/view/ViewGroup;Lw0/p;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    goto :goto_9

    :cond_f
    :goto_6
    if-nez p2, :cond_10

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-eqz p2, :cond_15

    :cond_10
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_7

    :cond_12
    invoke-virtual {v8, p2}, Lcom/google/android/material/internal/c;->n(F)V

    :goto_7
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    :cond_13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez p1, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_8
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    :cond_15
    :goto_9
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lx/f;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lx/d;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    const v0, 0x101009c

    const v2, 0x101009e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    const v0, 0x1010367

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    :cond_1
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    const v0, 0x1010367

    const v2, 0x101009e

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    const v0, 0x101009c

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eq v0, p1, :cond_4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    if-eqz p1, :cond_2

    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/google/android/material/R$id;->textinput_counter:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/o;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_textinput_counter_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/o;->i(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    :cond_4
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    :cond_2
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setEndIconMode(I)V
    .locals 8

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/t;

    check-cast v2, Lcom/google/android/material/textfield/b;

    iget v4, v2, Lcom/google/android/material/textfield/b;->a:I

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/m;

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    new-instance v4, Landroidx/appcompat/widget/k;

    const/16 v7, 0xb

    invoke-direct {v4, v7, v2, v3}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    check-cast v6, Lcom/google/android/material/textfield/l;

    iget-object v4, v6, Lcom/google/android/material/textfield/l;->f:Landroidx/appcompat/widget/a2;

    if-ne v2, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v5}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    new-instance v4, Landroidx/appcompat/widget/k;

    const/16 v7, 0x9

    invoke-direct {v4, v7, v2, v3}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    check-cast v6, Lcom/google/android/material/textfield/e;

    iget-object v4, v6, Lcom/google/android/material/textfield/e;->f:Landroidx/appcompat/widget/a2;

    if-ne v2, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    iget-object v2, v6, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    iget-object v4, v6, Lcom/google/android/material/textfield/e;->f:Landroidx/appcompat/widget/a2;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    if-ne v0, v3, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    new-instance v3, Landroidx/appcompat/widget/k;

    const/16 v5, 0xc

    invoke-direct {v3, v5, v2, v4}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/m;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/m;->a()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current box background mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported by the end icon mode "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    :cond_1
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-boolean v1, v0, Lcom/google/android/material/textfield/o;->k:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->c()V

    iput-object p1, v0, Lcom/google/android/material/textfield/o;->j:Ljava/lang/CharSequence;

    iget-object p0, v0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p0, v0, Lcom/google/android/material/textfield/o;->h:I

    if-eq p0, v2, :cond_2

    iput v2, v0, Lcom/google/android/material/textfield/o;->i:I

    :cond_2
    iget v1, v0, Lcom/google/android/material/textfield/o;->i:I

    iget-object v2, v0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/material/textfield/o;->j(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1, p0, v1}, Lcom/google/android/material/textfield/o;->k(ZII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->h()V

    :goto_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->m:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->k:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->c()V

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->u:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget v2, p0, Lcom/google/android/material/textfield/o;->n:I

    iput v2, p0, Lcom/google/android/material/textfield/o;->n:I

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroid/widget/TextView;I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->o:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/textfield/o;->o:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/material/textfield/o;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lh0/c0;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/o;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->h()V

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/textfield/o;->i(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->k:Z

    :goto_1
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-boolean p1, p1, Lcom/google/android/material/textfield/o;->k:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iput p1, p0, Lcom/google/android/material/textfield/o;->n:I

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->o:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    if-eqz v0, :cond_0

    iget-boolean p1, v1, Lcom/google/android/material/textfield/o;->q:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/material/textfield/o;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/material/textfield/o;->c()V

    iput-object p1, v1, Lcom/google/android/material/textfield/o;->p:Ljava/lang/CharSequence;

    iget-object p0, v1, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p0, v1, Lcom/google/android/material/textfield/o;->h:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    iput v0, v1, Lcom/google/android/material/textfield/o;->i:I

    :cond_2
    iget v0, v1, Lcom/google/android/material/textfield/o;->i:I

    iget-object v2, v1, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/material/textfield/o;->j(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v1, p1, p0, v0}, Lcom/google/android/material/textfield/o;->k(ZII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->t:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->q:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/o;->u:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Lh0/c0;->f(Landroid/view/View;I)V

    iget v1, p0, Lcom/google/android/material/textfield/o;->s:I

    iput v1, p0, Lcom/google/android/material/textfield/o;->s:I

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->t:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/google/android/material/textfield/o;->t:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/o;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->c()V

    iget v1, p0, Lcom/google/android/material/textfield/o;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/material/textfield/o;->i:I

    :cond_5
    iget v2, p0, Lcom/google/android/material/textfield/o;->i:I

    iget-object v3, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/textfield/o;->j(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/material/textfield/o;->k(ZII)V

    iget-object v1, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/o;->i(Landroid/widget/TextView;I)V

    iput-object v4, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->q:Z

    :goto_1
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iput p1, p0, Lcom/google/android/material/textfield/o;->s:I

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/c;->j(I)V

    iget-object p1, v0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    :cond_0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/c;->k(Landroid/content/res/ColorStateList;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    :cond_1
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Z

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Z

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v1, v2, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    :cond_2
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/r;)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lh0/q0;->j(Landroid/view/View;Lh0/b;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 5
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_8

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Lcom/google/android/material/internal/c;

    iget-object v1, v0, Lcom/google/android/material/internal/c;->B:Lv1/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, v1, Lv1/b;->c:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/google/android/material/internal/c;->A:Lv1/b;

    if-eqz v4, :cond_2

    iput-boolean v2, v4, Lv1/b;->c:Z

    :cond_2
    iget-object v4, v0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    if-eq v4, p1, :cond_3

    iput-object p1, v0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    iget-object v1, v0, Lcom/google/android/material/textfield/o;->u:Landroid/graphics/Typeface;

    if-eq p1, v1, :cond_7

    iput-object p1, v0, Lcom/google/android/material/textfield/o;->u:Landroid/graphics/Typeface;

    iget-object v1, v0, Lcom/google/android/material/textfield/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    iget-object v0, v0, Lcom/google/android/material/textfield/o;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_8
    return-void
.end method

.method public final t(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lw0/h;

    invoke-static {v0, p1}, Lw0/s;->a(Landroid/view/ViewGroup;Lw0/p;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Lw0/h;

    invoke-static {v0, p1}, Lw0/s;->a(Landroid/view/ViewGroup;Lw0/p;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/a0;->f(Landroid/view/View;)I

    move-result v1

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1, v2, v3, p0}, Lh0/a0;->k(Landroid/view/View;IIII)V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    return-void
.end method

.method public final w(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    const v2, 0x1010367

    const v3, 0x101009e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    const v4, 0x10102fe

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/a0;->e(Landroid/view/View;)I

    move-result v1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2, v3, v1, p0}, Lh0/a0;->k(Landroid/view/View;IIII)V

    return-void
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/m;->c(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    return-void
.end method

.method public final z()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lcom/google/android/material/textfield/o;

    if-nez v4, :cond_5

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->g()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_8

    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_4

    :cond_b
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-boolean v4, v5, Lcom/google/android/material/textfield/o;->k:Z

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->e()Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v2

    :cond_c
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, v4, v1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/google/android/material/textfield/l;

    if-eqz v1, :cond_e

    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->g()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    :cond_e
    :goto_5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    goto :goto_6

    :cond_f
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    :goto_6
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    if-eq v4, v1, :cond_11

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_11

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ly1/h;

    check-cast v1, Lcom/google/android/material/textfield/g;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/google/android/material/textfield/g;->w(FFFF)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    :cond_11
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    if-ne v1, v2, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    goto :goto_7

    :cond_12
    if-eqz v3, :cond_13

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    goto :goto_7

    :cond_13
    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    goto :goto_7

    :cond_14
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    :cond_15
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    :cond_16
    :goto_8
    return-void
.end method
