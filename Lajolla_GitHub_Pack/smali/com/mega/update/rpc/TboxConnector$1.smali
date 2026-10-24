.class Lcom/mega/update/rpc/TboxConnector$1;
.super Ljava/lang/Object;
.source "TboxConnector.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/rpc/TboxConnector;->getTboxProtocol()Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/rpc/TboxConnector;


# direct methods
.method constructor <init>(Lcom/mega/update/rpc/TboxConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/rpc/TboxConnector;

    .line 46
    iput-object p1, p0, Lcom/mega/update/rpc/TboxConnector$1;->this$0:Lcom/mega/update/rpc/TboxConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2
    .param p1, "l"    # J

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector$1;->this$0:Lcom/mega/update/rpc/TboxConnector;

    invoke-static {v0}, Lcom/mega/update/rpc/TboxConnector;->access$200(Lcom/mega/update/rpc/TboxConnector;)Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    move-result-object v0

    invoke-interface {v0, p0}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector$1;->this$0:Lcom/mega/update/rpc/TboxConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mega/update/rpc/TboxConnector;->access$202(Lcom/mega/update/rpc/TboxConnector;Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;)Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    .line 55
    invoke-static {}, Lcom/mega/update/rpc/TboxConnector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TboxProtocol terminated"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
