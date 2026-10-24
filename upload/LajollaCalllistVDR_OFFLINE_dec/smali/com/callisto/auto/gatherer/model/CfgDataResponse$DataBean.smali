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
    .locals 5
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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getRule()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getCapturePeriod()I

    move-result v3

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->getCapturePeriod()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v3

    invoke-virtual {v2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->isEnable()Z

    move-result v2

    if-eq v3, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getRulesBeanX()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->rules:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->version:Ljava/lang/String;

    return-object p0
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

    move-result-object p0

    return-object p0
.end method
