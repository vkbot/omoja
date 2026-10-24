.class Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;
.super Landroid/os/UpdateEngineCallback;
.source "AndroidUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/AndroidUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateEngineCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/protocol/AndroidUpdateProtocol;


# direct methods
.method constructor <init>(Lcom/mega/update/protocol/AndroidUpdateProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/protocol/AndroidUpdateProtocol;

    .line 228
    iput-object p1, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;->this$0:Lcom/mega/update/protocol/AndroidUpdateProtocol;

    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .line 239
    invoke-static {}, Lcom/mega/update/protocol/AndroidUpdateProtocol;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android update error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;->this$0:Lcom/mega/update/protocol/AndroidUpdateProtocol;

    iget-object v0, v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 242
    .local v0, "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    iget-object v1, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;->this$0:Lcom/mega/update/protocol/AndroidUpdateProtocol;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 243
    const/16 v1, 0x34

    if-ne p1, v1, :cond_0

    .line 244
    const/4 p1, 0x0

    .line 246
    :cond_0
    new-instance v1, Lcom/mega/update/manager/Result;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android update result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 247
    .local v1, "res":Lcom/mega/update/manager/Result;
    invoke-interface {v0, v1}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 248
    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "progress"    # F

    .line 231
    invoke-static {}, Lcom/mega/update/protocol/AndroidUpdateProtocol;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android update status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;->this$0:Lcom/mega/update/protocol/AndroidUpdateProtocol;

    iget-object v0, v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;->this$0:Lcom/mega/update/protocol/AndroidUpdateProtocol;

    iget-object v0, v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/mega/update/manager/ITriggerNotifier;->onProgressChanged(I)V

    .line 235
    :cond_0
    return-void
.end method
