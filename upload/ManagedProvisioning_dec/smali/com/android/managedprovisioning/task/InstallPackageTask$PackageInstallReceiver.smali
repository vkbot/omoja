.class Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallPackageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/task/InstallPackageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallReceiver"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;


# direct methods
.method public constructor <init>(Lcom/android/managedprovisioning/task/InstallPackageTask;Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/managedprovisioning/task/InstallPackageTask;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "android.content.pm.extra.PACKAGE_NAME"

    .line 197
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "Package doesn\'t have expected package name."

    .line 198
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    :cond_1
    const-string p1, "android.content.pm.extra.STATUS"

    .line 203
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    .line 204
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.pm.extra.LEGACY_STATUS"

    .line 205
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 207
    iget-object v1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    iget-object v1, v1, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is succesfully installed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->stopTaskTimer()V

    .line 213
    iget-object p0, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    goto :goto_0

    :cond_2
    const/16 p1, -0x19

    if-ne p2, p1, :cond_3

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current version of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " higher than the version to be installed. It was not reinstalled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    goto :goto_0

    .line 221
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Installing package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Status message returned  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "Incorrect action"

    .line 190
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;->this$0:Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void
.end method
