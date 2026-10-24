.class Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;
.super Landroid/os/AsyncTask;
.source "PreProvisioningController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatePrimaryUserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;


# direct methods
.method private constructor <init>(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$1;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;-><init>(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/pm/UserInfo;
    .locals 1

    .line 813
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-static {p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->access$200(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Landroid/os/UserManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    .line 814
    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->access$100(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 813
    invoke-virtual {p1, p0, v0}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to hold the device owner"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 809
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->doInBackground([Ljava/lang/Void;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/content/pm/UserInfo;)V
    .locals 2

    if-nez p1, :cond_0

    .line 826
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->access$300(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    move-result-object p0

    const p1, 0x7f0d002e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f0d0049

    const-string v1, "Could not create user to hold the device owner"

    invoke-interface {p0, p1, v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-static {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->access$400(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Landroid/app/ActivityManager;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 831
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->stopTimeLogger()V

    .line 833
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-static {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->access$300(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->this$0:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->access$500(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->startProvisioning(ILcom/android/managedprovisioning/model/ProvisioningParams;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 809
    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;->onPostExecute(Landroid/content/pm/UserInfo;)V

    return-void
.end method
