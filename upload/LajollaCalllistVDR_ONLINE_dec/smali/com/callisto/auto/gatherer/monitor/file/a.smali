.class public final Lcom/callisto/auto/gatherer/monitor/file/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final d:Lcom/callisto/auto/gatherer/model/DataListBean;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->d:Lcom/callisto/auto/gatherer/model/DataListBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/callisto/auto/gatherer/model/FileBean;

    invoke-direct {v6}, Lcom/callisto/auto/gatherer/model/FileBean;-><init>()V

    invoke-virtual {v6, v5}, Lcom/callisto/auto/gatherer/model/FileBean;->setFilePath(Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v6, v5}, Lcom/callisto/auto/gatherer/model/FileBean;->setFileOpe(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/callisto/auto/gatherer/model/FileBean;

    invoke-direct {v5}, Lcom/callisto/auto/gatherer/model/FileBean;-><init>()V

    invoke-virtual {v5, v3}, Lcom/callisto/auto/gatherer/model/FileBean;->setFilePath(Ljava/lang/String;)V

    const-string v3, "2"

    invoke-virtual {v5, v3}, Lcom/callisto/auto/gatherer/model/FileBean;->setFileOpe(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->d:Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-virtual {v0, v4}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/DataListBean;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v2, "b010308"

    invoke-virtual {v1, v2, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010308"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final run()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "mount"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "(ro,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :try_start_1
    iget v2, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->i:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->i:I

    if-lez v2, :cond_1

    const/16 v4, 0x60c

    if-le v2, v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->i:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/file/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Lcom/callisto/auto/gatherer/monitor/file/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
