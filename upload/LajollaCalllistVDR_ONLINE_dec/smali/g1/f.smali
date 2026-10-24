.class public final Lg1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:Lcom/callisto/auto/gatherer/model/TrafficBean;

.field public final c:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final e:Lcom/callisto/auto/gatherer/model/DataListBean;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/f;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/f;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/f;->h:Ljava/util/ArrayList;

    new-instance v0, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object v0, p0, Lg1/f;->e:Lcom/callisto/auto/gatherer/model/DataListBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg1/f;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lg1/f;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lg1/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lg1/f;->f:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v6, v4, v6}, Lcom/callisto/auto/gatherer/model/TrafficBean;->isTrafficBeanEqual(Lcom/callisto/auto/gatherer/model/TrafficBean;Lcom/callisto/auto/gatherer/model/TrafficBean;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0, v1}, Lg1/f;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p0, v1}, Lg1/f;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lg1/f;->e:Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    iget-object p1, p0, Lg1/f;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v1, "b020107"

    invoke-virtual {p1, v1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg1/f;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "callisto_vdr"

    const-string v0, "Get event:b020107"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/net/dev"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v1, Lg1/f;->g:Ljava/util/ArrayList;

    iget-object v5, v1, Lg1/f;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    :try_start_1
    const-string v6, "Inter-|"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, " face |bytes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/16 v8, 0xd

    if-lt v7, v8, :cond_0

    const/4 v2, 0x0

    aget-object v7, v6, v2

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    const/4 v10, 0x3

    aget-object v10, v6, v10

    const/4 v11, 0x4

    aget-object v11, v6, v11

    const/16 v12, 0x9

    aget-object v12, v6, v12

    const/16 v13, 0xa

    aget-object v14, v6, v13

    const/16 v15, 0xb

    aget-object v15, v6, v15

    const/16 v16, 0xc

    aget-object v6, v6, v16

    new-instance v13, Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-direct {v13}, Lcom/callisto/auto/gatherer/model/TrafficBean;-><init>()V

    iput-object v13, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    const-string v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v17, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v13, v7}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setFace(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v8}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setRxBytes(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v9}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setRxPackets(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v10}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setRxErrors(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v11}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setRxDropped(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v12}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setTxBytes(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v14}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setTxPackets(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v15}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setTxErrors(Ljava/lang/String;)V

    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v6}, Lcom/callisto/auto/gatherer/model/TrafficBean;->setTxDropped(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, v5}, Lg1/f;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v2, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, v1, Lg1/f;->f:Ljava/util/ArrayList;

    iget-object v3, v1, Lg1/f;->b:Lcom/callisto/auto/gatherer/model/TrafficBean;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v5}, Lg1/f;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual/range {p0 .. p0}, Lg1/f;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
