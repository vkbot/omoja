.class public Lcom/android/managedprovisioning/finalization/FinalScreenActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "FinalScreenActivity.java"


# static fields
.field static EXTRA_PROVISIONING_PARAMS:Ljava/lang/String; = "com.android.managedprovisioning.PROVISIONING_PARAMS"


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>()V

    return-void
.end method

.method private initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 71
    invoke-static {p1, p0, v0}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v0

    const v1, 0x7f0d0064

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0c004c

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    .line 73
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f090166

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f090054

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v3, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f081cca

    goto :goto_0

    :cond_0
    const v2, 0x7f081cc9

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->mAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 81
    new-instance v1, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalScreenActivity$nxtLQ9RXcotRuCUD4Ct3y48S9h8;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalScreenActivity$nxtLQ9RXcotRuCUD4Ct3y48S9h8;-><init>(Lcom/android/managedprovisioning/finalization/FinalScreenActivity;)V

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->addDoneButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    .line 83
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioning(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->onDoneButtonPressed()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initializeUi$0(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->onDoneButtonPressed()V

    return-void
.end method

.method private onDoneButtonPressed()V
    .locals 1

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initializeUi$0$FinalScreenActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->lambda$initializeUi$0(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->EXTRA_PROVISIONING_PARAMS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t show UI without provisioning params."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onStart()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 53
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->mAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 61
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->mAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method
