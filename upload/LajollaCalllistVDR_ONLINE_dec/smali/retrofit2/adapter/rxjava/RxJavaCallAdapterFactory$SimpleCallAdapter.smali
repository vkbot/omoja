.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Lz2/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lz2/g;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lz2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->adapt(Lretrofit2/Call;)Lz2/d;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Lz2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Lz2/d;"
        }
    .end annotation

    .line 2
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit2/Call;)V

    .line 3
    new-instance p1, Lz2/d;

    sget-object p1, Lz2/d;->a:Lb3/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->instance()Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    .line 5
    new-instance p1, Lz2/d;

    invoke-direct {p1}, Lz2/d;-><init>()V

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
