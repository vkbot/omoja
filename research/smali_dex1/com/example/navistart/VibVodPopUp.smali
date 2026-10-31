.class public Lcom/example/navistart/VibVodPopUp;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static b:Landroid/view/WindowManager;

.field public static c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .registers 7

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lj1/v;->b()Lz0/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lz0/a;->m()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    const/4 v5, -0x3

    .line 24
    const/16 v1, 0x2ee

    .line 25
    .line 26
    const/16 v2, 0x12c

    .line 27
    .line 28
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x11

    .line 32
    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 37
    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 39
    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x7f0c011d

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    sput-object v1, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Lj1/v;->b()Lz0/a;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    invoke-interface {v1, v2, v0}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 74
    .line 75
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    const v1, 0x7f09013a

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/Button;

    .line 85
    .line 86
    new-instance v1, Le0/j3;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-direct {v1, v2}, Le0/j3;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    const v2, 0x7f09013b

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/Button;

    .line 105
    .line 106
    new-instance v2, Le0/j3;

    .line 107
    .line 108
    const/4 v3, 0x1

    .line 109
    invoke-direct {v2, v3}, Le0/j3;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    sget-object v2, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 116
    .line 117
    const v3, 0x7f09013c

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Landroid/widget/Button;

    .line 125
    .line 126
    new-instance v3, Le0/j3;

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    invoke-direct {v3, v4}, Le0/j3;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    sget-object v3, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 136
    .line 137
    const v4, 0x7f09011c

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Landroid/widget/Button;

    .line 145
    .line 146
    new-instance v4, Le0/j3;

    .line 147
    .line 148
    const/4 v5, 0x3

    .line 149
    invoke-direct {v4, v5}, Le0/j3;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    new-instance v3, Le0/k3;

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    invoke-direct {v3, v4}, Le0/k3;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Le0/k3;

    .line 165
    .line 166
    const/4 v3, 0x1

    .line 167
    invoke-direct {v0, v3}, Le0/k3;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Le0/k3;

    .line 174
    .line 175
    const/4 v1, 0x2

    .line 176
    invoke-direct {v0, v1}, Le0/k3;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method
