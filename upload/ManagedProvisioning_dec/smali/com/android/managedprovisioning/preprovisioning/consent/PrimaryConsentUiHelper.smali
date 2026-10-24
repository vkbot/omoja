.class Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;
.super Ljava/lang/Object;
.source "PrimaryConsentUiHelper.java"

# interfaces
.implements Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

.field private mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

.field private final mTouchTargetEnforcer:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

    .line 49
    new-instance p2, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;-><init>(F)V

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mTouchTargetEnforcer:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    .line 51
    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method private synthetic lambda$setupAcceptAndContinueButton$0(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->onNextButtonClicked()V

    return-void
.end method

.method private synthetic lambda$setupViewTermsButton$1(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onNextButtonClicked()V
    .locals 1

    const-string v0, "Next button (next_button) is clicked."

    .line 118
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;->nextAfterUserConsent()V

    return-void
.end method

.method private setupAcceptAndContinueButton(Z)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 111
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$PrimaryConsentUiHelper$awzNpw3OpkeWs6o_NSbOXbR0T24;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$PrimaryConsentUiHelper$awzNpw3OpkeWs6o_NSbOXbR0T24;-><init>(Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;)V

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->addAcceptAndContinueButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->onNextButtonClicked()V

    :cond_0
    return-void
.end method

.method private setupAnimation(I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f090054

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 105
    new-instance v0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    .line 106
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    return-void
.end method

.method private setupViewTermsButton(Landroid/content/Intent;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$PrimaryConsentUiHelper$fYhJAYcdq2Phr05uAF3Bnen5ft4;

    invoke-direct {v1, p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$PrimaryConsentUiHelper$fYhJAYcdq2Phr05uAF3Bnen5ft4;-><init>(Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mTouchTargetEnforcer:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->enforce(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initiateUi(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;)V
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v1, 0x7f0d00bd

    const v0, 0x7f0d00dd

    const v2, 0x7f081d03

    :goto_0
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0d00b9

    const v0, 0x7f0d0077

    const v2, 0x7f081d02

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    .line 83
    :goto_1
    iget-object v3, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->customization:Lcom/android/managedprovisioning/model/CustomizationParams;

    .line 84
    iget-object v4, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

    const v5, 0x7f0c004f

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 84
    invoke-interface {v4, v5, v1, v3}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    .line 89
    invoke-direct {p0, v2}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->setupAnimation(I)V

    .line 90
    iget-boolean v1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->isSilentProvisioning:Z

    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->setupAcceptAndContinueButton(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 96
    iget-object p1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->viewTermsIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->setupViewTermsButton(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$setupAcceptAndContinueButton$0$PrimaryConsentUiHelper(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->lambda$setupAcceptAndContinueButton$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setupViewTermsButton$1$PrimaryConsentUiHelper(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->lambda$setupViewTermsButton$1(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->stop()V

    :cond_0
    return-void
.end method
