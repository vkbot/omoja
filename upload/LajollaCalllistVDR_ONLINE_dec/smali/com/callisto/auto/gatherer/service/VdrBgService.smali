.class public Lcom/callisto/auto/gatherer/service/VdrBgService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/callisto/auto/gatherer/utils/SPUtils$OnSharedPreferencesChangedListener;


# instance fields
.field public A:Ljava/util/concurrent/ScheduledFuture;

.field public B:Ljava/util/concurrent/ScheduledFuture;

.field public C:Ljava/util/concurrent/ScheduledFuture;

.field public D:Ljava/util/concurrent/ScheduledFuture;

.field public E:Ljava/util/concurrent/ScheduledFuture;

.field public F:Ljava/util/concurrent/ScheduledFuture;

.field public G:Lj1/a;

.field public H:Lj1/b;

.field public I:Lj1/c;

.field public J:Lg1/f;

.field public K:Lg1/c;

.field public L:Lg1/a;

.field public M:Lg1/d;

.field public N:Lg1/e;

.field public O:Ld1/b;

.field public P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

.field public Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

.field public final R:Lcom/google/gson/Gson;

.field public final b:I

.field public final c:I

.field public d:Ld1/a;

.field public e:Le1/a;

.field public f:Le1/a;

.field public g:Li1/d;

.field public h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public k:Ljava/util/concurrent/ScheduledFuture;

.field public l:Ljava/util/concurrent/ScheduledFuture;

.field public m:Ljava/util/concurrent/ScheduledFuture;

.field public n:Landroid/content/Context;

.field public o:Ljava/util/concurrent/ScheduledFuture;

.field public p:Ljava/util/concurrent/ScheduledFuture;

.field public q:Ljava/util/concurrent/ScheduledFuture;

.field public r:Ljava/util/concurrent/ScheduledFuture;

.field public s:Ljava/util/concurrent/ScheduledFuture;

.field public t:Ljava/util/concurrent/ScheduledFuture;

.field public u:Ljava/util/concurrent/ScheduledFuture;

.field public v:Ljava/util/concurrent/ScheduledFuture;

.field public w:Ljava/util/concurrent/ScheduledFuture;

.field public x:Ljava/util/concurrent/ScheduledFuture;

.field public y:Ljava/util/concurrent/ScheduledFuture;

