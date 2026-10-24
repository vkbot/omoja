.class public abstract Lcom/mega/nexus/app/MegaTaskStackListener;
.super Ljava/lang/Object;
.source "MegaTaskStackListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 0

    .line 30
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I

    .line 27
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    .line 33
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I

    .line 12
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 48
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .line 15
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0
    .param p1, "clearedTask"    # Z

    .line 18
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    .line 24
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    .line 21
    return-void
.end method

.method public onSigleTaskDisplayEmpty(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 69
    return-void
.end method

.method public onSingleTaskDisplayDrawn(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 66
    return-void
.end method

.method public onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 60
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method public onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 45
    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I

    .line 72
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 42
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 54
    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 51
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 39
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 57
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .line 9
    return-void
.end method
