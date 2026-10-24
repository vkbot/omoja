.class final Lretrofit2/adapter/rxjava/SingleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/CallAdapter<",
            "Lz2/d;",
            ">;)",
            "Lretrofit2/CallAdapter<",
            "Lz2/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lretrofit2/adapter/rxjava/SingleHelper$1;

    invoke-direct {v0, p0}, Lretrofit2/adapter/rxjava/SingleHelper$1;-><init>(Lretrofit2/CallAdapter;)V

    return-object v0
.end method
