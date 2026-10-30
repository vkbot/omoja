.class Lcom/mega/update/task/FlashTask$1;
.super Ljava/util/TimerTask;
.source "FlashTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/task/FlashTask;->startCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/task/FlashTask;


# direct methods
.method constructor <init>(Lcom/mega/update/task/FlashTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/task/FlashTask;

    .line 73
    iput-object p1, p0, Lcom/mega/update/task/FlashTask$1;->this$0:Lcom/mega/update/task/FlashTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    const-string v0, "FlashTask"

    const-string v1, "flash timeout!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/task/FlashTask$1;->this$0:Lcom/mega/update/task/FlashTask;

    invoke-static {v0}, Lcom/mega/update/task/FlashTask;->access$000(Lcom/mega/update/task/FlashTask;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/mega/update/manager/Result;

    const/16 v2, -0xa

    const-string v3, "flash timeout"

    invoke-direct {v1, v2, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    return-void
.end method
