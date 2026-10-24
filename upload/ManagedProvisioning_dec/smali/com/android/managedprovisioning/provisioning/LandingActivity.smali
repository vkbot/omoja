.class public Lcom/android/managedprovisioning/provisioning/LandingActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "LandingActivity.java"


# instance fields
.field private final mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/managedprovisioning/provisioning/LandingActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p2, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-direct {p2, p0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;-><init>(Landroid/app/Activity;)V

    :goto_0
    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/LandingActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    return-void
.end method

.method private handleSupportUrl(Lcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 9

    const v0, 0x7f090144

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f0d0098

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const v1, 0x7f0d0048

    .line 95
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 96
    new-instance v4, Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    const v0, 0x7f060027

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-direct {v4, v0}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;-><init>(I)V

    .line 98
    iget-object v1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/LandingActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/managedprovisioning/common/Utils;->handleSupportUrl(Landroid/content/Context;Lcom/android/managedprovisioning/model/CustomizationParams;Lcom/android/managedprovisioning/common/ClickableSpanFactory;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 66
    invoke-static {p1, p0, v0}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v0

    const v1, 0x7f0d0023

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0055

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    const v1, 0x7f0d00bb

    .line 68
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/LandingActivity;->handleSupportUrl(Lcom/android/managedprovisioning/model/CustomizationParams;)V

    const v0, 0x7f090166

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 72
    new-instance v1, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;

    invoke-direct {v1, p0, p1}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;-><init>(Lcom/android/managedprovisioning/provisioning/LandingActivity;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->addNextButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    .line 74
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioning(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/LandingActivity;->onNextButtonClicked(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeUi$0(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/LandingActivity;->onNextButtonClicked(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-void
.end method

.method private onNextButtonClicked(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-static {v0, p0, p1}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;->shouldRunPrepareActivity(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v1, "provisioningParams"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initializeUi$0$LandingActivity(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/provisioning/LandingActivity;->lambda$initializeUi$0(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 105
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "provisioningParams"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/LandingActivity;->initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-void
.end method
