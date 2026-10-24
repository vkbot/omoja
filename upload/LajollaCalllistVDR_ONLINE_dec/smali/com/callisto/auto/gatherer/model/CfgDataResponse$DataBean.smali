.class public Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/CfgDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private rules:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

.field final synthetic this$0:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

.field private type:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/CfgDataResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->this$0:Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareRules(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getCapturePeriod()I

    move-result v4

    invoke-virtual {v3}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getCapturePeriod()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v4

    invoke-virtual {v3}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v3

    if-eq v4, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->rules:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setRules(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->rules:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
