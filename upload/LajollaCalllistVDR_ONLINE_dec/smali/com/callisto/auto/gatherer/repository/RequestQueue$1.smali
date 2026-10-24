.class Lcom/callisto/auto/gatherer/repository/RequestQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callisto/auto/gatherer/repository/RequestQueue;->executeNextRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/callisto/auto/gatherer/model/HostResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/repository/RequestQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/callisto/auto/gatherer/model/HostResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "network failure:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestQueue"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-static {p1}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$208(Lcom/callisto/auto/gatherer/repository/RequestQueue;)I

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-static {p1}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$200(Lcom/callisto/auto/gatherer/repository/RequestQueue;)I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-static {p1}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$100(Lcom/callisto/auto/gatherer/repository/RequestQueue;)V

    goto :goto_0

    :cond_0
    const-string p1, "error response after retrying"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$202(Lcom/callisto/auto/gatherer/repository/RequestQueue;I)I

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$002(Lcom/callisto/auto/gatherer/repository/RequestQueue;Lretrofit2/Call;)Lretrofit2/Call;

    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/callisto/auto/gatherer/model/HostResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/callisto/auto/gatherer/model/HostResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callisto/auto/gatherer/model/HostResponse;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "successful response:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestQueue"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-static {p1, v0}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$002(Lcom/callisto/auto/gatherer/repository/RequestQueue;Lretrofit2/Call;)Lretrofit2/Call;

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-static {p1}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$100(Lcom/callisto/auto/gatherer/repository/RequestQueue;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;->this$0:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-static {p1, v0}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->access$002(Lcom/callisto/auto/gatherer/repository/RequestQueue;Lretrofit2/Call;)Lretrofit2/Call;

    :goto_0
    return-void
.end method
