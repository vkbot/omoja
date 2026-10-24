.class Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "DeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private final mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;


# direct methods
.method public constructor <init>(Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;I)V
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 145
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const-string p1, "Could not finish the provisioning: package deletion failed"

    .line 154
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "All non-required system apps with launcher icon, and all disallowed apps have been uninstalled."

    .line 161
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;->this$0:Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    :cond_1
    return-void
.end method
