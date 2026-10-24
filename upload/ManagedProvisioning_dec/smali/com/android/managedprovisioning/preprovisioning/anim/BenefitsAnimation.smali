.class public Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;
.super Ljava/lang/Object;
.source "BenefitsAnimation.java"


# static fields
.field private static final ID_ANIMATION_TARGET:[[I

.field private static final SLIDE_CAPTION_TEXT_VIEWS:[I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mStopped:Z

.field private mTextAnimation:Landroid/animation/Animator;

.field private final mTopAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 55
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->ID_ANIMATION_TARGET:[[I

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->SLIDE_CAPTION_TEXT_VIEWS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01003d
        0x7f0901b5
    .end array-data

    :array_1
    .array-data 4
        0x7f01003e
        0x7f0901b6
    .end array-data

    :array_2
    .array-data 4
        0x7f01003f
        0x7f0901b7
    .end array-data

    :array_3
    .array-data 4
        0x7f010040
        0x7f0901b8
    .end array-data

    :array_4
    .array-data 4
        0x7f0901b5
        0x7f0901b6
        0x7f0901b7
        0x7f0901b8
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ILcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/managedprovisioning/model/CustomizationParams;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 88
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    .line 89
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->applySlideCaptions(Ljava/util/List;)V

    .line 90
    invoke-direct {p0, p3}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->applyContentDescription(I)V

    .line 92
    invoke-direct {p0, p4}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->setTopInfoDrawable(Lcom/android/managedprovisioning/model/CustomizationParams;)V

    const p1, 0x7f090053

    .line 94
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->extractAnimationFromImageView(I)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTopAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 97
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/android/managedprovisioning/preprovisioning/anim/-$$Lambda$BenefitsAnimation$NvEqH-mo_opVTn0t7xACf5y40rQ;

    invoke-direct {p3, p0}, Lcom/android/managedprovisioning/preprovisioning/anim/-$$Lambda$BenefitsAnimation$NvEqH-mo_opVTn0t7xACf5y40rQ;-><init>(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/managedprovisioning/preprovisioning/anim/-$$Lambda$BenefitsAnimation$XYIy_K716ikNCIb1U6EyKDRDMMc;

    invoke-direct {p2, p0}, Lcom/android/managedprovisioning/preprovisioning/anim/-$$Lambda$BenefitsAnimation$XYIy_K716ikNCIb1U6EyKDRDMMc;-><init>(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong number of slide captions. Expected: 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Landroid/animation/Animator;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTextAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mStopped:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTopAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private adjustToScreenSize()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->setupLabelDimensions()V

    .line 142
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 143
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44870000    # 1080.0f

    div-float/2addr v1, v2

    .line 147
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 150
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v1, v3

    .line 155
    iget-object v3, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090114

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 156
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090187

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v3, v1, :cond_1

    .line 158
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v1

    sub-int/2addr v4, v3

    .line 159
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070105

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-lt v4, p0, :cond_1

    .line 164
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private applyContentDescription(I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    .line 293
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private applySlideCaptions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->SLIDE_CAPTION_TEXT_VIEWS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    .line 286
    iget-object v5, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    add-int/lit8 v5, v3, 0x1

    .line 287
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v3, v6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 286
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assembleTextAnimation()Landroid/animation/AnimatorSet;
    .locals 8

    .line 234
    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->ID_ANIMATION_TARGET:[[I

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    move v4, v3

    .line 235
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 236
    aget-object v5, v0, v4

    .line 237
    iget-object v6, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    aget v7, v5, v3

    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    aput-object v6, v1, v4

    .line 238
    aget-object v6, v1, v4

    iget-object v7, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    aget v5, v5, v2

    invoke-virtual {v7, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_0
    array-length v0, v0

    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    aput-object p0, v1, v0

    .line 242
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 243
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method private chainAnimations()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTopAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;-><init>(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    return-void
.end method

.method private extractAnimationFromImageView(I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 299
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "translationX"

    .line 274
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x3e9

    .line 275
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getTranslationAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 10

    .line 251
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 252
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 253
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 254
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const v5, 0x10c000b

    .line 256
    invoke-direct {p0, v2, v4, v4, v5}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-int v0, v0

    .line 258
    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    const v7, 0x10c000d

    invoke-direct {p0, v2, v4, v6, v7}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-direct {p0, v2, v6, v6, v5}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v4, v0

    .line 262
    invoke-direct {p0, v2, v6, v4, v7}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-direct {p0, v2, v4, v4, v5}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-double v5, v0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v8

    double-to-int v0, v5

    int-to-float v0, v0

    .line 266
    invoke-direct {p0, v2, v4, v0, v7}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->getTranslationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v1
.end method

.method public static synthetic lambda$NvEqH-mo_opVTn0t7xACf5y40rQ(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->adjustToScreenSize()V

    return-void
.end method

.method public static synthetic lambda$XYIy_K716ikNCIb1U6EyKDRDMMc(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->prepareAnimations()V

    return-void
.end method

.method private prepareAnimations()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->assembleTextAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTextAnimation:Landroid/animation/Animator;

    .line 104
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->chainAnimations()V

    return-void
.end method

.method private setTopInfoDrawable(Lcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 3

    .line 108
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;

    invoke-direct {v2}, Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;)V

    iget p1, p1, Lcom/android/managedprovisioning/model/CustomizationParams;->mainColor:I

    .line 109
    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;->findTheme(I)I

    move-result p1

    .line 111
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 112
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 115
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f081d3b

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 116
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupLabelDimensions()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0901b9

    .line 174
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 175
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 176
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0901ba

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 180
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v3, v0

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 181
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    div-int/lit8 v1, v0, 0x2

    .line 186
    sget-object v2, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->SLIDE_CAPTION_TEXT_VIEWS:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget v6, v2, v4

    .line 187
    iget-object v7, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 188
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 189
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v7, v5

    .line 191
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mStopped:Z

    .line 123
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTopAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mStopped:Z

    .line 129
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->mTopAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method
