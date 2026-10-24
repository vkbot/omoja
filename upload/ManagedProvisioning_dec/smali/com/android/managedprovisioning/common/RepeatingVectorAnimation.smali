.class public Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;
.super Ljava/lang/Object;
.source "RepeatingVectorAnimation.java"


# instance fields
.field private final mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final mShouldLoop:Z

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;-><init>(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mUiThreadHandler:Landroid/os/Handler;

    .line 50
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 51
    iput-boolean p2, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mShouldLoop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mShouldLoop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 58
    iget-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 59
    iget-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 60
    iget-object p0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 65
    iget-object v0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimatedVectorDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object p0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void
.end method
