.class Lcom/android/server/pm/permission/PermissionManagerService$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 324
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onGidsChanged$0(II)V
    .locals 1
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 327
    const-string/jumbo v0, "permission grant or revoke changed gids"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPermissionRevoked$1(II)V
    .locals 1
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 348
    const-string/jumbo v0, "permissions revoked"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPermissionRevoked$2(IILjava/lang/String;)V
    .locals 0
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 350
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$QSCLyelVDMHZe8LrlYhYvfz5G2c;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$QSCLyelVDMHZe8LrlYhYvfz5G2c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 339
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 356
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 364
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 378
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;->onInstallPermissionUpdated()V

    .line 379
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 380
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 335
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 368
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 346
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 347
    .local v0, "appId":I
    if-nez p3, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;

    invoke-direct {v2, v0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :goto_0
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 2
    .param p1, "userIds"    # [I
    .param p2, "sync"    # Z

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 360
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 3
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$1;->onPermissionUpdated([IZ)V

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 373
    aget v1, p1, v0

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 374
    .local v1, "userUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 372
    .end local v1    # "userUid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
