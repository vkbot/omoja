.class public final synthetic Lp0/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lp0/j;


# direct methods
.method public synthetic constructor <init>(Lp0/j;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp0/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lp0/g;->c:Lp0/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lp0/g;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lp0/g;->c:Lp0/j;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lp0/j;->e()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object v0, v2, Lp0/j;->c:Lm0/q2;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lm0/q2;->f:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const v3, 0x7f13042a

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Lm0/q2;->v()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lp0/j;->e()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2}, Lp0/j;->a()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_1
    :try_start_0
    iget-object v0, v2, Lp0/j;->b:Lp0/e;

    .line 39
    .line 40
    new-instance v3, Landroidx/fragment/app/h;

    .line 41
    .line 42
    const/16 v4, 0x1d

    .line 43
    .line 44
    invoke-direct {v3, v4, v2}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lp0/e;->f(Lp0/d;)Lo7/i4;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    new-array v4, v4, [B

    .line 71
    .line 72
    fill-array-data v4, :array_0

    .line 73
    .line 74
    .line 75
    const/16 v5, 0x8

    .line 76
    .line 77
    new-array v5, v5, [B

    .line 78
    .line 79
    fill-array-data v5, :array_1

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v3, Lo7/i4;

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    invoke-direct {v3, v1, v1, v4, v0}, Lo7/i4;-><init>(ZIILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    move-object v0, v3

    .line 107
    :goto_1
    iget-object v1, v2, Lp0/j;->d:Landroid/os/Handler;

    .line 108
    .line 109
    new-instance v3, Le0/j2;

    .line 110
    .line 111
    const/16 v4, 0x18

    .line 112
    .line 113
    invoke-direct {v3, v4, v2, v0}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_2
    iput v1, v2, Lp0/j;->j:I

    .line 121
    .line 122
    invoke-virtual {v2}, Lp0/j;->e()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 1
        -0x78t
        -0xct
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    nop

    .line 143
    :array_1
    .array-data 1
        -0x4et
        -0x2ct
        -0x75t
        0x4dt
        -0x18t
        0x32t
        -0x15t
        0x51t
    .end array-data
.end method
