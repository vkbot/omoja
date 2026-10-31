.class public final synthetic Le0/d2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Le0/d2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le0/d2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 1
    iget v0, p0, Le0/d2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Le0/d2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lq0/p;

    .line 10
    .line 11
    iget-object v2, v0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean p1, v0, Lq0/p;->f:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v0, Lq0/p;->g:Z

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    iput-wide v3, v0, Lq0/p;->h:J

    .line 28
    .line 29
    iput-boolean v2, v0, Lq0/p;->i:Z

    .line 30
    .line 31
    const v3, 0x7f130259

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lq0/p;->d(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lq0/p;->e()V

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 43
    .line 44
    iget-object v2, v0, Lq0/p;->a:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lq0/p;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v0, v1}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 62
    .line 63
    iget-object v1, v0, Lq0/p;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lq0/p;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v3, v2}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Le0/d2;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lcom/example/navistart/Notik;

    .line 88
    .line 89
    sget-object v2, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/example/navistart/Notik;->b(Z)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
