.class Lcom/android/server/wm/p;
.super Lcom/android/server/wm/ActivityStackSupervisor;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    sget-object v0, Lcom/android/server/wm/MegaActivityManagerService;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->setActivityWindowingMode(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
