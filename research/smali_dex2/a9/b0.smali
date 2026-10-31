.class public abstract La9/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:La9/w;

.field public static final b:La9/y;

.field public static final c:La9/z;

.field public static final d:La9/a0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, La9/w;

    .line 2
    .line 3
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, La9/b0;->a:La9/w;

    .line 10
    .line 11
    sget-object v0, La9/y;->b:La9/y;

    .line 12
    .line 13
    sput-object v0, La9/b0;->b:La9/y;

    .line 14
    .line 15
    sget-object v0, La9/z;->b:La9/z;

    .line 16
    .line 17
    sput-object v0, La9/b0;->c:La9/z;

    .line 18
    .line 19
    sget-object v0, La9/a0;->b:La9/a0;

    .line 20
    .line 21
    sput-object v0, La9/b0;->d:La9/a0;

    .line 22
    .line 23
    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, La9/b0;->a:La9/w;

    .line 2
    .line 3
    if-ne p1, v0, :cond_5

    .line 4
    .line 5
    goto :goto_13

    .line 6
    :cond_5
    instance-of v0, p1, La9/d0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_17

    .line 10
    .line 11
    check-cast p1, La9/d0;

    .line 12
    .line 13
    iget-object p0, p1, La9/d0;->c:[Lv8/p1;

    .line 14
    .line 15
    array-length p1, p0

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    if-gez p1, :cond_14

    .line 19
    .line 20
    :goto_13
    return-void

    .line 21
    :cond_14
    aget-object p0, p0, p1

    .line 22
    .line 23
    throw v1

    .line 24
    :cond_17
    sget-object p1, La9/b0;->c:La9/z;

    .line 25
    .line 26
    invoke-interface {p0, v1, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ln0/b;->a()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_10

    .line 7
    .line 8
    sget-object p1, La9/b0;->b:La9/y;

    .line 9
    .line 10
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_10
    if-ne p1, v0, :cond_15

    .line 18
    .line 19
    sget-object p0, La9/b0;->a:La9/w;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_15
    instance-of v0, p1, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v0, :cond_2b

    .line 25
    .line 26
    new-instance v0, La9/d0;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v0, p1, p0}, La9/d0;-><init>(ILkotlin/coroutines/CoroutineContext;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, La9/b0;->d:La9/a0;

    .line 38
    .line 39
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2b
    invoke-static {}, Ln0/b;->a()V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method
