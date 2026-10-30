.class public final Le0/f1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/core/view/inputmethod/a;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Landroidx/core/view/inputmethod/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/f1;->b:[Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Le0/f1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Le0/f1;->d:Landroidx/core/view/inputmethod/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 1
    iget-object p1, p0, Le0/f1;->b:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, p1, p3

    .line 4
    .line 5
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object p3, p0, Le0/f1;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2, p3, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Le0/f1;->d:Landroidx/core/view/inputmethod/a;

    .line 15
    .line 16
    iget-object p2, p2, Landroidx/core/view/inputmethod/a;->a:Landroid/view/View;

    .line 17
    .line 18
    sget-object p3, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 19
    .line 20
    sget-object p3, Ln0/a;->e:Ln0/a;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    const/16 p5, 0x8

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    move p4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p4, p5

    .line 38
    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    sput-object p1, Lcom/example/navistart/LocServ;->n:Ljava/lang/Boolean;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    sput-object p1, Lcom/example/navistart/LocServ;->n:Ljava/lang/Boolean;

    .line 59
    .line 60
    sget-object p1, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lcom/example/navistart/LocServ;

    .line 67
    .line 68
    iget-object p2, p1, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    iget-object p2, p2, Li7/m;->e:Li7/g;

    .line 73
    .line 74
    invoke-virtual {p2}, Li7/g;->e()V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    iput-object p2, p1, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 79
    .line 80
    sput-object p2, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 81
    .line 82
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lh0/b;->i()Le0/a0;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Le0/a0;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catch_0
    const/16 p1, 0xc

    .line 94
    .line 95
    new-array p1, p1, [B

    .line 96
    .line 97
    fill-array-data p1, :array_0

    .line 98
    .line 99
    .line 100
    new-array p2, p5, [B

    .line 101
    .line 102
    fill-array-data p2, :array_1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 p2, -0x1

    .line 110
    invoke-static {p2, p1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance p2, Le0/v0;

    .line 115
    .line 116
    invoke-direct {p2, v0}, Le0/v0;-><init>(I)V

    .line 117
    .line 118
    .line 119
    const-wide/16 p3, 0x3e8

    .line 120
    .line 121
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    .line 123
    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :array_0
    .array-data 1
        -0x64t
        -0x10t
        -0x74t
        -0x7et
        -0x56t
        0x1t
        0x10t
        0x2et
        -0x59t
        -0x8t
        -0x6ft
        -0x6bt
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 1
        -0x2ft
        -0x6ft
        -0x1bt
        -0x14t
        -0x15t
        0x62t
        0x64t
        0x47t
    .end array-data
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
