.class public Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter$RestrictionChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CrossProfileIntentFiltersSetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionChangedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.app.action.DATA_SHARING_RESTRICTION_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "android.intent.extra.USER_ID"

    const/16 v0, -0x2710

    .line 263
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_1

    return-void

    .line 267
    :cond_1
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 268
    invoke-virtual {p2, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string v0, "Resetting cross-profile intent filters on restriction change"

    .line 274
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;-><init>(Landroid/content/Context;)V

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p2}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->resetFilters(I)V

    .line 276
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 276
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
