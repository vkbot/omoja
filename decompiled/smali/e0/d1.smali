.class public final Le0/d1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Le0/d1;->b:I

    iput-object p2, p0, Le0/d1;->d:Ljava/lang/Object;

    iput-object p3, p0, Le0/d1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Le0/d1;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Le0/d1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Le0/d1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget p2, p0, Le0/d1;->b:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Le0/d1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lw0/o0;

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lj0/e;

    .line 15
    .line 16
    iput-object p1, p2, Lw0/o0;->b:Lj0/e;

    .line 17
    .line 18
    iget-object p1, p0, Le0/d1;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lm0/q1;

    .line 21
    .line 22
    iget-object p1, p1, Lm0/q1;->d:Lf5/j;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lf5/j;->run()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget-object p1, p0, Le0/d1;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, [Ljava/lang/String;

    .line 33
    .line 34
    aget-object p1, p1, p3

    .line 35
    .line 36
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p3, p0, Le0/d1;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p3, Ljava/lang/String;

    .line 43
    .line 44
    const-string p4, ""

    .line 45
    .line 46
    invoke-virtual {p2, p3, p4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2, p3, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lj0/e;

    .line 69
    .line 70
    iget-object p2, p0, Le0/d1;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p2, Lj0/c;

    .line 73
    .line 74
    iget-object p3, p0, Le0/d1;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p3, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {p3, p1}, Lj0/f;->f(Ljava/lang/String;Lj0/e;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_2
    iget-object p1, p0, Le0/d1;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, [Ljava/lang/String;

    .line 88
    .line 89
    aget-object p1, p1, p3

    .line 90
    .line 91
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const/16 p3, 0xa

    .line 96
    .line 97
    new-array p3, p3, [B

    .line 98
    .line 99
    fill-array-data p3, :array_0

    .line 100
    .line 101
    .line 102
    const/16 p4, 0x8

    .line 103
    .line 104
    new-array p4, p4, [B

    .line 105
    .line 106
    fill-array-data p4, :array_1

    .line 107
    .line 108
    .line 109
    invoke-static {p3, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p2, p3, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-class p2, Lh0/b;

    .line 117
    .line 118
    monitor-enter p2

    .line 119
    const/4 p3, 0x0

    .line 120
    :try_start_0
    invoke-static {p3}, Lh0/b;->x(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    monitor-exit p2

    .line 124
    iget-object p2, p0, Le0/d1;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p2, Lcom/example/navistart/MainActivity;

    .line 127
    .line 128
    sget-object p3, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/example/navistart/MainActivity;->t(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw p1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_0
    .array-data 1
        -0x56t
        0x7t
        0x2dt
        0x27t
        -0x25t
        0x6dt
        -0x75t
        -0x4dt
        -0x7bt
        0x23t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    nop

    .line 157
    :array_1
    .array-data 1
        -0x17t
        0x46t
        0x7ft
        0x77t
        -0x57t
        0x2t
        -0x13t
        -0x26t
    .end array-data
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    iget p1, p0, Le0/d1;->b:I

    .line 2
    .line 3
    return-void
.end method
