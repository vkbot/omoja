.class public final synthetic Le0/u2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/TestSpaceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/TestSpaceActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/u2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/u2;->c:Lcom/example/navistart/TestSpaceActivity;

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
    iget p1, p0, Le0/u2;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Le0/u2;->c:Lcom/example/navistart/TestSpaceActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/example/navistart/TestSpaceActivity;->h:I

    .line 10
    .line 11
    const/16 p1, 0x17

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    fill-array-data p1, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    new-array v3, v2, [B

    .line 21
    .line 22
    fill-array-data v3, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x9

    .line 33
    .line 34
    new-array p1, p1, [B

    .line 35
    .line 36
    fill-array-data p1, :array_2

    .line 37
    .line 38
    .line 39
    new-array v3, v2, [B

    .line 40
    .line 41
    fill-array-data v3, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v3, -0x1

    .line 49
    invoke-static {v3, p1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 50
    .line 51
    .line 52
    const-class p1, Lm0/n0;

    .line 53
    .line 54
    invoke-static {p1, v0}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/16 v1, 0xf

    .line 63
    .line 64
    new-array v1, v1, [B

    .line 65
    .line 66
    fill-array-data v1, :array_4

    .line 67
    .line 68
    .line 69
    new-array v2, v2, [B

    .line 70
    .line 71
    fill-array-data v2, :array_5

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_0
    sget p1, Lcom/example/navistart/TestSpaceActivity;->h:I

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_1
    sget p1, Lcom/example/navistart/TestSpaceActivity;->h:I

    .line 89
    .line 90
    new-instance p1, Lu1/d;

    .line 91
    .line 92
    invoke-direct {p1}, Lu1/d;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const v2, 0x7f09020e

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_0
    .array-data 1
        0x3bt
        0x39t
        -0x78t
        0x1dt
        0x40t
        0x54t
        0x56t
        -0x14t
        -0x35t
        0x4bt
        -0x11t
        0x78t
        0x21t
        0x5t
        0x38t
        -0x41t
        0x68t
        0x4at
        -0x2ft
        0x78t
        0x24t
        0x5t
        0x3at
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
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 1
        -0x15t
        -0x65t
        0x58t
        -0x58t
        -0x6ft
        -0x2bt
        -0x79t
        0x6et
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 1
        0x13t
        -0x11t
        -0x18t
        0x30t
        -0xat
        -0x28t
        0xbt
        -0x2ft
        0x22t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    nop

    :array_3
    .array-data 1
        0x47t
        -0x76t
        -0x65t
        0x44t
        -0x5bt
        -0x58t
        0x6at
        -0x4et
    .end array-data

    :array_4
    .array-data 1
        -0x39t
        -0x7at
        -0x55t
        -0x63t
        -0xft
        0x44t
        -0x76t
        0x6t
        -0x38t
        -0x6at
        -0x6at
        -0x4at
        -0x9t
        0x5bt
        -0x69t
    .end array-data

    :array_5
    .array-data 1
        -0x5at
        -0x1et
        -0x37t
        -0x3et
        -0x6et
        0x28t
        -0x1dt
        0x63t
    .end array-data
.end method
