.class public final Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "FinancedDeviceLandingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method private initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 63
    invoke-static {p1, p0, v0}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v0

    const v1, 0x7f0c004d

    .line 64
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    iget-boolean v1, v0, Lcom/android/managedprovisioning/model/CustomizationParams;->useSetupStatusBarColor:Z

    if-nez v1, :cond_0

    .line 67
    iget v1, v0, Lcom/android/managedprovisioning/model/CustomizationParams;->statusBarColor:I

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->setStatusBarColor(I)V

    :cond_0
    const v1, 0x7f090166

    .line 70
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/GlifLayout;

    .line 71
    iget v0, v0, Lcom/android/managedprovisioning/model/CustomizationParams;->mainColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0d0073

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 72
    iget-object v4, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->organizationName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    const v0, 0x7f081d0f

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$FinancedDeviceLandingActivity$eWPGhU-L3lJqWggW22_YkfvKUnM;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$FinancedDeviceLandingActivity$eWPGhU-L3lJqWggW22_YkfvKUnM;-><init>(Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;)V

    invoke-static {v1, v0}, Lcom/android/managedprovisioning/common/Utils;->addAcceptAndContinueButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    const v0, 0x7f0900cf

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0055

    new-array v3, v2, [Ljava/lang/Object;

    .line 79
    iget-object v4, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->organizationName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090112

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0083

    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->organizationName:Ljava/lang/String;

    aput-object p1, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initializeUi$0(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;->onNextButtonClicked()V

    return-void
.end method

.method private onNextButtonClicked()V
    .locals 1

    const/4 v0, -0x1

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initializeUi$0$FinancedDeviceLandingActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;->lambda$initializeUi$0(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "provisioningParams"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;->initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-void
.end method
