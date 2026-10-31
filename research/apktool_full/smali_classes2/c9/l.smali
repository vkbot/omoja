.class public final Lc9/l;
.super Lv8/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lc9/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc9/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lv8/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc9/l;->b:Lc9/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lc9/d;->c:Lc9/d;

    .line 2
    .line 3
    sget-object v0, Lc9/k;->h:Lc9/i;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p1, p1, Lc9/g;->b:Lc9/b;

    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lc9/b;->c(Ljava/lang/Runnable;Lc9/i;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lc9/d;->c:Lc9/d;

    .line 2
    .line 3
    sget-object v0, Lc9/k;->h:Lc9/i;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object p1, p1, Lc9/g;->b:Lc9/b;

    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lc9/b;->c(Ljava/lang/Runnable;Lc9/i;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final limitedParallelism(I)Lv8/t;
    .locals 1

    .line 1
    invoke-static {p1}, La9/a;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lc9/k;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lv8/t;->limitedParallelism(I)Lv8/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
