.class public final Ld1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Lcom/callisto/auto/gatherer/model/DataListBean;

.field public final d:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:I

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Ld1/e;->b:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x5

    iput p2, p0, Ld1/e;->h:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ld1/e;->j:Ljava/lang/Object;

    iput-object p1, p0, Ld1/e;->i:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ld1/e;->f:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ld1/e;->g:Ljava/util/ArrayList;

    new-instance p2, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {p2, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ld1/e;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    new-instance p1, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object p1, p0, Ld1/e;->c:Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Ld1/e;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ld1/e;->h:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ld1/e;->f:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ld1/e;->j:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ld1/e;->g:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ld1/e;->i:Ljava/lang/Object;

    new-instance p2, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {p2}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object p2, p0, Ld1/e;->c:Lcom/callisto/auto/gatherer/model/DataListBean;

    new-instance p2, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {p2, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ld1/e;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Ld1/e;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Ld1/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Ld1/e;->g:Ljava/util/ArrayList;

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

    check-cast v4, Lcom/callisto/auto/gatherer/model/LoginInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callisto/auto/gatherer/model/LoginInfo;

    invoke-virtual {v6, v4, v6}, Lcom/callisto/auto/gatherer/model/LoginInfo;->isLoginInfoEqual(Lcom/callisto/auto/gatherer/model/LoginInfo;Lcom/callisto/auto/gatherer/model/LoginInfo;)Z

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

    iget v6, p0, Ld1/e;->h:I

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0, v1}, Ld1/e;->b(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p0, v1}, Ld1/e;->b(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Ld1/e;->c:Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    const-string p1, "b010701"

    iget-object v1, p0, Ld1/e;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v1, p1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Ld1/e;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {p1, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "callisto_vdr"

    const-string v0, "Get event:b010701"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run()V
    .locals 32

    move-object/from16 v1, p0

    iget-object v0, v1, Ld1/e;->f:Ljava/util/ArrayList;

    iget-object v2, v1, Ld1/e;->g:Ljava/util/ArrayList;

    iget v6, v1, Ld1/e;->b:I

    iget v7, v1, Ld1/e;->h:I

    const/4 v8, 0x0

    iget-object v9, v1, Ld1/e;->i:Ljava/lang/Object;

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    check-cast v9, Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v9, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    filled-new-array {v11}, [I

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v12

    mul-int/lit16 v12, v12, 0x400

    const-string v13, "/proc/"

    iget-object v14, v1, Ld1/e;->j:Ljava/lang/Object;

    move-object v15, v14

    check-cast v15, Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x4

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-interface {v15, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/stat"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const/16 v5, 0xe

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v5, 0xf

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    const/16 v5, 0x10

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    aget-wide v24, v4, v8

    sub-long v24, v16, v24

    const/4 v3, 0x1

    aget-wide v26, v4, v3

    sub-long v26, v18, v26

    const/4 v3, 0x2

    aget-wide v28, v4, v3

    sub-long v28, v20, v28

    const/4 v3, 0x3

    aget-wide v30, v4, v3

    sub-long v3, v22, v30

    add-long v24, v24, v26

    add-long v24, v24, v28

    add-long v3, v24, v3

    check-cast v14, Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x4

    new-array v11, v11, [J

    aput-wide v16, v11, v8

    const/4 v13, 0x1

    aput-wide v18, v11, v13

    const/4 v13, 0x2

    aput-wide v20, v11, v13

    const/4 v13, 0x3

    aput-wide v22, v11, v13

    invoke-interface {v14, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v3, v3

    const-wide v13, 0x40f3880000000000L    # 80000.0

    div-double/2addr v3, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v13

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double/2addr v3, v13

    goto :goto_1

    :catch_0
    :cond_0
    const-wide/16 v3, 0x0

    :goto_1
    new-instance v5, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;

    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {v5, v11, v13, v3, v4}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;-><init>(Ljava/lang/String;ID)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/callisto/auto/gatherer/model/AppMemUsageBean;

    iget-object v4, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v5, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {v3, v4, v5, v12}, Lcom/callisto/auto/gatherer/model/AppMemUsageBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "callisto_vdr"

    const-string v5, "Get event:b010503"

    iget-object v6, v1, Ld1/e;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iget-object v9, v1, Ld1/e;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object v10, v1, Ld1/e;->c:Lcom/callisto/auto/gatherer/model/DataListBean;

    const-string v11, "b010503"

    if-lez v3, :cond_2

    new-instance v3, Ld1/c;

    invoke-direct {v3}, Ld1/c;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v12, v8, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {v9, v11, v10}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Top CPU Entries:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ld1/d;

    invoke-direct {v0}, Ld1/d;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {v9, v11, v10}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callisto/auto/gatherer/model/AppMemUsageBean;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Top Memory Entries:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void

    :goto_4
    :try_start_1
    new-instance v3, Ljava/lang/ProcessBuilder;

    new-array v4, v8, [Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "logcat"

    aput-object v5, v4, v8

    const-string v5, "-v"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "threadtime"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    :cond_4
    :goto_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "adbd    : host-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "offline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "okhttp.OkHttpClient"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v9

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_5

    move-object v3, v9

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    move-object v3, v9

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ld1/e;->b(Ljava/util/List;)V

    move-object v3, v9

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_5
    move-object v3, v9

    check-cast v3, Ljava/util/List;

    new-instance v6, Lcom/callisto/auto/gatherer/model/LoginInfo;

    invoke-direct {v6, v5}, Lcom/callisto/auto/gatherer/model/LoginInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v3, Lcom/callisto/auto/gatherer/model/LoginInfo;

    invoke-direct {v3, v5}, Lcom/callisto/auto/gatherer/model/LoginInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/callisto/auto/gatherer/model/LoginInfo;

    invoke-direct {v3, v5}, Lcom/callisto/auto/gatherer/model/LoginInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Ld1/e;->b(Ljava/util/List;)V

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual/range {p0 .. p0}, Ld1/e;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
