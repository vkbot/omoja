.class public final Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

.field public final d:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final f:Lcom/callisto/auto/gatherer/model/DataListBean;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/b;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/b;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/b;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/b;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/callisto/auto/gatherer/utils/FileUtil;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/utils/FileUtil;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object v0, p0, Lg1/b;->f:Lcom/callisto/auto/gatherer/model/DataListBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg1/b;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lg1/b;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lg1/b;->f:Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    iget-object p1, p0, Lg1/b;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v1, "b020203"

    invoke-virtual {p1, v1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg1/b;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "callisto_vdr"

    const-string v0, "Get event:b020203"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "activity"

    iget-object v2, v0, Lg1/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v0, Lg1/b;->h:Ljava/util/ArrayList;

    iget-object v8, v0, Lg1/b;->i:Ljava/util/ArrayList;

    if-ge v5, v6, :cond_e

    new-instance v6, Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-direct {v6}, Lcom/callisto/auto/gatherer/model/FlowRateBean;-><init>()V

    iput-object v6, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-class v11, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    iget-object v12, v0, Lg1/b;->g:Ljava/util/ArrayList;

    const-wide/16 v13, 0x0

    if-eqz v11, :cond_7

    invoke-virtual {v11, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v15, v4}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setNetworkType(I)V

    move/from16 v16, v5

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    move-object/from16 v17, v11

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    move-wide/from16 v18, v10

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v9

    move-object v11, v2

    move-object/from16 v20, v3

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v2

    cmp-long v21, v4, v13

    if-gtz v21, :cond_2

    cmp-long v21, v18, v13

    if-gtz v21, :cond_2

    cmp-long v21, v9, v13

    if-gtz v21, :cond_2

    cmp-long v21, v2, v13

    if-lez v21, :cond_3

    :cond_2
    iget-object v15, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v15, v6}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setUid(I)V

    iget-object v15, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v15, v4, v5}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setTotalRxBytes(J)V

    iget-object v4, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    move-wide/from16 v13, v18

    invoke-virtual {v4, v13, v14}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setTotalTxBytes(J)V

    iget-object v4, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v4, v9, v10}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setRxPackets(J)V

    iget-object v4, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v4, v2, v3}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setTxPackets(J)V

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v4, v16

    if-ne v4, v2, :cond_5

    goto :goto_2

    :cond_4
    move/from16 v4, v16

    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0, v12}, Lg1/b;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move/from16 v4, v16

    :goto_3
    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v20, v3

    move v4, v5

    move-object/from16 v17, v11

    move-object v11, v2

    :goto_4
    if-eqz v17, :cond_d

    move-object/from16 v2, v17

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v2, v3}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setNetworkType(I)V

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v13

    move/from16 v16, v4

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v4

    const-wide/16 v18, 0x0

    cmp-long v15, v2, v18

    if-gtz v15, :cond_8

    cmp-long v15, v9, v18

    if-gtz v15, :cond_8

    cmp-long v15, v13, v18

    if-gtz v15, :cond_8

    cmp-long v15, v4, v18

    if-lez v15, :cond_9

    :cond_8
    iget-object v15, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v15, v6}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setUid(I)V

    iget-object v6, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v6, v2, v3}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setTotalRxBytes(J)V

    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v2, v9, v10}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setTotalTxBytes(J)V

    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v2, v13, v14}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setRxPackets(J)V

    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v2, v4, v5}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->setTxPackets(J)V

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v4, v16

    if-ne v4, v2, :cond_b

    goto :goto_5

    :cond_a
    move/from16 v4, v16

    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v0, v12}, Lg1/b;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    move/from16 v4, v16

    :goto_6
    iget-object v2, v0, Lg1/b;->c:Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v4, 0x1

    move-object v2, v11

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callisto/auto/gatherer/model/FlowRateBean;

    invoke-virtual {v6, v4, v6}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->isFlowRateBeanEqual(Lcom/callisto/auto/gatherer/model/FlowRateBean;Lcom/callisto/auto/gatherer/model/FlowRateBean;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v5, v3

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    invoke-virtual {v0, v1}, Lg1/b;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v0, v1}, Lg1/b;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_15
    :goto_9
    return-void
.end method
