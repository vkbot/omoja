.class Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;
.super Ljava/lang/Object;
.source "TransitionAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;,
        Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;,
        Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;,
        Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;
    }
.end annotation


# static fields
.field static final FULLY_MANAGED_DEVICE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WORK_PROFILE_ON_ORG_OWNED_DEVICE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WORK_PROFILE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

.field private mCallback:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;

.field private final mCrossFadeHelper:Lcom/android/managedprovisioning/common/CrossFadeHelper;

.field private mCurrentTransitionIndex:I

.field private final mProvisioningModeWrapper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

.field private mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

.field private final mShowAnimations:Z

.field private final mStartNextTransitionRunnable:Ljava/lang/Runnable;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 52
    new-instance v0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    new-instance v3, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v4, 0x7f0d00df

    const v5, 0x7f081d24

    invoke-direct {v3, v4, v5}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v6, 0x7f0d00e0

    const v7, 0x7f081d20

    invoke-direct {v3, v6, v7}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(II)V

    const/4 v6, 0x1

    aput-object v3, v2, v6

    new-instance v3, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v7, 0x7f0d00e1

    const v8, 0x7f081d13

    invoke-direct {v3, v7, v8}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(II)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    const v3, 0x7f0d00e2

    invoke-direct {v0, v2, v3}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;-><init>([Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;I)V

    sput-object v0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->WORK_PROFILE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    .line 63
    new-instance v0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    new-array v2, v7, [Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    new-instance v3, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v8, 0x7f0d007b

    const v9, 0x7f081d01

    invoke-direct {v3, v8, v9}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(II)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v11, 0x7f0d007c

    const v12, 0x7f081d13

    const v13, 0x7f0d007d

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(IIIZZ)V

    aput-object v3, v2, v6

    const v3, 0x7f0d007e

    invoke-direct {v0, v2, v3}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;-><init>([Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;I)V

    sput-object v0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->FULLY_MANAGED_DEVICE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    .line 75
    new-instance v0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    new-array v1, v1, [Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    new-instance v2, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v3, 0x7f0d004e

    invoke-direct {v2, v3, v5}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v9, 0x7f0d004f

    const v10, 0x7f081d21

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(IIIZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    const v3, 0x7f0d0050

    const v4, 0x7f081d12

    invoke-direct {v2, v3, v4}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(II)V

    aput-object v2, v1, v7

    const v2, 0x7f0d0051

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;-><init>([Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;I)V

    sput-object v0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->WORK_PROFILE_ON_ORG_OWNED_DEVICE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    return-void
.end method

.method constructor <init>(ILcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$UER7AjIUJkl_08hhXjSQa9-KW3I;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$UER7AjIUJkl_08hhXjSQa9-KW3I;-><init>(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mStartNextTransitionRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mUiThreadHandler:Landroid/os/Handler;

    .line 104
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    .line 105
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCallback:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->getProvisioningModeWrapper(I)Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mProvisioningModeWrapper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    .line 107
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->getCrossFadeHelper()Lcom/android/managedprovisioning/common/CrossFadeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCrossFadeHelper:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    .line 108
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->shouldShowAnimations()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mShowAnimations:Z

    .line 110
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->applyContentDescription()V

    .line 111
    iget p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->updateUiValues(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    return p0
.end method

.method static synthetic access$008(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)I
    .locals 2

    .line 45
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mStartNextTransitionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private applyContentDescription()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$400(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 248
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mProvisioningModeWrapper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    iget p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;->summary:I

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getTransitionForIndex(I)Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;
    .locals 1

    .line 222
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mProvisioningModeWrapper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;->transitions:[Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    .line 223
    array-length v0, p0

    rem-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private shouldShowAnimations()Z
    .locals 1

    .line 241
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$400(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method areAllTransitionsShown()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mProvisioningModeWrapper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;->transitions:[Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    array-length p0, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method clean()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->stopCurrentAnimatedDrawable()V

    .line 126
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCrossFadeHelper:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->cleanup()V

    .line 127
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mUiThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iput-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mUiThreadHandler:Landroid/os/Handler;

    .line 129
    iput-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCallback:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;

    return-void
.end method

.method getCrossFadeHelper()Lcom/android/managedprovisioning/common/CrossFadeHelper;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 134
    new-instance v0, Lcom/android/managedprovisioning/common/CrossFadeHelper;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    .line 135
    invoke-virtual {v1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->asList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;

    invoke-direct {v2, p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;-><init>(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)V

    const/16 p0, 0x1f4

    invoke-direct {v0, v1, p0, v2}, Lcom/android/managedprovisioning/common/CrossFadeHelper;-><init>(Ljava/util/List;ILcom/android/managedprovisioning/common/CrossFadeHelper$Callback;)V

    return-object v0
.end method

.method getProvisioningModeWrapper(I)Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    .line 235
    sget-object p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->WORK_PROFILE_ON_ORG_OWNED_DEVICE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    return-object p0

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected provisioning mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_1
    sget-object p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->FULLY_MANAGED_DEVICE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    return-object p0

    .line 231
    :cond_2
    sget-object p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->WORK_PROFILE_WRAPPER:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    return-object p0
.end method

.method start()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mStartNextTransitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->updateUiValues(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->startCurrentAnimatedDrawable()V

    return-void
.end method

.method startCurrentAnimatedDrawable()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mShowAnimations:Z

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$300(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez v0, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    .line 174
    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$300(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 175
    iget v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->getTransitionForIndex(I)Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->shouldLoop:Z

    .line 176
    new-instance v2, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-direct {v2, v0, v1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;Z)V

    iput-object v2, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    .line 177
    invoke-virtual {v2}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    return-void
.end method

.method startNextAnimation()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 156
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCurrentTransitionIndex:I

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mProvisioningModeWrapper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;

    iget-object v1, v1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;->transitions:[Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 157
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCallback:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;

    if-eqz p0, :cond_0

    .line 158
    invoke-interface {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;->onAllTransitionsShown()V

    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mCrossFadeHelper:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->start()V

    return-void
.end method

.method stopCurrentAnimatedDrawable()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mShowAnimations:Z

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$300(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez v0, :cond_1

    return-void

    .line 188
    :cond_1
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->stop()V

    return-void
.end method

.method updateUiValues(I)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->getTransitionForIndex(I)Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$400(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->header:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$300(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/ImageView;

    move-result-object v0

    .line 199
    iget-boolean v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mShowAnimations:Z

    if-eqz v1, :cond_0

    .line 200
    iget v1, p1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$500(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;

    move-result-object v0

    .line 206
    iget v1, p1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->subHeader:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget v1, p1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->subHeader:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_1
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->mAnimationComponents:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-static {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->access$600(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;

    move-result-object p0

    .line 214
    iget-boolean p1, p1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->showContactAdmin:Z

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 217
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method
