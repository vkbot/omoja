.class public Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterBean"
.end annotation


# instance fields
.field private collectNum:I

.field private period:I

.field final synthetic this$2:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->this$2:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectNum()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->collectNum:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->period:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->type:I

    return v0
.end method

.method public setCollectNum(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->collectNum:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->period:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean$RulesBeanX$FilterBean;->type:I

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
