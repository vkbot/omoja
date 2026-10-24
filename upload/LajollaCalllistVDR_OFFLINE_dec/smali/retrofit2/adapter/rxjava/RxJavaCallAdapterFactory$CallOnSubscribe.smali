.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;->originalCall:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lr2/i;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;->call(Lr2/i;)V

    return-void
.end method

.method public call(Lr2/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/i;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object p0

    .line 3
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;

    invoke-direct {v0, p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;-><init>(Lretrofit2/Call;Lr2/i;)V

    .line 4
    invoke-virtual {p1, v0}, Lr2/i;->add(Lr2/j;)V

    .line 5
    invoke-virtual {p1, v0}, Lr2/i;->setProducer(Lr2/f;)V

    return-void
.end method
