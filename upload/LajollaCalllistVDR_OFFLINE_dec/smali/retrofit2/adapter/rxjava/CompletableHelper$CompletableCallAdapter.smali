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
        "Lr2/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduler:Lr2/g;


# direct methods
.method public constructor <init>(Lr2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;->adapt(Lretrofit2/Call;)Lr2/c;

    move-result-object p0

    return-object p0
.end method

.method public adapt(Lretrofit2/Call;)Lr2/c;
    .locals 0

    .line 2
    new-instance p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;

    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;-><init>(Lretrofit2/Call;)V

    invoke-static {p0}, Lr2/c;->a(Lr2/a;)Lr2/c;

    move-result-object p0

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    const-class p0, Ljava/lang/Void;

    return-object p0
.end method
