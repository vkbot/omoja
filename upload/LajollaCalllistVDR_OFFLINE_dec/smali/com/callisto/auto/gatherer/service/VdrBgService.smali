.class public Lcom/callisto/auto/gatherer/service/VdrBgService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/callisto/auto/gatherer/utils/SPUtils$OnSharedPreferencesChangedListener;


# instance fields
.field public a:Ljava/util/concurrent/ScheduledExecutorService;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field public e:Ljava/util/concurrent/ScheduledFuture;

.field public f:Ljava/util/concurrent/ScheduledFuture;

.field public g:Ld1/b;

.field public h:Ld1/a;

.field public i:Ld1/c;

.field public j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

.field public k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

.field public final l:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/utils/SPUtils;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/utils/SPUtils;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->l:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->l:Lcom/google/gson/Gson;

    const-string v1, "VDR_CONFIG_DATA"

    const-string v2, "initConfigurationData: "

    const-string v3, "convertStringToObj: "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "cfg_init_data.json"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v1, v5}, Lcom/callisto/auto/gatherer/utils/SPUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "\\A"

    if-nez v5, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/callisto/auto/gatherer/utils/SPUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    new-instance v7, Lcom/callisto/auto/gatherer/service/VdrBgService$1;

    invoke-direct {v7}, Lcom/callisto/auto/gatherer/service/VdrBgService$1;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    iput-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    new-instance v7, Ljava/util/Scanner;

    invoke-direct {v7, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callisto/auto/gatherer/service/VdrBgService$1;

    invoke-direct {v7}, Lcom/callisto/auto/gatherer/service/VdrBgService$1;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v6}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "VdrBgService"

    if-nez v6, :cond_1

    :try_start_2
    invoke-static {p0, v1, v5}, Lcom/callisto/auto/gatherer/utils/SPUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->b(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {p0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getCapturePeriod()I

    move-result v3

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b020108"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Ld1/b;

    if-nez v4, :cond_0

    new-instance v4, Ld1/b;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {v4, v6}, Ld1/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Ld1/b;

    :cond_0
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    if-le v3, v5, :cond_3

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Ld1/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_2
    if-le v3, v5, :cond_3

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Ld1/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020109"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ld1/a;

    if-nez v4, :cond_4

    new-instance v4, Ld1/a;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {v4, v6}, Ld1/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ld1/a;

    :cond_4
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    if-le v3, v5, :cond_7

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ld1/a;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    :cond_6
    if-le v3, v5, :cond_7

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ld1/a;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b020111"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ld1/c;

    if-nez v4, :cond_8

    new-instance v4, Ld1/c;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {v4, v6}, Ld1/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ld1/c;

    :cond_8
    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_b

    if-le v3, v5, :cond_b

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ld1/c;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :cond_a
    if-le v3, v5, :cond_b

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ld1/c;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    :goto_3
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "b030101"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_c

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_e

    if-le v3, v5, :cond_e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/callisto/auto/gatherer/monitor/firewall/b;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_4

    :cond_c
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    :cond_d
    if-le v3, v5, :cond_e

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v4, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/callisto/auto/gatherer/monitor/firewall/b;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    int-to-long v8, v1

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_e
    :goto_4
    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "b030102"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v5

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v5}, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "VdrBg Service"

    const/4 v2, 0x1

    const-string v3, "VdrBgServiceChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/callisto/auto/gatherer/utils/SPUtils;->setOnSharedPreferencesChangedListener(Lcom/callisto/auto/gatherer/utils/SPUtils$OnSharedPreferencesChangedListener;)V

    iget-object p0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

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

    iget-object v0, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->b(Ljava/util/List;)V

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

    iget-object v2, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->compareRules(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->b(Ljava/util/List;)V

    :goto_0
    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->j:Lcom/callisto/auto/gatherer/model/CfgDataResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    new-instance p1, Landroid/app/Notification$Builder;

    const-string p2, "VdrBgServiceChannel"

    invoke-direct {p1, p0, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "VdrBgService"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

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

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ld1/b;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Ld1/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->g:Ld1/b;

    new-instance p1, Ld1/a;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Ld1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->h:Ld1/a;

    new-instance p1, Ld1/c;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Ld1/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->i:Ld1/c;

    new-instance p1, Lcom/callisto/auto/gatherer/monitor/firewall/b;

    iget-object p3, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/callisto/auto/gatherer/monitor/firewall/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/service/VdrBgService;->k:Lcom/callisto/auto/gatherer/monitor/firewall/b;

    invoke-virtual {p0}, Lcom/callisto/auto/gatherer/service/VdrBgService;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return p2
.end method
