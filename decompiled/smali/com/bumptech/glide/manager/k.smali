.class public final Lcom/bumptech/glide/manager/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lc5/e;


# direct methods
.method public constructor <init>(Lc5/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->b:Lc5/e;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/p;
    .locals 3

    .line 1
    invoke-static {}, Lc0/p;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lc0/p;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/bumptech/glide/p;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    .line 18
    .line 19
    invoke-direct {v1, p3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lz3/f;

    .line 23
    .line 24
    invoke-direct {v2, p0, p4}, Lz3/f;-><init>(Lcom/bumptech/glide/manager/k;Landroidx/fragment/app/FragmentManager;)V

    .line 25
    .line 26
    .line 27
    iget-object p4, p0, Lcom/bumptech/glide/manager/k;->b:Lc5/e;

    .line 28
    .line 29
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance p4, Lcom/bumptech/glide/p;

    .line 33
    .line 34
    invoke-direct {p4, p2, v1, v2, p1}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/n;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/bumptech/glide/manager/j;

    .line 41
    .line 42
    invoke-direct {p1, p0, p3}, Lcom/bumptech/glide/manager/j;-><init>(Lcom/bumptech/glide/manager/k;Landroidx/lifecycle/Lifecycle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a(Lcom/bumptech/glide/manager/i;)V

    .line 46
    .line 47
    .line 48
    if-eqz p5, :cond_0

    .line 49
    .line 50
    invoke-virtual {p4}, Lcom/bumptech/glide/p;->onStart()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object p4

    .line 54
    :cond_1
    return-object v1
.end method
