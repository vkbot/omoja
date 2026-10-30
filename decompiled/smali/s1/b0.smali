.class public final synthetic Ls1/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/q0;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Ls1/q0;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    iput p3, p0, Ls1/b0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/b0;->c:Ls1/q0;

    .line 4
    .line 5
    iput-object p2, p0, Ls1/b0;->d:Landroid/app/AlertDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Ls1/b0;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Ls1/b0;->d:Landroid/app/AlertDialog;

    .line 4
    .line 5
    iget-object v1, p0, Ls1/b0;->c:Ls1/q0;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v1, p1}, Ls1/q0;->t(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    sget-object p1, Ls1/m0;->l:Ls1/m0;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    sget-object p1, Ls1/m0;->k:Ls1/m0;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 37
    .line 38
    .line 39
    sget-object p1, Ls1/m0;->j:Ls1/m0;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 46
    .line 47
    .line 48
    sget-object p1, Ls1/m0;->i:Ls1/m0;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    .line 56
    .line 57
    sget-object p1, Ls1/m0;->g:Ls1/m0;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 64
    .line 65
    .line 66
    sget-object p1, Ls1/m0;->d:Ls1/m0;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 73
    .line 74
    .line 75
    sget-object p1, Ls1/m0;->c:Ls1/m0;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_7
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    sget-object p1, Ls1/m0;->b:Ls1/m0;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ls1/q0;->d(Ls1/m0;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    invoke-virtual {v1, p1}, Ls1/q0;->t(Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_9
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/16 v0, 0x28

    .line 106
    .line 107
    new-array v0, v0, [B

    .line 108
    .line 109
    fill-array-data v0, :array_0

    .line 110
    .line 111
    .line 112
    const/16 v2, 0x8

    .line 113
    .line 114
    new-array v2, v2, [B

    .line 115
    .line 116
    fill-array-data v2, :array_1

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v1, Ls1/q0;->k:Ljava/util/concurrent/ExecutorService;

    .line 127
    .line 128
    new-instance v0, Ls1/c0;

    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    invoke-direct {v0, v1, v2}, Ls1/c0;-><init>(Ls1/q0;I)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :array_0
    .array-data 1
        0x5ft
        0x45t
        -0x17t
        0x60t
        -0x75t
        -0x18t
        -0x6t
        -0x3ft
        0x5et
        0x51t
        -0x17t
        0x66t
        -0x75t
        -0x15t
        -0x6t
        -0x31t
        -0x51t
        0x2t
        -0x7at
        0x1t
        -0x25t
        -0x75t
        -0x6dt
        -0x6ft
        0x34t
        0x2t
        -0x79t
        0x0t
        -0x13t
        -0x75t
        -0x62t
        -0x6ft
        0x32t
        0x2t
        -0x7ft
        0x1t
        -0x2ct
        -0x47t
        -0x55t
        -0x19t
    .end array-data

    :array_1
    .array-data 1
        -0x71t
        -0x2et
        0x39t
        -0x30t
        0x5bt
        0x5bt
        0x2bt
        0x41t
    .end array-data
.end method
