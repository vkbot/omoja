.class public Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RulesBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;,
        Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$HeartBeatBean;,
        Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;
    }
.end annotation


# instance fields
.field private filter:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;

.field private heartBeat:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$HeartBeatBean;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

.field private updateTime:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->this$1:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->filter:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;

    return-object v0
.end method

.method public getHeartBeat()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$HeartBeatBean;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->heartBeat:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$HeartBeatBean;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->updateTime:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setFilter(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->filter:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;

    return-void
.end method

.method public setHeartBeat(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$HeartBeatBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->heartBeat:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$HeartBeatBean;

    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$RulesBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->rules:Ljava/util/List;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->updateTime:J

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;->version:Ljava/lang/String;

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
