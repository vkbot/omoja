.class public Lcom/mega/engineeringmode/ui/MegaSwitch;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field public static final M:[I

.field public static final N:Lcom/mega/engineeringmode/ui/MegaSwitch$a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public B:Landroid/animation/ObjectAnimator;

.field public final C:Landroid/graphics/Rect;

.field public final D:I

.field public final E:F

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Z

.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Z

.field public j:Z

.field public k:I

.field public final l:I

.field public m:Z

.field public n:I

.field public final o:I

.field public p:F

.field public q:F

.field public final r:Landroid/view/VelocityTracker;

.field public final s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f04039d

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/mega/engineeringmode/ui/MegaSwitch;->M:[I

    new-instance v0, Lcom/mega/engineeringmode/ui/MegaSwitch$a;

    const-string/jumbo v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mega/engineeringmode/ui/MegaSwitch;->N:Lcom/mega/engineeringmode/ui/MegaSwitch$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f0403bb

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->b:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->c:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->d:Z

    iput-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->e:Z

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->g:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->h:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->i:Z

    iput-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->j:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->r:Landroid/view/VelocityTracker;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->L:Z

    sget-object v2, Ld1/c;->c:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->E:F

    const/16 v0, 0xc

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->D:I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->k:I

    const/16 v2, 0xb

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->l:I

    const/4 v2, 0x4

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->m:Z

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->b:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->d:Z

    :cond_2
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->f(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iget-object v3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->c:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v1, :cond_3

    iput-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->c:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->e:Z

    :cond_3
    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->e:Z

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->b()V

    :cond_5
    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->g:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->i:Z

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->f(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, v1, :cond_7

    iput-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->h:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->j:Z

    :cond_7
    iget-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->i:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->j:Z

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->c()V

    :cond_9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->o:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->s:I

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/mega/engineeringmode/ui/MegaSwitch;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setThumbPosition(F)V

    return-void
.end method

.method public static d()Z
    .locals 3

    sget-object v0, Ln2/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "app == null return"

    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public static f(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTargetCheckedState()Z
    .locals 1

    iget p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getThumbOffset()I
    .locals 2

    invoke-static {}, Lcom/mega/engineeringmode/ui/MegaSwitch;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    :goto_0
    invoke-direct {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->getThumbScrollRange()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getThumbScrollRange()I
    .locals 3

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->t:I

    iget p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->z:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v2, p0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setThumbPosition(F)V
    .locals 0

    iput p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->e:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->j:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->v:I

    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->w:I

    iget v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->x:I

    iget v3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->y:I

    invoke-direct {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->getThumbOffset()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v6, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    iget v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->z:I

    add-int/2addr v4, v2

    iget v2, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget v5, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->D:I

    if-eqz v2, :cond_1

    sub-int v2, v0, v5

    sub-int v5, v4, v5

    goto :goto_0

    :cond_1
    add-int v2, v0, v5

    add-int/2addr v5, v4

    :goto_0
    iget-object v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v1, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    iget v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->K:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->I:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->H:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->G:I

    :goto_0
    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->F:I

    if-eqz v1, :cond_1

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v1

    iget v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->F:I

    invoke-virtual {v1, v2, v0}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_1
    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->J:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-static {}, Lcom/mega/engineeringmode/ui/MegaSwitch;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->t:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->l:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-static {}, Lcom/mega/engineeringmode/ui/MegaSwitch;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->t:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->l:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->b:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->c:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->h:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->M:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->m:Z

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, p0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p0

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p0

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget p4, p1, Landroidx/core/graphics/Insets;->left:I

    iget p5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    move p4, p2

    :goto_1
    invoke-static {}, Lcom/mega/engineeringmode/ui/MegaSwitch;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->t:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    iget p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->t:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget p4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->u:I

    add-int/2addr p4, p2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    iget p2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->u:I

    sub-int p2, p4, p2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iget p2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->u:I

    div-int/lit8 p5, p2, 0x2

    sub-int/2addr p4, p5

    add-int/2addr p2, p4

    move v0, p4

    move p4, p2

    move p2, v0

    :goto_3
    iput p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->v:I

    iput p2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->w:I

    iput p4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->y:I

    iput p3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->x:I

    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v0

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->z:I

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v1

    move v4, v0

    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v7, v6, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v6, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    iget v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->k:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->t:I

    iput v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->u:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->o:I

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v1, v3, :cond_9

    if-eq v1, v6, :cond_0

    if-eq v1, v4, :cond_9

    goto/16 :goto_5

    :cond_0
    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->n:I

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->getThumbScrollRange()I

    move-result v0

    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->p:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v1, v5

    if-lez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/mega/engineeringmode/ui/MegaSwitch;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v1, v1

    :cond_4
    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    add-float/2addr v0, v1

    cmpg-float v1, v0, v5

    if-gez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_1
    iget v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->p:F

    invoke-direct {p0, v5}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setThumbPosition(F)V

    :cond_6
    return v3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->p:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v2, v2

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_8

    iget v4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->q:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_13

    :cond_8
    iput v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->p:F

    iput v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->q:F

    return v3

    :cond_9
    iget v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->n:I

    const/4 v2, 0x0

    if-ne v1, v6, :cond_10

    iput v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->n:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_2

    :cond_a
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v1, :cond_e

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v7, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->s:I

    int-to-float v7, v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_d

    invoke-static {}, Lcom/mega/engineeringmode/ui/MegaSwitch;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b

    :goto_3
    move v0, v3

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    cmpl-float v0, v0, v5

    if-lez v0, :cond_b

    goto :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->getTargetCheckedState()Z

    move-result v0

    goto :goto_4

    :cond_e
    move v0, v6

    :goto_4
    if-eq v0, v6, :cond_f

    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_f
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_10
    iput v2, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->n:I

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_12

    goto :goto_5

    :cond_12
    invoke-direct {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->getThumbOffset()I

    move-result v4

    iget-object v5, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->C:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v5, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->w:I

    sub-int/2addr v5, v2

    iget v7, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->v:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v2

    iget v4, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->z:I

    add-int/2addr v4, v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v8

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    add-int/2addr v4, v2

    iget v6, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->y:I

    add-int/2addr v6, v2

    int-to-float v2, v7

    cmpl-float v2, v0, v2

    if-lez v2, :cond_13

    int-to-float v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_13

    int-to-float v2, v5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_13

    int-to-float v2, v6

    cmpg-float v2, v1, v2

    if-gez v2, :cond_13

    iput v3, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->n:I

    iput v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->p:F

    iput v1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->q:F

    :cond_13
    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-boolean v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->L:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/mega/engineeringmode/ui/MegaSwitch;->N:Lcom/mega/engineeringmode/ui/MegaSwitch$a;

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0, v1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setThumbPosition(F)V

    :goto_0
    return-void
.end method

.method public setDisabledAnimateThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->L:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->E:F

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->k:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->d:Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->b()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->e:Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->b()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->g:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->i:Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->c()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->h:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->j:Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->c()V

    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/MegaSwitch;->f:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
