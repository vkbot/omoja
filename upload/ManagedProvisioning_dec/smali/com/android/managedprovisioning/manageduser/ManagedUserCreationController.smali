.class public Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;
.super Ljava/lang/Object;
.source "ManagedUserCreationController.java"


# instance fields
.field private final mLeaveAllSystemAppsEnabled:Z

.field private final mSystemAppsSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

.field private final mUserId:I


# direct methods
.method public constructor <init>(IZLandroid/content/Context;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    invoke-direct {v0, p3}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;-><init>(IZLcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;)V

    return-void
.end method

.method constructor <init>(IZLcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->mUserId:I

    .line 42
    iput-boolean p2, p0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->mLeaveAllSystemAppsEnabled:Z

    .line 43
    iput-object p3, p0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->mSystemAppsSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget v0, p0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->mUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-boolean v1, p0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->mLeaveAllSystemAppsEnabled:Z

    if-nez v1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->mSystemAppsSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->takeNewSnapshot(I)V

    :cond_1
    return-void
.end method
