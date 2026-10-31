.class public final synthetic Li7/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/atir/RadarActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/atir/RadarActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Li7/o;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li7/o;->c:Lcom/woha/atir/RadarActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Li7/o;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Li7/o;->c:Lcom/woha/atir/RadarActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget p1, v1, Lcom/woha/atir/RadarActivity;->f:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    add-int/2addr p1, v2

    .line 13
    iput p1, v1, Lcom/woha/atir/RadarActivity;->f:I

    .line 14
    .line 15
    iget-object p1, v1, Lcom/woha/atir/RadarActivity;->g:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Li7/q;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Li7/q;-><init>(Lcom/woha/atir/RadarActivity;I)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x3e8

    .line 26
    .line 27
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    iget p1, v1, Lcom/woha/atir/RadarActivity;->f:I

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    if-lt p1, v0, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, v1, Lcom/woha/atir/RadarActivity;->f:I

    .line 38
    .line 39
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/16 v0, 0x12

    .line 44
    .line 45
    new-array v0, v0, [B

    .line 46
    .line 47
    fill-array-data v0, :array_0

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    new-array v2, v2, [B

    .line 53
    .line 54
    fill-array-data v2, :array_1

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    invoke-virtual {p1, v0, v2, v3}, Lu0/a;->saveLong(Ljava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const v0, 0x7f130067

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void

    .line 81
    :pswitch_0
    sget p1, Lcom/woha/atir/RadarActivity;->h:I

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_1
    sget p1, Lcom/woha/atir/RadarActivity;->h:I

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-class v1, Li7/v;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Li7/v;

    .line 104
    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_1

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    new-instance v2, Li7/v;

    .line 125
    .line 126
    invoke-direct {v2}, Li7/v;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const v3, 0x7f09020e

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_0
    .array-data 1
        -0x3et
        -0x6et
        0xet
        0x2et
        -0x42t
        0x73t
        0x3bt
        -0x6t
        -0xet
        -0x6at
        0x3bt
        0x3dt
        -0x76t
        0x67t
        0x3et
        -0x17t
        -0x3et
        -0x4ft
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    nop

    .line 173
    :array_1
    .array-data 1
        -0x7at
        -0xdt
        0x7at
        0x4ft
        -0x15t
        0x3t
        0x5ft
        -0x65t
    .end array-data
.end method
