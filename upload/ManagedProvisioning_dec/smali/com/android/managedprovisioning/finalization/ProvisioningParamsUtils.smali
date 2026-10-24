.class Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;
.super Ljava/lang/Object;
.source "ProvisioningParamsUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 36
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "finalization_activity_provisioning_params.xml"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method
