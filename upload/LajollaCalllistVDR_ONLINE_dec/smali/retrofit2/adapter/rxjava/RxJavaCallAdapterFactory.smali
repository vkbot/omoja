.class public final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;
    }
.end annotation


# instance fields
.field private final scheduler:Lz2/g;


# direct methods
.method private constructor <init>(Lz2/g;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 2

    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lz2/g;)V

    return-object v0
.end method

.method public static createWithScheduler(Lz2/g;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 1

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCallAdapter(Ljava/lang/reflect/Type;Lz2/g;)Lretrofit2/CallAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lz2/g;",
            ")",
            "Lretrofit2/CallAdapter<",
            "Lz2/d;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/Response;

    if-ne v1, v2, :cond_1

    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {v0, p1, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;Lz2/g;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-class v2, Lretrofit2/adapter/rxjava/Result;

    if-ne v1, v2, :cond_3

    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {v0, p1, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;-><init>(Ljava/lang/reflect/Type;Lz2/g;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;

    invoke-direct {v0, p1, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;-><init>(Ljava/lang/reflect/Type;Lz2/g;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "z2.h"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "z2.c"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-class v1, Lz2/d;

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-object v2

    :cond_0
    if-nez p3, :cond_2

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "Single"

    goto :goto_0

    :cond_1
    const-string p1, "Observable"

    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<? extends Foo>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v2}, Lretrofit2/adapter/rxjava/CompletableHelper;->createCallAdapter(Lz2/g;)Lretrofit2/CallAdapter;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1, v2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getCallAdapter(Ljava/lang/reflect/Type;Lz2/g;)Lretrofit2/CallAdapter;

    move-result-object p1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lretrofit2/adapter/rxjava/SingleHelper;->makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;

    move-result-object p1

    :cond_4
    return-object p1
.end method
