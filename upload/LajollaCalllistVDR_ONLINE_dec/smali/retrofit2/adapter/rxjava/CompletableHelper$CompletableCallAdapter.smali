.class Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/CompletableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletableCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Lz2/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduler:Lz2/g;


# direct methods
.method public constructor <init>(Lz2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;->adapt(Lretrofit2/Call;)Lz2/c;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Lz2/c;
    .locals 1

    .line 2
    new-instance v0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;-><init>(Lretrofit2/Call;)V

    invoke-static {v0}, Lz2/c;->a(Lz2/a;)Lz2/c;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    const-class v0, Ljava/lang/Void;

    return-object v0
.end method
