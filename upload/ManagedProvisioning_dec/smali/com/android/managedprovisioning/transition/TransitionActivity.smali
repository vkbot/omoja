.class public Lcom/android/managedprovisioning/transition/TransitionActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "TransitionActivity.java"


# instance fields
.field private mIntroAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field private mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/transition/TransitionActivity;)Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/managedprovisioning/transition/TransitionActivity;Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/managedprovisioning/transition/TransitionActivity;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mIntroAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p1
.end method

.method private initializeUi()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 78
    invoke-static {v0, p0, v1}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v0

    const v1, 0x7f0d0093

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c00c1

    .line 79
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    const v0, 0x7f0d00b6

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f090166

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 85
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/transition/TransitionActivity;->setupAnimation(Lcom/google/android/setupdesign/GlifLayout;)V

    .line 86
    new-instance v1, Lcom/android/managedprovisioning/transition/-$$Lambda$TransitionActivity$Uf0WctXaFLPSThTRXFdWbaJKXTo;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/transition/-$$Lambda$TransitionActivity$Uf0WctXaFLPSThTRXFdWbaJKXTo;-><init>(Lcom/android/managedprovisioning/transition/TransitionActivity;)V

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->addNextButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    return-void
.end method

.method private synthetic lambda$initializeUi$0(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setupAnimation(Lcom/google/android/setupdesign/GlifLayout;)V
    .locals 2

    const v0, 0x7f090054

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mIntroAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 93
    new-instance v1, Lcom/android/managedprovisioning/transition/TransitionActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/managedprovisioning/transition/TransitionActivity$1;-><init>(Lcom/android/managedprovisioning/transition/TransitionActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 104
    iget-object p0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mIntroAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initializeUi$0$TransitionActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/transition/TransitionActivity;->lambda$initializeUi$0(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "provisioningParams"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    iput-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    if-nez p1, :cond_0

    const-string p1, "Missing params in TransitionActivity activity"

    .line 48
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/transition/TransitionActivity;->initializeUi()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mIntroAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 68
    iget-object v0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->stop()V

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity;->mIntroAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_1
    return-void
.end method
