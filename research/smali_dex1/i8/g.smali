.class public final Li8/g;
.super Lx7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Li8/g;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Li8/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Li8/g;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Lx7/f;)V
    .registers 8

    .line 1
    iget v0, p0, Li8/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_78

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Lx7/e;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_21

    .line 14
    .line 15
    aget-object v0, v0, v3

    .line 16
    .line 17
    new-instance v1, Lg8/c;

    .line 18
    .line 19
    new-instance v2, Lr5/c;

    .line 20
    .line 21
    const/16 v3, 0x15

    .line 22
    .line 23
    invoke-direct {v2, v3, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v1, p1, v2, v3}, Lg8/c;-><init>(Lx7/f;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lx7/e;->c(Lx7/f;)V

    .line 31
    .line 32
    .line 33
    goto :goto_64

    .line 34
    :cond_21
    new-instance v2, Li8/v;

    .line 35
    .line 36
    iget-object v4, p0, Li8/g;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Lp2/e;

    .line 39
    .line 40
    invoke-direct {v2, p1, v1, v4}, Li8/v;-><init>(Lx7/f;ILp2/e;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v2}, Lx7/f;->b(Lz7/a;)V

    .line 44
    .line 45
    .line 46
    move p1, v3

    .line 47
    :goto_2e
    if-ge p1, v1, :cond_64

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-gtz v4, :cond_38

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    const/4 v4, 0x0

    .line 58
    :goto_39
    if-eqz v4, :cond_3c

    .line 59
    .line 60
    goto :goto_64

    .line 61
    :cond_3c
    aget-object v4, v0, p1

    .line 62
    .line 63
    if-nez v4, :cond_5a

    .line 64
    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    .line 66
    .line 67
    const-string v1, "One of the sources is null"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_56

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Li8/v;->a(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v2, Li8/v;->b:Lx7/f;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    goto :goto_64

    .line 87
    :cond_56
    invoke-static {v0}, La/a;->s(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    goto :goto_64

    .line 91
    :cond_5a
    iget-object v5, v2, Li8/v;->d:[Li8/w;

    .line 92
    .line 93
    aget-object v5, v5, p1

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Lx7/e;->c(Lx7/f;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_2e

    .line 101
    :cond_64
    :goto_64
    return-void

    .line 102
    :pswitch_65
    iget-object v0, p0, Li8/g;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lx7/l;

    .line 105
    .line 106
    new-instance v1, Li8/e;

    .line 107
    .line 108
    iget-object v2, p0, Li8/g;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v2, Lb8/d;

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    invoke-direct {v1, p1, v2, v3}, Li8/e;-><init>(Lx7/f;Lb8/d;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lx7/l;->a(Lx7/m;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_65
    .end packed-switch
.end method
