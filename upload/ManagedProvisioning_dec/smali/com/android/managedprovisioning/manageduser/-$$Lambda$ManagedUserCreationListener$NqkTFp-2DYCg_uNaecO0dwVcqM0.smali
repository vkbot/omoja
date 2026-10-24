.class public final synthetic Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(IZLandroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$0:I

    iput-boolean p2, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$1:Z

    iput-object p3, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$3:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$0:I

    iget-boolean v1, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$1:Z

    iget-object v2, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$2:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;->f$3:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2, p0}, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationListener;->lambda$onReceive$0(IZLandroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