.field public z:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:I

    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Ljava/lang/String;

    new-instance v0, Lcom/callisto/auto/gatherer/utils/SPUtils;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/utils/SPUtils;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->O:Ld1/b;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->R:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V
    .locals 10

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->H:Lj1/b;

    if-nez v0, :cond_0

    new-instance v0, Lj1/b;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lj1/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->H:Lj1/b;

    :cond_0
    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->H:Lj1/b;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-lez p1, :cond_2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v1, v0, Lj1/b;->e:D

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->H:Lj1/b;

    int-to-long v5, p2

    int-to-long v7, p3

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->l:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final b(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V
    .locals 10

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->G:Lj1/a;

    if-nez v0, :cond_0

    new-instance v0, Lj1/a;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lj1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->G:Lj1/a;

    :cond_0
    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->G:Lj1/a;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-lez p1, :cond_2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v1, v0, Lj1/a;->d:D

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->G:Lj1/a;

    int-to-long v5, p2

    int-to-long v7, p3

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final c(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V
    .locals 8

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->I:Lj1/c;

    if-nez v0, :cond_0

    new-instance v0, Lj1/c;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lj1/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->I:Lj1/c;

    :cond_0
    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->I:Lj1/c;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-lez p1, :cond_2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v0, Lj1/c;->f:Ljava/lang/Double;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->I:Lj1/c;

    int-to-long v3, p2

    int-to-long v5, p3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->m:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->R:Lcom/google/gson/Gson;

    const-string v1, "VdrBgService"

    const-string v2, "CVDR_CONFIG_DATA1"

    const-string v3, "initConfigurationData: "

    const-string v4, "convertStringToObj: "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "cfg_init_data.json"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Lcom/callisto/auto/gatherer/utils/SPUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\\A"

    if-nez v6, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/callisto/auto/gatherer/utils/SPUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/callisto/auto/gatherer/service/VdrBgService$1;

    invoke-direct {v8}, Lcom/callisto/auto/gatherer/service/VdrBgService$1;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    iput-object v8, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/callisto/auto/gatherer/service/VdrBgService$1;

    invoke-direct {v8}, Lcom/callisto/auto/gatherer/service/VdrBgService$1;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-static {p0, v2, v6}, Lcom/callisto/auto/gatherer/utils/SPUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->e(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getCapturePeriod()I

    move-result v3

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b010101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    if-le v3, v5, :cond_2

    invoke-virtual {p0, v2, v1, v3}, Lcom/callisto/auto/gatherer/service/VdrBgService;->b(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    if-le v3, v5, :cond_2

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/callisto/auto/gatherer/service/VdrBgService;->b(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010102"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->m:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    if-le v3, v5, :cond_5

    invoke-virtual {p0, v2, v1, v3}, Lcom/callisto/auto/gatherer/service/VdrBgService;->c(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    :cond_4
    if-le v3, v5, :cond_5

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/callisto/auto/gatherer/service/VdrBgService;->c(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V

    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010103"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->l:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    if-le v3, v5, :cond_8

    invoke-virtual {p0, v2, v1, v3}, Lcom/callisto/auto/gatherer/service/VdrBgService;->a(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :cond_7
    if-le v3, v5, :cond_8

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/callisto/auto/gatherer/service/VdrBgService;->a(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;II)V

    :cond_8
    :goto_3
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010105"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    sget-object v6, Lcom/google/android/material/slider/h;->h:Landroidx/emoji2/text/q;

    iput-object v4, v6, Landroidx/emoji2/text/q;->a:Landroid/content/Context;

    :cond_9
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010201"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    invoke-virtual {v4}, Ld1/a;->b()V

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    invoke-virtual {v4}, Ld1/a;->d()V

    :cond_b
    :goto_4
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010503"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->o:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_c

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_e

    if-le v3, v5, :cond_e

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ld1/e;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4, v0}, Ld1/e;-><init>(Landroid/content/Context;I)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->o:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->o:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    :cond_d
    if-le v3, v5, :cond_e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->o:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ld1/e;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4, v0}, Ld1/e;-><init>(Landroid/content/Context;I)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->o:Ljava/util/concurrent/ScheduledFuture;

    :cond_e
    :goto_5
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010204"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->O:Ld1/b;

    if-nez v4, :cond_f

    new-instance v4, Ld1/b;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v4, v6}, Ld1/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->O:Ld1/b;

    :cond_f
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->p:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_12

    if-le v3, v5, :cond_12

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->O:Ld1/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->p:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_6

    :cond_10
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->p:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_11
    if-le v3, v5, :cond_12

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->p:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->O:Ld1/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->p:Ljava/util/concurrent/ScheduledFuture;

    :cond_12
    :goto_6
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010205"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->q:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_13

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_15

    if-le v3, v5, :cond_15

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Landroidx/fragment/app/u0;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroidx/fragment/app/u0;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->q:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_7

    :cond_13
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->q:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    :cond_14
    if-le v3, v5, :cond_15

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->q:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Landroidx/fragment/app/u0;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroidx/fragment/app/u0;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->q:Ljava/util/concurrent/ScheduledFuture;

    :cond_15
    :goto_7
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010306"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->r:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_16

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_18

    if-le v3, v5, :cond_18

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/callisto/auto/gatherer/monitor/file/c;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/monitor/file/c;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->r:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_8

    :cond_16
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->r:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_8

    :cond_17
    if-le v3, v5, :cond_18

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->r:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/callisto/auto/gatherer/monitor/file/c;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/monitor/file/c;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->r:Ljava/util/concurrent/ScheduledFuture;

    :cond_18
    :goto_8
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010307"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->s:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_19

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-le v3, v5, :cond_1b

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/callisto/auto/gatherer/monitor/file/b;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/monitor/file/b;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->s:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_9

    :cond_19
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->s:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9

    :cond_1a
    if-le v3, v5, :cond_1b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->s:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/callisto/auto/gatherer/monitor/file/b;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/monitor/file/b;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->s:Ljava/util/concurrent/ScheduledFuture;

    :cond_1b
    :goto_9
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010308"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->t:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_1c

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_1e

    if-le v3, v5, :cond_1e

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/callisto/auto/gatherer/monitor/file/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/monitor/file/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->t:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_a

    :cond_1c
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->t:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_a

    :cond_1d
    if-le v3, v5, :cond_1e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->t:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/callisto/auto/gatherer/monitor/file/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/monitor/file/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->t:Ljava/util/concurrent/ScheduledFuture;

    :cond_1e
    :goto_a
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010401"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Le1/a;

    invoke-virtual {v4}, Le1/a;->d()V

    goto :goto_b

    :cond_1f
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Le1/a;

    invoke-virtual {v4}, Le1/a;->e()V

    :cond_20
    :goto_b
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010402"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->u:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_21

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_23

    if-le v3, v5, :cond_23

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Landroidx/appcompat/widget/s0;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroidx/appcompat/widget/s0;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->u:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_c

    :cond_21
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->u:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_c

    :cond_22
    if-le v3, v5, :cond_23

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->u:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Landroidx/appcompat/widget/s0;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroidx/appcompat/widget/s0;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->u:Ljava/util/concurrent/ScheduledFuture;

    :cond_23
    :goto_c
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010403"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Le1/a;

    invoke-virtual {v4}, Le1/a;->d()V

    goto :goto_d

    :cond_24
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Le1/a;

    invoke-virtual {v4}, Le1/a;->e()V

    :cond_25
    :goto_d
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010504"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->v:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_26

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_28

    if-le v3, v5, :cond_28

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lh1/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lh1/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->v:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_e

    :cond_26
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_e

    :cond_27
    if-le v3, v5, :cond_28

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lh1/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lh1/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->v:Ljava/util/concurrent/ScheduledFuture;

    :cond_28
    :goto_e
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010601"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {v4}, Li1/d;->d()V

    goto :goto_f

    :cond_29
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {v4}, Li1/d;->g()V

    :cond_2a
    :goto_f
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010603"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {v4}, Li1/d;->b()V

    goto :goto_10

    :cond_2b
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {v4}, Li1/d;->f()V

    :cond_2c
    :goto_10
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010605"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {v4}, Li1/d;->a()V

    goto :goto_11

    :cond_2d
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {v4}, Li1/d;->e()V

    :cond_2e
    :goto_11
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010608"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    iget-object v6, v4, Ld1/a;->i:Landroid/os/Handler;

    iget-object v4, v4, Ld1/a;->k:Landroidx/activity/c;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12

    :cond_2f
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    invoke-virtual {v4}, Ld1/a;->e()V

    :cond_30
    :goto_12
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010609"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->w:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_31

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_33

    if-le v3, v5, :cond_33

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Li1/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Li1/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->w:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_13

    :cond_31
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_13

    :cond_32
    if-le v3, v5, :cond_33

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Li1/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Li1/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->w:Ljava/util/concurrent/ScheduledFuture;

    :cond_33
    :goto_13
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010701"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->y:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_34

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_36

    if-le v3, v5, :cond_36

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ld1/e;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4, v5}, Ld1/e;-><init>(Landroid/content/Context;I)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->y:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_14

    :cond_34
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->y:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_14

    :cond_35
    if-le v3, v5, :cond_36

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->y:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ld1/e;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4, v5}, Ld1/e;-><init>(Landroid/content/Context;I)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->y:Ljava/util/concurrent/ScheduledFuture;

    :cond_36
    :goto_14
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010702"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->x:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_37

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_39

    if-le v3, v5, :cond_39

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lf1/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lf1/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->x:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_15

    :cond_37
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->x:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_15

    :cond_38
    if-le v3, v5, :cond_39

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->x:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lf1/a;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lf1/a;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->x:Ljava/util/concurrent/ScheduledFuture;

    :cond_39
    :goto_15
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b010703"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    sget-object v6, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    if-nez v6, :cond_3b

    const-class v6, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v7, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    if-nez v7, :cond_3a

    new-instance v7, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    :cond_3a
    monitor-exit v6

    goto :goto_16

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_3b
    :goto_16
    sget-object v4, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-virtual {v4}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->a()V

    goto :goto_18

    :cond_3c
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    sget-object v6, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    if-nez v6, :cond_3e

    const-class v6, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v7, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    if-nez v7, :cond_3d

    new-instance v7, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-direct {v7, v4}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    :cond_3d
    monitor-exit v6

    goto :goto_17

    :catchall_1
    move-exception p1

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_3e
    :goto_17
    sget-object v4, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-virtual {v4}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->c()V

    :cond_3f
    :goto_18
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020107"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->J:Lg1/f;

    if-nez v4, :cond_40

    new-instance v4, Lg1/f;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v4, v6}, Lg1/f;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->J:Lg1/f;

    :cond_40
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->z:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_41

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_43

    if-le v3, v5, :cond_43

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->J:Lg1/f;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->z:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_19

    :cond_41
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->z:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_19

    :cond_42
    if-le v3, v5, :cond_43

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->z:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->J:Lg1/f;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->z:Ljava/util/concurrent/ScheduledFuture;

    :cond_43
    :goto_19
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020108"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->K:Lg1/c;

    if-nez v4, :cond_44

    new-instance v4, Lg1/c;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v4, v6}, Lg1/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->K:Lg1/c;

    :cond_44
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->A:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_45

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_47

    if-le v3, v5, :cond_47

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->K:Lg1/c;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->A:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1a

    :cond_45
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_46

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->A:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1a

    :cond_46
    if-le v3, v5, :cond_47

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->A:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->K:Lg1/c;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->A:Ljava/util/concurrent/ScheduledFuture;

    :cond_47
    :goto_1a
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020109"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->L:Lg1/a;

    if-nez v4, :cond_48

    new-instance v4, Lg1/a;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v4, v6}, Lg1/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->L:Lg1/a;

    :cond_48
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->B:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_49

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_4b

    if-le v3, v5, :cond_4b

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->L:Lg1/a;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->B:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1b

    :cond_49
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_4a

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->B:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1b

    :cond_4a
    if-le v3, v5, :cond_4b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->B:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->L:Lg1/a;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->B:Ljava/util/concurrent/ScheduledFuture;

    :cond_4b
    :goto_1b
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020110"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->M:Lg1/d;

    if-nez v4, :cond_4c

    new-instance v4, Lg1/d;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v4, v6}, Lg1/d;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->M:Lg1/d;

    :cond_4c
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->C:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_4d

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_4f

    if-le v3, v5, :cond_4f

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->M:Lg1/d;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->C:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1c

    :cond_4d
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->C:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1c

    :cond_4e
    if-le v3, v5, :cond_4f

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->C:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->M:Lg1/d;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->C:Ljava/util/concurrent/ScheduledFuture;

    :cond_4f
    :goto_1c
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020111"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->N:Lg1/e;

    if-nez v4, :cond_50

    new-instance v4, Lg1/e;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v4, v6}, Lg1/e;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->N:Lg1/e;

    :cond_50
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->D:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_51

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_53

    if-le v3, v5, :cond_53

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->N:Lg1/e;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->D:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1d

    :cond_51
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_52

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->D:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1d

    :cond_52
    if-le v3, v5, :cond_53

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->D:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->N:Lg1/e;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->D:Ljava/util/concurrent/ScheduledFuture;

    :cond_53
    :goto_1d
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020203"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->E:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_54

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_56

    if-le v3, v5, :cond_56

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lg1/b;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lg1/b;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->E:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1e

    :cond_54
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->E:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1e

    :cond_55
    if-le v3, v5, :cond_56

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->E:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lg1/b;

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {v7, v4}, Lg1/b;-><init>(Landroid/content/Context;)V

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->E:Ljava/util/concurrent/ScheduledFuture;

    :cond_56
    :goto_1e
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b030101"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->F:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_57

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_59

    if-le v3, v5, :cond_59

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->F:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1f

    :cond_57
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_58

    iget-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->F:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1f

    :cond_58
    if-le v3, v5, :cond_59

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->F:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->F:Ljava/util/concurrent/ScheduledFuture;

    :cond_59
    :goto_1f
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "b030102"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v5

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v5}, Lcom/callisto/auto/gatherer/monitor/firewall/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5b
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "VdrBgService"

    const-string v1, "*********onCreate*********"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "VdrBg Service"

    const/4 v3, 0x1

    const-string v4, "VdrBgServiceChannel"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    iget-object v1, v0, Ld1/a;->b:Landroidx/appcompat/app/v;

    iget-object v0, v0, Ld1/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Le1/a;

    invoke-virtual {v0}, Le1/a;->e()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Le1/a;

    invoke-virtual {v0}, Le1/a;->e()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    iget-object v1, v0, Li1/d;->b:Li1/b;

    iget-object v2, v0, Li1/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Li1/d;->e:Li1/c;

    iget-object v2, v0, Li1/d;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v1, v0, Li1/d;->f:Li1/c;

    iget-object v0, v0, Li1/d;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/callisto/auto/gatherer/utils/SPUtils;->setOnSharedPreferencesChangedListener(Lcom/callisto/auto/gatherer/utils/SPUtils$OnSharedPreferencesChangedListener;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final onSharedPreferencesChanged(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSharedPreferencesChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VdrBgService"

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/callisto/auto/gatherer/service/VdrBgService$2;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/service/VdrBgService$2;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->e(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->compareRules(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->e(Ljava/util/List;)V

    :goto_0
    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->P:Lcom/callisto/auto/gatherer/model/CfgDataResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    const-string p1, "VdrBgService"

    const-string p2, "*********onStartCommand*********"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/app/Notification$Builder;

    const-string p3, "VdrBgServiceChannel"

    invoke-direct {p2, p0, p3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p2, "Running in the background"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :try_start_0
    invoke-static {p0}, Lcom/callisto/auto/gatherer/utils/SPUtils;->setOnSharedPreferencesChangedListener(Lcom/callisto/auto/gatherer/utils/SPUtils$OnSharedPreferencesChangedListener;)V

    const/16 p1, 0x15

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ld1/a;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Ld1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    invoke-virtual {p1}, Ld1/a;->c()V

    iget-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ld1/a;

    iget-object p3, p1, Ld1/a;->i:Landroid/os/Handler;

    iget-object p1, p1, Ld1/a;->k:Landroidx/activity/c;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Le1/a;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, Le1/a;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Le1/a;

    invoke-virtual {p1}, Le1/a;->d()V

    new-instance p1, Le1/a;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3, p2}, Le1/a;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Le1/a;

    invoke-virtual {p1}, Le1/a;->d()V

    new-instance p1, Li1/d;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Li1/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Li1/d;

    invoke-virtual {p1}, Li1/d;->c()V

    new-instance p1, Lj1/a;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lj1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->G:Lj1/a;

    new-instance p1, Lj1/b;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lj1/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->H:Lj1/b;

    new-instance p1, Lj1/c;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lj1/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->I:Lj1/c;

    new-instance p1, Lg1/f;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lg1/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->J:Lg1/f;

    new-instance p1, Lg1/c;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lg1/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->K:Lg1/c;

    new-instance p1, Lg1/a;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lg1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->L:Lg1/a;

    new-instance p1, Lg1/d;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lg1/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->M:Lg1/d;

    new-instance p1, Lg1/e;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lg1/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->N:Lg1/e;

    new-instance p1, Lcom/callisto/auto/gatherer/monitor/firewall/b;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/callisto/auto/gatherer/monitor/firewall/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->Q:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {p0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->d()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lb1/b;

    iget-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->n:Landroid/content/Context;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Ljava/lang/String;

    invoke-direct {v1, p1, p3, v2}, Lb1/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:I

    int-to-long v2, p1

    iget p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:I

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return p2
.end method
