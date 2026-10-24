.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/LandingActivity;

.field public final synthetic f$1:Lcom/android/managedprovisioning/model/ProvisioningParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/LandingActivity;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;->f$0:Lcom/android/managedprovisioning/provisioning/LandingActivity;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;->f$1:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;->f$0:Lcom/android/managedprovisioning/provisioning/LandingActivity;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LandingActivity$uJ-WJSgbt0rXf5gSyLqc0rTeDL4;->f$1:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v0, p0, p1}, Lcom/android/managedprovisioning/provisioning/LandingActivity;->lambda$initializeUi$0$LandingActivity(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/view/View;)V

    return-void
.end method
