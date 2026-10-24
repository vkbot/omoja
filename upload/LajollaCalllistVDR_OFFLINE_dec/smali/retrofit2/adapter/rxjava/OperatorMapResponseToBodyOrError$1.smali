.class Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;
.super Lr2/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->call(Lr2/i;)Lr2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr2/i;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

.field final synthetic val$child:Lr2/i;


# direct methods
.method public constructor <init>(Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;Lr2/i;Lr2/i;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->this$0:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    iput-object p3, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lr2/i;

    invoke-direct {p0, p2}, Lr2/i;-><init>(Lr2/i;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    iget-object p0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lr2/i;

    invoke-interface {p0}, Lr2/e;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lr2/i;

    invoke-interface {p0, p1}, Lr2/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lr2/i;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lr2/e;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lr2/i;

    new-instance v0, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-interface {p0, v0}, Lr2/e;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
