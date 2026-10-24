.class final Lretrofit2/adapter/rxjava/CompletableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;,
        Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallAdapter(Lz2/g;)Lretrofit2/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/g;",
            ")",
            "Lretrofit2/CallAdapter<",
            "Lz2/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;

    invoke-direct {v0, p0}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;-><init>(Lz2/g;)V

    return-object v0
.end method
