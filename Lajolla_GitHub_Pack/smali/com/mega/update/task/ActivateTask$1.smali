.class Lcom/mega/update/task/ActivateTask$1;
.super Ljava/util/TimerTask;
.source "ActivateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/task/ActivateTask;->startCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/task/ActivateTask;


# direct methods
.method constructor <init>(Lcom/mega/update/task/ActivateTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/task/ActivateTask;

    .line 93
    iput-object p1, p0, Lcom/mega/update/task/ActivateTask$1;->this$0:Lcom/mega/update/task/ActivateTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    const-string v0, "ActivateTask"

    const-string v1, "active timeout!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask$1;->this$0:Lcom/mega/update/task/ActivateTask;

    invoke-static {v0}, Lcom/mega/update/task/ActivateTask;->access$000(Lcom/mega/update/task/ActivateTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/mega/update/manager/Result;

    const/16 v2, -0xa

    const-string v3, "active timeout"

    invoke-direct {v1, v2, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 103
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    return-void
.end method
