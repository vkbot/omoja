.class Lcom/mega/nexus/app/MegaActivityManager$1;
.super Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;
.source "MegaActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/nexus/app/MegaActivityManager;->registerTaskChangeListener(Lcom/mega/nexus/app/TaskChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/nexus/app/MegaActivityManager;

.field final synthetic val$listener:Lcom/mega/nexus/app/TaskChangeListener;


# direct methods
.method constructor <init>(Lcom/mega/nexus/app/MegaActivityManager;Lcom/mega/nexus/app/TaskChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/nexus/app/MegaActivityManager;

    .line 288
    iput-object p1, p0, Lcom/mega/nexus/app/MegaActivityManager$1;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    iput-object p2, p0, Lcom/mega/nexus/app/MegaActivityManager$1;->val$listener:Lcom/mega/nexus/app/TaskChangeListener;

    invoke-direct {p0}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 294
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$1;->val$listener:Lcom/mega/nexus/app/TaskChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/app/TaskChangeListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 295
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 308
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$1;->val$listener:Lcom/mega/nexus/app/TaskChangeListener;

    invoke-interface {v0, p1}, Lcom/mega/nexus/app/TaskChangeListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 309
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 301
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$1;->val$listener:Lcom/mega/nexus/app/TaskChangeListener;

    invoke-interface {v0, p1}, Lcom/mega/nexus/app/TaskChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 302
    return-void
.end method
