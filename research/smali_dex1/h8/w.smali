.class public final Lh8/w;
.super Lh8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh8/a0;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lh8/w;->d:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lp8/a;->b:Lp8/a;

    .line 8
    .line 9
    iput-object p1, p0, Lh8/w;->e:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lx7/b;Ljava/lang/Object;I)V
    .registers 4

    .line 12
    iput p3, p0, Lh8/w;->d:I

    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    iput-object p2, p0, Lh8/w;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .registers 6

    .line 1
    iget v0, p0, Lh8/w;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_64

    .line 4
    .line 5
    .line 6
    :try_start_5
    iget-object v0, p0, Lh8/w;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp8/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1e

    .line 16
    .line 17
    .line 18
    new-instance v1, Lh8/r0;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lo8/c;-><init>(Lx7/d;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, v1, Lo8/c;->c:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p1, p0, Lh8/a;->c:Lx7/b;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lx7/b;->d(Lx7/d;)V

    .line 28
    .line 29
    .line 30
    goto :goto_25

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 36
    .line 37
    .line 38
    :goto_25
    return-void

    .line 39
    :pswitch_26
    iget-object v0, p0, Lh8/w;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lr5/c;

    .line 42
    .line 43
    instance-of v1, p1, Le8/a;

    .line 44
    .line 45
    iget-object v2, p0, Lh8/a;->c:Lx7/b;

    .line 46
    .line 47
    if-eqz v1, :cond_3c

    .line 48
    .line 49
    new-instance v1, Lh8/u;

    .line 50
    .line 51
    check-cast p1, Le8/a;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct {v1, p1, v0, v3}, Lh8/u;-><init>(Le8/a;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lx7/b;->d(Lx7/d;)V

    .line 58
    .line 59
    .line 60
    goto :goto_44

    .line 61
    :cond_3c
    new-instance v1, Lh8/g0;

    .line 62
    .line 63
    invoke-direct {v1, p1, v0}, Lh8/g0;-><init>(Lx7/d;Lr5/c;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lx7/b;->d(Lx7/d;)V

    .line 67
    .line 68
    .line 69
    :goto_44
    return-void

    .line 70
    :pswitch_45
    iget-object v0, p0, Lh8/w;->e:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lb8/d;

    .line 73
    .line 74
    instance-of v1, p1, Le8/a;

    .line 75
    .line 76
    iget-object v2, p0, Lh8/a;->c:Lx7/b;

    .line 77
    .line 78
    if-eqz v1, :cond_5b

    .line 79
    .line 80
    new-instance v1, Lh8/u;

    .line 81
    .line 82
    check-cast p1, Le8/a;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-direct {v1, p1, v0, v3}, Lh8/u;-><init>(Le8/a;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lx7/b;->d(Lx7/d;)V

    .line 89
    .line 90
    .line 91
    goto :goto_63

    .line 92
    :cond_5b
    new-instance v1, Lh8/v;

    .line 93
    .line 94
    invoke-direct {v1, p1, v0}, Lh8/v;-><init>(Lx7/d;Lb8/d;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lx7/b;->d(Lx7/d;)V

    .line 98
    .line 99
    .line 100
    :goto_63
    return-void

    .line 101
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_45
        :pswitch_26
    .end packed-switch
.end method
