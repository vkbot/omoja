.class public final Li1/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/callisto/auto/gatherer/model/WifiStateBean;

.field public final synthetic b:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final synthetic c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final synthetic d:Lcom/callisto/auto/gatherer/model/BluetoothBean;

.field public final synthetic e:Lcom/callisto/auto/gatherer/model/HotspotBean;

.field public final synthetic f:Li1/d;


# direct methods
.method public constructor <init>(Li1/d;Lcom/callisto/auto/gatherer/model/WifiStateBean;Lcom/callisto/auto/gatherer/model/BaseRequest;Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;Lcom/callisto/auto/gatherer/model/BluetoothBean;Lcom/callisto/auto/gatherer/model/HotspotBean;)V
    .locals 0

    iput-object p1, p0, Li1/b;->f:Li1/d;

    iput-object p2, p0, Li1/b;->a:Lcom/callisto/auto/gatherer/model/WifiStateBean;

    iput-object p3, p0, Li1/b;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iput-object p4, p0, Li1/b;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iput-object p5, p0, Li1/b;->d:Lcom/callisto/auto/gatherer/model/BluetoothBean;

    iput-object p6, p0, Li1/b;->e:Lcom/callisto/auto/gatherer/model/HotspotBean;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecurityEventMonitor"

    invoke-static {v4, v3}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "wifi_state"

    iget-object v6, v0, Li1/b;->f:Li1/d;

    const-string v7, "callisto_vdr"

    iget-object v8, v0, Li1/b;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iget-object v9, v0, Li1/b;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    if-eqz v3, :cond_2

    iget-boolean v3, v6, Li1/d;->g:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Get event:b010601"

    const-string v5, "b010601"

    iget-object v6, v0, Li1/b;->a:Lcom/callisto/auto/gatherer/model/WifiStateBean;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v6, v1}, Lcom/callisto/auto/gatherer/model/WifiStateBean;->setWifiStat(I)V

    invoke-virtual {v9, v5, v6}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi\u5df2\u542f\u7528: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6, v1}, Lcom/callisto/auto/gatherer/model/WifiStateBean;->setWifiStat(I)V

    invoke-virtual {v9, v5, v6}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi\u5df2\u7981\u7528: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v10, 0xc

    const/16 v11, 0xa

    const-string v12, "Get event:b010603"

    const-string v13, "b010603"

    iget-object v14, v0, Li1/b;->d:Lcom/callisto/auto/gatherer/model/BluetoothBean;

    if-eqz v3, :cond_5

    iget-boolean v3, v6, Li1/d;->i:Z

    if-eqz v3, :cond_5

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v11, :cond_4

    if-eq v1, v10, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v14, v1}, Lcom/callisto/auto/gatherer/model/BluetoothBean;->setBtStat(I)V

    invoke-virtual {v9, v13, v14}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\u5df2\u6253\u5f00: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v14, v1}, Lcom/callisto/auto/gatherer/model/BluetoothBean;->setBtStat(I)V

    invoke-virtual {v9, v13, v14}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\u5df2\u5173\u95ed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v15, 0xd

    const-string v10, "android.bluetooth.device.extra.DEVICE"

    if-eqz v3, :cond_6

    iget-boolean v3, v6, Li1/d;->i:Z

    if-eqz v3, :cond_6

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/callisto/auto/gatherer/model/BluetoothBean;->setBtStat(I)V

    invoke-virtual {v14, v2}, Lcom/callisto/auto/gatherer/model/BluetoothBean;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v9, v13, v14}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8fde\u63a5\u7684\u84dd\u7259\u8bbe\u5907\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v15, 0xb

    if-eqz v3, :cond_7

    iget-boolean v3, v6, Li1/d;->i:Z

    if-eqz v3, :cond_7

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/callisto/auto/gatherer/model/BluetoothBean;->setBtStat(I)V

    invoke-virtual {v14, v2}, Lcom/callisto/auto/gatherer/model/BluetoothBean;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v9, v13, v14}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u65ad\u5f00\u7684\u84dd\u7259\u8bbe\u5907\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v6, Li1/d;->h:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_8

    const-string v1, "\u4e2a\u4eba\u70ed\u70b9\u6b63\u5728\u5173\u95ed"

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "Get event:b010605"

    const-string v3, "b010605"

    iget-object v5, v0, Li1/b;->e:Lcom/callisto/auto/gatherer/model/HotspotBean;

    if-ne v1, v15, :cond_9

    invoke-virtual {v5, v1}, Lcom/callisto/auto/gatherer/model/HotspotBean;->setHotspotStat(I)V

    invoke-virtual {v9, v3, v5}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\u4e2a\u4eba\u70ed\u70b9\u5df2\u5173\u95ed"

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v6, 0xc

    if-ne v1, v6, :cond_a

    const-string v1, "\u4e2a\u4eba\u70ed\u70b9\u6b63\u5728\u5f00\u542f"

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 v6, 0xd

    if-ne v1, v6, :cond_b

    invoke-virtual {v5, v1}, Lcom/callisto/auto/gatherer/model/HotspotBean;->setHotspotStat(I)V

    invoke-virtual {v9, v3, v5}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\u4e2a\u4eba\u70ed\u70b9\u5df2\u5f00\u542f"

    invoke-static {v4, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void
.end method
