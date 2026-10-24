.class public interface abstract Lcom/callisto/auto/gatherer/api/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract postHeartbeat(Lcom/callisto/auto/gatherer/model/CfgDataRequest;)Lretrofit2/Call;
    .param p1    # Lcom/callisto/auto/gatherer/model/CfgDataRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callisto/auto/gatherer/model/CfgDataRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/callisto/auto/gatherer/model/CfgDataResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/IdsR/api/v1/in/heartbeat"
    .end annotation
.end method

.method public abstract reportData(Lcom/callisto/auto/gatherer/model/BaseRequest;)Lretrofit2/Call;
    .param p1    # Lcom/callisto/auto/gatherer/model/BaseRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callisto/auto/gatherer/model/BaseRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/callisto/auto/gatherer/model/HostResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/IdsR/api/v1/in/security_event/reporthandler"
    .end annotation
.end method
