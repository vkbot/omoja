.class Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;
.super Ljava/lang/Object;
.source "MegaConnector.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/rpc/MegaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/rpc/MegaConnector;


# direct methods
.method private constructor <init>(Lcom/mega/update/rpc/MegaConnector;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/update/rpc/MegaConnector;Lcom/mega/update/rpc/MegaConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/update/rpc/MegaConnector;
    .param p2, "x1"    # Lcom/mega/update/rpc/MegaConnector$1;

    .line 53
    invoke-direct {p0, p1}, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;-><init>(Lcom/mega/update/rpc/MegaConnector;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 56
    const-string v0, "MegaConnector"

    const-string v1, "IMessageCenter service died"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-static {v1}, Lcom/mega/update/rpc/MegaConnector;->access$300(Lcom/mega/update/rpc/MegaConnector;)Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-static {v1}, Lcom/mega/update/rpc/MegaConnector;->access$300(Lcom/mega/update/rpc/MegaConnector;)Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v1

    invoke-interface {v1, p0}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to unlinkToDeath"

    invoke-static {v0, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;->this$0:Lcom/mega/update/rpc/MegaConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mega/update/rpc/MegaConnector;->access$302(Lcom/mega/update/rpc/MegaConnector;Lvendor/mega/message_center/V1_0/IMessageCenter;)Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 64
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-static {v0}, Lcom/mega/update/rpc/MegaConnector;->access$400(Lcom/mega/update/rpc/MegaConnector;)V

    .line 66
    :cond_0
    return-void
.end method
