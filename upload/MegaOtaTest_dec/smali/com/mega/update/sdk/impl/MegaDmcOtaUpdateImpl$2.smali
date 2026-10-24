.class Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;
.super Ljava/lang/Object;
.source "MegaDmcOtaUpdateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->startConnectThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;


# direct methods
.method constructor <init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 90
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 93
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 94
    .local v0, "isConnect":Z
    :goto_0
    const-wide/16 v1, 0x3e8

    const-string v3, "MegaDmcOtaUpdateImpl"

    if-nez v0, :cond_1

    .line 95
    const-string v4, "try to get update service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    const-string v4, "mega.ota.update"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mega/update/service/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/service/IUpdateService;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$202(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;Lcom/mega/update/service/IUpdateService;)Lcom/mega/update/service/IUpdateService;

    .line 97
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v3}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 99
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$300(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mega/update/service/IUpdateService;->unbind(Lcom/mega/update/service/IUpdateCallback;)Z

    .line 106
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$300(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mega/update/service/IUpdateService;->bind(Lcom/mega/update/service/IUpdateCallback;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 109
    :goto_2
    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 112
    :cond_1
    const-string v4, "update service connect success!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mega/update/service/IUpdateService;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v4

    .line 116
    .local v4, "updateState":Lcom/mega/update/service/UpdateState;
    if-eqz v4, :cond_5

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update service state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mega/update/service/UpdateState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v5, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v5}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 119
    .local v6, "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    invoke-virtual {v4}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v9, "DMC"

    if-eqz v8, :cond_2

    .line 120
    :try_start_3
    invoke-virtual {v4}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    invoke-virtual {v4}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v8

    invoke-interface {v6, v9, v7, v8}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateProgress(Ljava/lang/String;II)V

    goto :goto_5

    .line 124
    :cond_2
    invoke-virtual {v4}, Lcom/mega/update/service/UpdateState;->getErrorCode()I

    move-result v8

    invoke-virtual {v4}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v10

    invoke-interface {v6, v9, v7, v8, v10}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(Ljava/lang/String;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 126
    .end local v6    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    :cond_3
    :goto_5
    goto :goto_4

    .line 127
    :cond_4
    nop

    .line 138
    .end local v4    # "updateState":Lcom/mega/update/service/UpdateState;
    const-string v1, "update service is ready!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_4
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mega/update/service/IUpdateService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-interface {v1, v2, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 143
    goto :goto_6

    .line 141
    :catch_2
    move-exception v1

    .line 142
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 144
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$400(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V

    .line 146
    return-void

    .line 131
    :cond_5
    goto :goto_7

    .line 129
    :catch_3
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 136
    :goto_8
    goto/16 :goto_3

    .line 134
    :catch_4
    move-exception v4

    .line 135
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_8
.end method
