.class Lcom/mega/update/service/UpdateBinder$1;
.super Ljava/lang/Object;
.source "UpdateBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/service/UpdateBinder;->delayInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/service/UpdateBinder;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/mega/update/service/UpdateBinder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/service/UpdateBinder;

    .line 73
    iput-object p1, p0, Lcom/mega/update/service/UpdateBinder$1;->this$0:Lcom/mega/update/service/UpdateBinder;

    iput p2, p0, Lcom/mega/update/service/UpdateBinder$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    :try_start_0
    iget v0, p0, Lcom/mega/update/service/UpdateBinder$1;->val$delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep delay error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mega/update/service/UpdateBinder$1;->val$delay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder$1;->this$0:Lcom/mega/update/service/UpdateBinder;

    invoke-virtual {v0}, Lcom/mega/update/service/UpdateBinder;->init()V

    .line 82
    return-void
.end method
