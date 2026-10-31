.class public final Lh0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/example/navistart/cores/CarCmdProxy;

.field public c:Lcom/example/navistart/cores/ProLanProxy;

.field public d:Lcom/example/navistart/cores/ProBroProxy;

.field public e:Lcom/example/navistart/cores/AreaDisplayProxy;

.field public f:Li0/b;

.field public g:Lk1/a;

.field public h:Ln0/c;

.field public i:Lj1/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/a;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/a;->h:Ln0/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ln0/c;Lcom/example/navistart/cores/InterC;Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ln0/c;->i:Lj1/v;

    .line 2
    .line 3
    iput-object v0, p0, Lh0/a;->i:Lj1/v;

    .line 4
    .line 5
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lh0/a;->b:Lcom/example/navistart/cores/CarCmdProxy;

    .line 15
    .line 16
    iget-object v2, p0, Lh0/a;->c:Lcom/example/navistart/cores/ProLanProxy;

    .line 17
    .line 18
    iget-object v3, p0, Lh0/a;->d:Lcom/example/navistart/cores/ProBroProxy;

    .line 19
    .line 20
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    const/4 v3, 0x3

    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    aget-object v3, v1, v2

    .line 29
    .line 30
    instance-of v4, v3, Ljava/lang/AutoCloseable;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    :try_start_0
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 41
    .line 42
    invoke-static {v3}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {p2}, Lcom/example/navistart/cores/InterC;->c()V

    .line 49
    .line 50
    .line 51
    iget-object p2, p1, Ln0/c;->c:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;

    .line 52
    .line 53
    invoke-interface {p2, p3}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;->create(Landroid/content/Context;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lcom/example/navistart/cores/CarCmdProxy;

    .line 58
    .line 59
    iput-object p2, p0, Lh0/a;->b:Lcom/example/navistart/cores/CarCmdProxy;

    .line 60
    .line 61
    iget-object p2, p1, Ln0/c;->d:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;

    .line 62
    .line 63
    invoke-interface {p2, p3}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;->create(Landroid/content/Context;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lcom/example/navistart/cores/ProLanProxy;

    .line 68
    .line 69
    iput-object p2, p0, Lh0/a;->c:Lcom/example/navistart/cores/ProLanProxy;

    .line 70
    .line 71
    iget-object p2, p1, Ln0/c;->e:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;

    .line 72
    .line 73
    invoke-interface {p2, p3}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;->create(Landroid/content/Context;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/example/navistart/cores/ProBroProxy;

    .line 78
    .line 79
    iput-object p2, p0, Lh0/a;->d:Lcom/example/navistart/cores/ProBroProxy;

    .line 80
    .line 81
    iget-object p2, p1, Ln0/c;->f:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreat;

    .line 82
    .line 83
    invoke-interface {p2}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreat;->create()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Li0/b;

    .line 88
    .line 89
    iput-object p2, p0, Lh0/a;->f:Li0/b;

    .line 90
    .line 91
    iget-object p2, p1, Ln0/c;->g:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;

    .line 92
    .line 93
    invoke-interface {p2, p3}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;->create(Landroid/content/Context;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 98
    .line 99
    iput-object p2, p0, Lh0/a;->e:Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 100
    .line 101
    iget-object p2, p1, Ln0/c;->h:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreat;

    .line 102
    .line 103
    invoke-interface {p2}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreat;->create()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lk1/a;

    .line 108
    .line 109
    iput-object p2, p0, Lh0/a;->g:Lk1/a;

    .line 110
    .line 111
    iput-object p1, p0, Lh0/a;->h:Ln0/c;

    .line 112
    .line 113
    return-void
.end method
