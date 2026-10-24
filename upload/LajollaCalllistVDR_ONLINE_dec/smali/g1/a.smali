.class public final Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:Lcom/callisto/auto/gatherer/model/ArpBean;

.field public final c:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final e:Lcom/callisto/auto/gatherer/model/DataListBean;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/a;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/a;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object v0, p0, Lg1/a;->e:Lcom/callisto/auto/gatherer/model/DataListBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg1/a;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lg1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lg1/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lg1/a;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v9, v5, v9}, Lcom/callisto/auto/gatherer/model/ArpBean;->isArpBeanEqual(Lcom/callisto/auto/gatherer/model/ArpBean;Lcom/callisto/auto/gatherer/model/ArpBean;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v7

    :cond_3
    if-nez v6, :cond_1

    invoke-virtual {v5, v7}, Lcom/callisto/auto/gatherer/model/ArpBean;->setArpStat(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v5, v9, v5}, Lcom/callisto/auto/gatherer/model/ArpBean;->isArpBeanEqual(Lcom/callisto/auto/gatherer/model/ArpBean;Lcom/callisto/auto/gatherer/model/ArpBean;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v8, v7

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    if-nez v8, :cond_5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/callisto/auto/gatherer/model/ArpBean;->setArpStat(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "Get event:b020109"

    const-string v6, "callisto_vdr"

    iget-object v7, p0, Lg1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    const-string v8, "b020109"

    iget-object v9, p0, Lg1/a;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object v10, p0, Lg1/a;->e:Lcom/callisto/auto/gatherer/model/DataListBean;

    if-lez v4, :cond_9

    invoke-virtual {v10, v1}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {v9, v8, v10}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v10, v3}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {v9, v8, v10}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/net/arp"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "HW address"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, v2

    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const/4 v4, 0x5

    aget-object v2, v2, v4

    new-instance v4, Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-direct {v4}, Lcom/callisto/auto/gatherer/model/ArpBean;-><init>()V

    iput-object v4, p0, Lg1/a;->b:Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v4, v1}, Lcom/callisto/auto/gatherer/model/ArpBean;->setIpAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lg1/a;->b:Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v1, v3}, Lcom/callisto/auto/gatherer/model/ArpBean;->setHwAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lg1/a;->b:Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v1, v2}, Lcom/callisto/auto/gatherer/model/ArpBean;->setDevice(Ljava/lang/String;)V

    iget-object v1, p0, Lg1/a;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lg1/a;->b:Lcom/callisto/auto/gatherer/model/ArpBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Lg1/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
