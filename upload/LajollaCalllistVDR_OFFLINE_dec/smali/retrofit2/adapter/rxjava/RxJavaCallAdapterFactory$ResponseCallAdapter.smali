.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;
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
    name = "ResponseCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Lr2/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lr2/g;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lr2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;->adapt(Lretrofit2/Call;)Lr2/d;

    move-result-object p0

    return-object p0
.end method

.method public adapt(Lretrofit2/Call;)Lr2/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Lr2/d;"
        }
    .end annotation

    .line 2
    new-instance p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;

    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit2/Call;)V

    .line 3
    new-instance p0, Lr2/d;

    sget-object p1, Lr2/d;->a:Lt2/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lr2/d;-><init>()V

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object p0
.end method
