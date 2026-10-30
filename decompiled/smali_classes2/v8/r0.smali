.class public abstract Lv8/r0;
.super Lv8/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv8/q0;

    .line 2
    .line 3
    sget-object v1, Lv8/t;->Key:Lv8/s;

    .line 4
    .line 5
    sget-object v2, Lv8/p0;->b:Lv8/p0;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/AbstractCoroutineContextKey;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
