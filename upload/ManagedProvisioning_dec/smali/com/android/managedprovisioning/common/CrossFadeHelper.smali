.class public Lcom/android/managedprovisioning/common/CrossFadeHelper;
.super Ljava/lang/Object;
.source "CrossFadeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;
    }
.end annotation


# instance fields
.field private final mAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mCallback:Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;

.field private final mDuration:I

.field private final mFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/android/managedprovisioning/common/CrossFadeHelper$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I",
            "Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/managedprovisioning/common/CrossFadeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper$1;-><init>(Lcom/android/managedprovisioning/common/CrossFadeHelper;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mViews:Ljava/util/List;

    .line 56
    iput p2, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mDuration:I

    .line 57
    iput-object p3, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mCallback:Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;

    .line 58
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->getFadeOutAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 59
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->getFadeInAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 60
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    .line 61
    iget-object p3, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, 0x1

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/common/CrossFadeHelper;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/common/CrossFadeHelper;)Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mCallback:Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;

    return-object p0
.end method

.method private getFadeInAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 69
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    iget v1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    new-instance v1, Lcom/android/managedprovisioning/common/CrossFadeHelper$2;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper$2;-><init>(Lcom/android/managedprovisioning/common/CrossFadeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 84
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    iget v1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    new-instance v1, Lcom/android/managedprovisioning/common/CrossFadeHelper$3;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper$3;-><init>(Lcom/android/managedprovisioning/common/CrossFadeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 100
    iget-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 101
    iget-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 102
    iget-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 103
    iget-object v0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 104
    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public start()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
