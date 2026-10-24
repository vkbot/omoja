.class Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartManagedProfileTask.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/task/StartManagedProfileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserUnlockedReceiver"
.end annotation


# instance fields
.field private final mUserId:I

.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 121
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 122
    iput p1, p0, Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    .line 131
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget p2, p0, Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;->mUserId:I

    if-ne p1, p2, :cond_1

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received ACTION_USER_UNLOCKED for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void
.end method

.method public waitForUserUnlocked()Z
    .locals 3

    const-string v0, "Waiting for ACTION_USER_UNLOCKED"

    .line 138
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object p0, p0, Lcom/android/managedprovisioning/task/StartManagedProfileTask$UserUnlockedReceiver;->semaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
