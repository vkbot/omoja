.class public final Li1/c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final synthetic c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final synthetic d:Li1/d;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Li1/d;Ljava/lang/Object;Lcom/callisto/auto/gatherer/model/BaseRequest;Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;I)V
    .locals 0

    iput p5, p0, Li1/c;->a:I

    iput-object p1, p0, Li1/c;->d:Li1/d;

    iput-object p2, p0, Li1/c;->e:Ljava/lang/Object;

    iput-object p3, p0, Li1/c;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iput-object p4, p0, Li1/c;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 7

    iget v0, p0, Li1/c;->a:I

    const-string v1, "callisto_vdr"

    iget-object v2, p0, Li1/c;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iget-object v3, p0, Li1/c;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object v4, p0, Li1/c;->e:Ljava/lang/Object;

    iget-object v5, p0, Li1/c;->d:Li1/d;

    const-string v6, "SecurityEventMonitor"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "Wifi\u5df2\u8fde\u63a5 "

    invoke-static {v6, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v5, Li1/d;->g:Z

    if-eqz p1, :cond_0

    check-cast v4, Lcom/callisto/auto/gatherer/model/WifiStateBean;

    const/4 p1, 0x4

    invoke-virtual {v4, p1}, Lcom/callisto/auto/gatherer/model/WifiStateBean;->setWifiStat(I)V

    const-string p1, "b010601"

    invoke-virtual {v3, p1, v4}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "Get event:b010601"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "\u4e2a\u4eba\u70ed\u70b9\u5df2\u8fde\u63a5 "

    invoke-static {v6, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v5, Li1/d;->h:Z

    if-eqz p1, :cond_1

    check-cast v4, Lcom/callisto/auto/gatherer/model/HotspotBean;

    const/16 p1, 0xf

    invoke-virtual {v4, p1}, Lcom/callisto/auto/gatherer/model/HotspotBean;->setHotspotStat(I)V

    const-string p1, "b010605"

    invoke-virtual {v3, p1, v4}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "Get event:b010605"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 7

    iget v0, p0, Li1/c;->a:I

    const-string v1, "callisto_vdr"

    iget-object v2, p0, Li1/c;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iget-object v3, p0, Li1/c;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object v4, p0, Li1/c;->e:Ljava/lang/Object;

    iget-object v5, p0, Li1/c;->d:Li1/d;

    const-string v6, "SecurityEventMonitor"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "Wifi\u5df2\u65ad\u5f00 "

    invoke-static {v6, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v5, Li1/d;->g:Z

    if-eqz p1, :cond_0

    check-cast v4, Lcom/callisto/auto/gatherer/model/WifiStateBean;

    const/4 p1, 0x2

    invoke-virtual {v4, p1}, Lcom/callisto/auto/gatherer/model/WifiStateBean;->setWifiStat(I)V

    const-string p1, "b010601"

    invoke-virtual {v3, p1, v4}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "Get event:b010601"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "\u4e2a\u4eba\u70ed\u70b9\u5df2\u65ad\u5f00 "

    invoke-static {v6, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v5, Li1/d;->h:Z

    if-eqz p1, :cond_1

    check-cast v4, Lcom/callisto/auto/gatherer/model/HotspotBean;

    const/16 p1, 0xe

    invoke-virtual {v4, p1}, Lcom/callisto/auto/gatherer/model/HotspotBean;->setHotspotStat(I)V

    const-string p1, "b010605"

    invoke-virtual {v3, p1, v4}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "Get event:b010605"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
