.class public Lcom/callisto/auto/gatherer/model/CfgDataResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->data:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    return-object v0
.end method

.method public setData(Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->data:Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

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
