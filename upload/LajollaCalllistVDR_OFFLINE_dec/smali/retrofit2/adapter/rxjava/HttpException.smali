.class public final Lretrofit2/adapter/rxjava/HttpException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    iput v0, p0, Lretrofit2/adapter/rxjava/HttpException;->code:I

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/adapter/rxjava/HttpException;->message:Ljava/lang/String;

    iput-object p1, p0, Lretrofit2/adapter/rxjava/HttpException;->response:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 0

    iget p0, p0, Lretrofit2/adapter/rxjava/HttpException;->code:I

    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lretrofit2/adapter/rxjava/HttpException;->message:Ljava/lang/String;

    return-object p0
.end method

.method public response()Lretrofit2/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lretrofit2/adapter/rxjava/HttpException;->response:Lretrofit2/Response;

    return-object p0
.end method
