.class public Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RulesBean"
.end annotation


# instance fields
.field private capturePeriod:I

.field private enable:Z

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rule:Ljava/lang/String;

.field final synthetic this$2:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->this$2:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;

    iget v1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->capturePeriod:I

    iget p1, p1, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->capturePeriod:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCapturePeriod()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->capturePeriod:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->rule:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->capturePeriod:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->enable:Z

    return v0
.end method

.method public setCapturePeriod(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->capturePeriod:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->enable:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;->rule:Ljava/lang/String;

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
