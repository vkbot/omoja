.class public Lcom/woha/wifim/MainWifiManadger;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static v:Ljava/lang/String;


# instance fields
.field public b:Landroid/net/wifi/WifiManager;

.field public c:Ljava/util/ArrayList;

.field public d:Lm7/f;

.field public e:Lm7/g;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/net/ConnectivityManager;

.field public i:Z

.field public j:Landroid/widget/Button;

.field public k:Lcom/example/navistart/mainview/OnOffButton;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public o:Ljava/lang/String;

.field public p:Landroidx/appcompat/app/AlertDialog;

.field public q:Lokhttp3/Call;

.field public final r:Landroid/os/Handler;

.field public final s:Lm7/a;

.field public final t:Lm7/a;

.field public final u:Lcom/bumptech/glide/manager/r;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->r:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Lm7/a;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, v1}, Lm7/a;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->s:Lm7/a;

    .line 26
    .line 27
    new-instance v0, Lm7/a;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, p0, v1}, Lm7/a;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->t:Lm7/a;

    .line 34
    .line 35
    new-instance v0, Lcom/bumptech/glide/manager/r;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/manager/r;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->u:Lcom/bumptech/glide/manager/r;

    .line 42
    .line 43
    return-void
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, ""

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x3

    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    new-array v3, v2, [B

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    new-array v1, v0, [B

    .line 34
    .line 35
    fill-array-data v1, :array_2

    .line 36
    .line 37
    .line 38
    new-array v3, v2, [B

    .line 39
    .line 40
    fill-array-data v3, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    new-array v1, v0, [B

    .line 54
    .line 55
    fill-array-data v1, :array_4

    .line 56
    .line 57
    .line 58
    new-array v3, v2, [B

    .line 59
    .line 60
    fill-array-data v3, :array_5

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    new-array v1, v0, [B

    .line 74
    .line 75
    fill-array-data v1, :array_6

    .line 76
    .line 77
    .line 78
    new-array v3, v2, [B

    .line 79
    .line 80
    fill-array-data v3, :array_7

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v3, 0x1d

    .line 96
    .line 97
    if-lt v1, v3, :cond_3

    .line 98
    .line 99
    new-array v0, v0, [B

    .line 100
    .line 101
    fill-array-data v0, :array_8

    .line 102
    .line 103
    .line 104
    new-array v1, v2, [B

    .line 105
    .line 106
    fill-array-data v1, :array_9

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_3

    .line 118
    .line 119
    :cond_2
    const/4 p0, 0x1

    .line 120
    return p0

    .line 121
    :cond_3
    const/4 p0, 0x0

    .line 122
    return p0

    .line 123
    :array_0
    .array-data 1
        -0x53t
        -0x6et
        0x42t
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 1
        -0x6t
        -0x29t
        0x12t
        0x13t
        0x39t
        0x77t
        -0x65t
        0x54t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 1
        -0x19t
        0x4et
        -0x47t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_3
    .array-data 1
        -0x49t
        0x1dt
        -0xet
        0x55t
        0x2ct
        0x26t
        0x35t
        -0x34t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_4
    .array-data 1
        -0xat
        -0x64t
        0x16t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_5
    .array-data 1
        -0x5bt
        -0x23t
        0x53t
        -0x54t
        0x2t
        0x5ct
        0x41t
        0xdt
    .end array-data

    .line 158
    .line 159
    .line 160
    :array_6
    .array-data 1
        -0x7at
        -0x11t
        0x22t
    .end array-data

    :array_7
    .array-data 1
        -0x3dt
        -0x52t
        0x72t
        0x21t
        -0x3ct
        -0x2ct
        -0x4ft
        0x19t
    .end array-data

    :array_8
    .array-data 1
        -0x61t
        -0x30t
        0x31t
    .end array-data

    :array_9
    .array-data 1
        -0x30t
        -0x79t
        0x74t
        0xdt
        -0xbt
        -0x38t
        0x65t
        0x30t
    .end array-data
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->l:Landroid/widget/Button;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f1304f9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 31
    .line 32
    const v0, -0xff0100

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/OnOffButton;->setEnable(Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/OnOffButton;->setOnOff(Ljava/lang/Boolean;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/OnOffButton;->setTextButton(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->l:Landroid/widget/Button;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f1304fa

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 89
    .line 90
    const/high16 v0, -0x10000

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 96
    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/OnOffButton;->setEnable(Ljava/lang/Boolean;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 103
    .line 104
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/OnOffButton;->setOnOff(Ljava/lang/Boolean;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/OnOffButton;->setTextButton(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lm7/k;->c(Landroid/content/Context;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->d:Lm7/f;

    .line 14
    .line 15
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v0, v1, v1, v2}, Lm7/f;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0}, Lm7/k;->c(Landroid/content/Context;Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->y()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Le0/m;->x(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f050377

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0c002c

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v1, 0x4

    .line 52
    new-array v2, v1, [B

    .line 53
    .line 54
    fill-array-data v2, :array_0

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    new-array v4, v3, [B

    .line 60
    .line 61
    fill-array-data v4, :array_1

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 75
    .line 76
    const/16 p1, 0xc

    .line 77
    .line 78
    new-array p1, p1, [B

    .line 79
    .line 80
    fill-array-data p1, :array_2

    .line 81
    .line 82
    .line 83
    new-array v2, v3, [B

    .line 84
    .line 85
    fill-array-data v2, :array_3

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->h:Landroid/net/ConnectivityManager;

    .line 99
    .line 100
    const p1, 0x7f09019c

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->f:Landroid/widget/TextView;

    .line 110
    .line 111
    const p1, 0x7f090198

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->g:Landroid/widget/TextView;

    .line 121
    .line 122
    const p1, 0x7f0905eb

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroid/widget/Button;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 132
    .line 133
    const p1, 0x7f0905ec

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lcom/example/navistart/mainview/OnOffButton;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 143
    .line 144
    const v2, 0x7f090384

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/widget/Button;

    .line 152
    .line 153
    const v2, 0x7f070186

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 164
    .line 165
    const v2, 0x7f090511

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Landroid/widget/TextView;

    .line 173
    .line 174
    const v2, 0x7f050381

    .line 175
    .line 176
    .line 177
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    const/high16 v2, 0x41880000    # 17.0f

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 187
    .line 188
    .line 189
    const p1, 0x7f0904a8

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroid/widget/Button;

    .line 197
    .line 198
    new-instance v2, Lm7/d;

    .line 199
    .line 200
    invoke-direct {v2, p0, v0}, Lm7/d;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    const p1, 0x7f0903ee

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Landroid/widget/Button;

    .line 214
    .line 215
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->l:Landroid/widget/Button;

    .line 216
    .line 217
    const p1, 0x7f0903eb

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    const p1, 0x7f0905ed

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Landroid/widget/Button;

    .line 236
    .line 237
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->m:Landroid/widget/Button;

    .line 238
    .line 239
    const v2, 0x7f1300cd

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->m:Landroid/widget/Button;

    .line 246
    .line 247
    new-instance v2, Lm7/d;

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    invoke-direct {v2, p0, v4}, Lm7/d;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 257
    .line 258
    new-instance v2, Lm7/a;

    .line 259
    .line 260
    const/4 v4, 0x3

    .line 261
    invoke-direct {v2, p0, v4}, Lm7/a;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v2}, Lcom/example/navistart/mainview/OnOffButton;->setRunnableOn(Ljava/lang/Runnable;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 268
    .line 269
    new-instance v2, Lm7/a;

    .line 270
    .line 271
    invoke-direct {v2, p0, v1}, Lm7/a;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v2}, Lcom/example/navistart/mainview/OnOffButton;->setRunnableOff(Ljava/lang/Runnable;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 278
    .line 279
    new-instance v1, Lm7/d;

    .line 280
    .line 281
    const/4 v2, 0x2

    .line 282
    invoke-direct {v1, p0, v2}, Lm7/d;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->l:Landroid/widget/Button;

    .line 289
    .line 290
    new-instance v1, Lm7/d;

    .line 291
    .line 292
    const/4 v2, 0x3

    .line 293
    invoke-direct {v1, p0, v2}, Lm7/d;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    const/16 p1, 0x27

    .line 300
    .line 301
    new-array p1, p1, [B

    .line 302
    .line 303
    fill-array-data p1, :array_4

    .line 304
    .line 305
    .line 306
    new-array v1, v3, [B

    .line 307
    .line 308
    fill-array-data v1, :array_5

    .line 309
    .line 310
    .line 311
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    const/4 v1, 0x1

    .line 320
    if-nez p1, :cond_0

    .line 321
    .line 322
    move v0, v1

    .line 323
    :cond_0
    if-nez v0, :cond_1

    .line 324
    .line 325
    const/16 p1, 0x27

    .line 326
    .line 327
    new-array p1, p1, [B

    .line 328
    .line 329
    fill-array-data p1, :array_6

    .line 330
    .line 331
    .line 332
    new-array v2, v3, [B

    .line 333
    .line 334
    fill-array-data v2, :array_7

    .line 335
    .line 336
    .line 337
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    filled-new-array {p1}, [Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    :cond_1
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 349
    .line 350
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 351
    .line 352
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 356
    .line 357
    .line 358
    new-instance p1, Lm7/g;

    .line 359
    .line 360
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 361
    .line 362
    new-instance v4, Lm7/b;

    .line 363
    .line 364
    invoke-direct {v4, p0}, Lm7/b;-><init>(Lcom/woha/wifim/MainWifiManadger;)V

    .line 365
    .line 366
    .line 367
    invoke-direct {p1, v2, v4}, Lm7/g;-><init>(Landroid/net/wifi/WifiManager;Lm7/b;)V

    .line 368
    .line 369
    .line 370
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->e:Lm7/g;

    .line 371
    .line 372
    new-instance p1, Landroid/content/IntentFilter;

    .line 373
    .line 374
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .line 376
    .line 377
    const/16 v2, 0x1d

    .line 378
    .line 379
    new-array v4, v2, [B

    .line 380
    .line 381
    fill-array-data v4, :array_8

    .line 382
    .line 383
    .line 384
    new-array v5, v3, [B

    .line 385
    .line 386
    fill-array-data v5, :array_9

    .line 387
    .line 388
    .line 389
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    new-array v2, v2, [B

    .line 397
    .line 398
    fill-array-data v2, :array_a

    .line 399
    .line 400
    .line 401
    new-array v4, v3, [B

    .line 402
    .line 403
    fill-array-data v4, :array_b

    .line 404
    .line 405
    .line 406
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const/16 v2, 0x23

    .line 414
    .line 415
    new-array v2, v2, [B

    .line 416
    .line 417
    fill-array-data v2, :array_c

    .line 418
    .line 419
    .line 420
    new-array v4, v3, [B

    .line 421
    .line 422
    fill-array-data v4, :array_d

    .line 423
    .line 424
    .line 425
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const/16 v2, 0x28

    .line 433
    .line 434
    new-array v2, v2, [B

    .line 435
    .line 436
    fill-array-data v2, :array_e

    .line 437
    .line 438
    .line 439
    new-array v3, v3, [B

    .line 440
    .line 441
    fill-array-data v3, :array_f

    .line 442
    .line 443
    .line 444
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->e:Lm7/g;

    .line 452
    .line 453
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    .line 455
    .line 456
    new-instance v3, Lm7/f;

    .line 457
    .line 458
    iget-object v4, p0, Lcom/woha/wifim/MainWifiManadger;->c:Ljava/util/ArrayList;

    .line 459
    .line 460
    if-eqz v0, :cond_3

    .line 461
    .line 462
    :try_start_0
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 463
    .line 464
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    if-eqz p1, :cond_2

    .line 469
    .line 470
    goto :goto_0

    .line 471
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .line 473
    goto :goto_0

    .line 474
    :catch_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 475
    .line 476
    :goto_0
    move-object v5, p1

    .line 477
    goto :goto_1

    .line 478
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 479
    .line 480
    goto :goto_0

    .line 481
    :goto_1
    const-string p1, ""

    .line 482
    .line 483
    if-eqz v0, :cond_4

    .line 484
    .line 485
    :try_start_1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 486
    .line 487
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    if-eqz v0, :cond_4

    .line 492
    .line 493
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    if-eqz v2, :cond_4

    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :catch_1
    :cond_4
    move-object v6, p1

    .line 504
    new-instance v7, Lm7/b;

    .line 505
    .line 506
    invoke-direct {v7, p0}, Lm7/b;-><init>(Lcom/woha/wifim/MainWifiManadger;)V

    .line 507
    .line 508
    .line 509
    new-instance v8, Lm7/b;

    .line 510
    .line 511
    invoke-direct {v8, p0}, Lm7/b;-><init>(Lcom/woha/wifim/MainWifiManadger;)V

    .line 512
    .line 513
    .line 514
    invoke-direct/range {v3 .. v8}, Lm7/f;-><init>(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Lm7/b;Lm7/b;)V

    .line 515
    .line 516
    .line 517
    iput-object v3, p0, Lcom/woha/wifim/MainWifiManadger;->d:Lm7/f;

    .line 518
    .line 519
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 520
    .line 521
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->v()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->s()V

    .line 528
    .line 529
    .line 530
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 531
    .line 532
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    invoke-virtual {p0, p1}, Lcom/woha/wifim/MainWifiManadger;->A(Z)V

    .line 537
    .line 538
    .line 539
    sput-object p0, Lm7/g;->c:Lcom/woha/wifim/MainWifiManadger;

    .line 540
    .line 541
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->h:Landroid/net/ConnectivityManager;

    .line 542
    .line 543
    if-eqz p1, :cond_6

    .line 544
    .line 545
    iget-boolean v0, p0, Lcom/woha/wifim/MainWifiManadger;->i:Z

    .line 546
    .line 547
    if-eqz v0, :cond_5

    .line 548
    .line 549
    goto :goto_2

    .line 550
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->u:Lcom/bumptech/glide/manager/r;

    .line 551
    .line 552
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 553
    .line 554
    .line 555
    iput-boolean v1, p0, Lcom/woha/wifim/MainWifiManadger;->i:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    .line 557
    :catch_2
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->z()V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :array_0
    .array-data 1
        -0x71t
        0x1dt
        -0x6ft
        0x33t
    .end array-data

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_1
    .array-data 1
        -0x8t
        0x74t
        -0x9t
        0x5at
        0x17t
        0x4bt
        0x14t
        0x4dt
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_2
    .array-data 1
        0x2ft
        -0x39t
        -0x18t
        0x9t
        0x45t
        0x43t
        0x41t
        -0x45t
        0x3at
        -0x3ft
        -0xet
        0x1et
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_3
    .array-data 1
        0x4ct
        -0x58t
        -0x7at
        0x67t
        0x20t
        0x20t
        0x35t
        -0x2et
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_4
    .array-data 1
        0x4t
        -0x30t
        -0x7at
        -0xct
        0x13t
        -0x7at
        0x6at
        0x74t
        0x15t
        -0x25t
        -0x70t
        -0x15t
        0x15t
        -0x64t
        0x7dt
        0x33t
        0xat
        -0x30t
        -0x34t
        -0x39t
        0x3ft
        -0x54t
        0x4bt
        0x9t
        0x36t
        -0x1ft
        -0x5ct
        -0x31t
        0x32t
        -0x56t
        0x51t
        0x16t
        0x2at
        -0x3t
        -0x5dt
        -0x2et
        0x35t
        -0x60t
        0x40t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_5
    .array-data 1
        0x65t
        -0x42t
        -0x1et
        -0x7at
        0x7ct
        -0x11t
        0xet
        0x5at
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_6
    .array-data 1
        0x79t
        -0x10t
        -0x6at
        -0x79t
        -0x4bt
        0x6t
        -0x42t
        0x71t
        0x68t
        -0x5t
        -0x80t
        -0x68t
        -0x4dt
        0x1ct
        -0x57t
        0x36t
        0x77t
        -0x10t
        -0x24t
        -0x4ct
        -0x67t
        0x2ct
        -0x61t
        0xct
        0x4bt
        -0x3ft
        -0x4ct
        -0x44t
        -0x6ct
        0x2at
        -0x7bt
        0x13t
        0x57t
        -0x23t
        -0x4dt
        -0x5ft
        -0x6dt
        0x20t
        -0x6ct
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :array_7
    .array-data 1
        0x18t
        -0x62t
        -0xet
        -0xbt
        -0x26t
        0x6ft
        -0x26t
        0x5ft
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    :array_8
    .array-data 1
        0x74t
        0x45t
        -0x7bt
        -0x30t
        0x48t
        0x6et
        0x52t
        -0x52t
        0x7bt
        0x4et
        -0x6bt
        -0x74t
        0x50t
        0x6et
        0x50t
        -0x17t
        0x3bt
        0x78t
        -0x5et
        -0x1dt
        0x69t
        0x58t
        0x64t
        -0x3bt
        0x46t
        0x7et
        -0x53t
        -0xat
        0x74t
    .end array-data

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    nop

    .line 677
    :array_9
    .array-data 1
        0x15t
        0x2bt
        -0x1ft
        -0x5et
        0x27t
        0x7t
        0x36t
        -0x80t
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :array_a
    .array-data 1
        0x3ft
        -0x51t
        0x75t
        0x58t
        -0x49t
        -0x4ft
        0x4dt
        -0x58t
        0x30t
        -0x5ct
        0x65t
        0x4t
        -0x51t
        -0x4ft
        0x4ft
        -0x11t
        0x70t
        -0x6et
        0x45t
        0x6bt
        -0x74t
        -0x63t
        0x76t
        -0x3bt
        0x16t
        -0x80t
        0x5ft
        0x6dt
        -0x63t
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    nop

    .line 705
    :array_b
    .array-data 1
        0x5et
        -0x3ft
        0x11t
        0x2at
        -0x28t
        -0x28t
        0x29t
        -0x7at
    .end array-data

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_c
    .array-data 1
        0x5et
        0x48t
        -0x29t
        0x4ct
        -0x2t
        0x4at
        -0x9t
        -0x63t
        0x51t
        0x43t
        -0x39t
        0x10t
        -0x1at
        0x4at
        -0xbt
        -0x26t
        0x11t
        0x71t
        -0x6t
        0x78t
        -0x28t
        0x7ct
        -0x40t
        -0x19t
        0x7et
        0x72t
        -0xat
        0x61t
        -0x2et
        0x6bt
        -0x2et
        -0x3t
        0x78t
        0x63t
        -0x9t
    .end array-data

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_d
    .array-data 1
        0x3ft
        0x26t
        -0x4dt
        0x3et
        -0x6ft
        0x23t
        -0x6dt
        -0x4dt
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_e
    .array-data 1
        -0x43t
        0x1dt
        0x49t
        -0x3bt
        0x10t
        0x6bt
        -0x12t
        -0x46t
        -0x4et
        0x16t
        0x59t
        -0x67t
        0x8t
        0x6bt
        -0x14t
        -0x3t
        -0xet
        0x0t
        0x58t
        -0x39t
        0xft
        0x6et
        -0x1dt
        -0x9t
        -0x43t
        0x1dt
        0x59t
        -0x67t
        0x2ct
        0x56t
        -0x35t
        -0x40t
        -0x67t
        0x2ct
        0x6et
        -0x1t
        0x3et
        0x4ct
        -0x33t
        -0x2ft
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :array_f
    .array-data 1
        -0x24t
        0x73t
        0x2dt
        -0x49t
        0x7ft
        0x2t
        -0x76t
        -0x6ct
    .end array-data
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->r:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/woha/wifim/MainWifiManadger;->s:Lm7/a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lm7/k;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-class v0, Lm7/k;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-static {}, Lm7/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->e:Lm7/g;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lm7/g;->c:Lcom/woha/wifim/MainWifiManadger;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->p:Landroidx/appcompat/app/AlertDialog;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/woha/wifim/MainWifiManadger;->i:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->h:Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :try_start_1
    iget-object v1, p0, Lcom/woha/wifim/MainWifiManadger;->u:Lcom/bumptech/glide/manager/r;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/woha/wifim/MainWifiManadger;->i:Z

    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    array-length p1, p3

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    aget p1, p3, p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->s()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/woha/wifim/MainWifiManadger;->A(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->v()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/woha/wifim/MainWifiManadger;->z()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final s()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f1304ef

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    new-array v3, v3, [B

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    new-array v5, v4, [B

    .line 35
    .line 36
    fill-array-data v5, :array_1

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x65

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/woha/wifim/MainWifiManadger;->f:Landroid/widget/TextView;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    new-array v3, v3, [B

    .line 63
    .line 64
    const/16 v5, 0x32

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    aput-byte v5, v3, v6

    .line 68
    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    fill-array-data v4, :array_2

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v4, ""

    .line 79
    .line 80
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const v2, 0x7f1304e6

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->f:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->f:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :array_0
    .array-data 1
        -0x1at
        0x2dt
        -0x64t
        -0x31t
        -0x6et
        0x27t
        -0x3ct
        -0x3et
        -0x56t
        0x31t
        -0x66t
        -0x2et
        -0x70t
        0x2dt
        -0x6bt
        -0x69t
    .end array-data

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
        -0x3ct
        0x11t
        -0x17t
        -0x5ft
        -0x7t
        0x49t
        -0x55t
        -0x4bt
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
        0x10t
        -0x15t
        -0x72t
        0x40t
        0x68t
        -0x2ft
        0x21t
        -0x6et
    .end array-data
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/16 v5, -0x6e

    .line 16
    .line 17
    aput-byte v5, v3, v4

    .line 18
    .line 19
    const/16 v5, 0x8

    .line 20
    .line 21
    new-array v6, v5, [B

    .line 22
    .line 23
    fill-array-data v6, :array_0

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v6, v1, p1}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-array v3, v2, [B

    .line 30
    .line 31
    const/16 v6, 0xe

    .line 32
    .line 33
    aput-byte v6, v3, v4

    .line 34
    .line 35
    new-array v6, v5, [B

    .line 36
    .line 37
    fill-array-data v6, :array_1

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v6, v1}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p3, ""

    .line 54
    .line 55
    :goto_0
    const/4 v1, 0x3

    .line 56
    new-array v3, v1, [B

    .line 57
    .line 58
    fill-array-data v3, :array_2

    .line 59
    .line 60
    .line 61
    new-array v6, v5, [B

    .line 62
    .line 63
    fill-array-data v6, :array_3

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    new-array v3, v2, [B

    .line 84
    .line 85
    const/16 v6, -0x72

    .line 86
    .line 87
    aput-byte v6, v3, v4

    .line 88
    .line 89
    new-array v6, v5, [B

    .line 90
    .line 91
    fill-array-data v6, :array_4

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v6, v1, p2}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-array p2, v2, [B

    .line 98
    .line 99
    const/16 v3, 0x33

    .line 100
    .line 101
    aput-byte v3, p2, v4

    .line 102
    .line 103
    new-array v3, v5, [B

    .line 104
    .line 105
    fill-array-data v3, :array_5

    .line 106
    .line 107
    .line 108
    invoke-static {p2, v3, v1}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    aput-object p2, p3, v4

    .line 113
    .line 114
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 115
    .line 116
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 117
    .line 118
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v6, 0x1d

    .line 126
    .line 127
    if-lt v3, v6, :cond_2

    .line 128
    .line 129
    new-array v7, v1, [B

    .line 130
    .line 131
    fill-array-data v7, :array_6

    .line 132
    .line 133
    .line 134
    new-array v8, v5, [B

    .line 135
    .line 136
    fill-array-data v8, :array_7

    .line 137
    .line 138
    .line 139
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_2

    .line 148
    .line 149
    new-array v7, v1, [B

    .line 150
    .line 151
    fill-array-data v7, :array_8

    .line 152
    .line 153
    .line 154
    new-array v8, v5, [B

    .line 155
    .line 156
    fill-array-data v8, :array_9

    .line 157
    .line 158
    .line 159
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_2

    .line 168
    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    new-array v1, v2, [B

    .line 175
    .line 176
    const/16 v3, -0x11

    .line 177
    .line 178
    aput-byte v3, v1, v4

    .line 179
    .line 180
    new-array v3, v5, [B

    .line 181
    .line 182
    fill-array-data v3, :array_a

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v3, p3, p2}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    new-array p2, v2, [B

    .line 189
    .line 190
    const/16 v1, 0x57

    .line 191
    .line 192
    aput-byte v1, p2, v4

    .line 193
    .line 194
    new-array v1, v5, [B

    .line 195
    .line 196
    fill-array-data v1, :array_b

    .line 197
    .line 198
    .line 199
    invoke-static {p2, v1, p3}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 204
    .line 205
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 206
    .line 207
    invoke-virtual {p2, v5}, Ljava/util/BitSet;->set(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_2
    if-lt v3, v6, :cond_3

    .line 212
    .line 213
    new-array v1, v1, [B

    .line 214
    .line 215
    fill-array-data v1, :array_c

    .line 216
    .line 217
    .line 218
    new-array v3, v5, [B

    .line 219
    .line 220
    fill-array-data v3, :array_d

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_3

    .line 232
    .line 233
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 234
    .line 235
    const/16 p3, 0x9

    .line 236
    .line 237
    invoke-virtual {p2, p3}, Ljava/util/BitSet;->set(I)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_3
    invoke-static {p3}, Lcom/woha/wifim/MainWifiManadger;->u(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    if-eqz p3, :cond_4

    .line 246
    .line 247
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 248
    .line 249
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    new-array v1, v2, [B

    .line 259
    .line 260
    const/16 v3, 0x56

    .line 261
    .line 262
    aput-byte v3, v1, v4

    .line 263
    .line 264
    new-array v3, v5, [B

    .line 265
    .line 266
    fill-array-data v3, :array_e

    .line 267
    .line 268
    .line 269
    invoke-static {v1, v3, p3, p2}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-array p2, v2, [B

    .line 273
    .line 274
    const/16 v1, 0x6d

    .line 275
    .line 276
    aput-byte v1, p2, v4

    .line 277
    .line 278
    new-array v1, v5, [B

    .line 279
    .line 280
    fill-array-data v1, :array_f

    .line 281
    .line 282
    .line 283
    invoke-static {p2, v1, p3}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 288
    .line 289
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 290
    .line 291
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 292
    .line 293
    .line 294
    :goto_1
    iget-object p2, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    const/4 p3, -0x1

    .line 301
    if-eqz p2, :cond_6

    .line 302
    .line 303
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_6

    .line 312
    .line 313
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 318
    .line 319
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 320
    .line 321
    if-eqz v3, :cond_5

    .line 322
    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    new-array v7, v2, [B

    .line 329
    .line 330
    const/16 v8, -0x71

    .line 331
    .line 332
    aput-byte v8, v7, v4

    .line 333
    .line 334
    new-array v8, v5, [B

    .line 335
    .line 336
    fill-array-data v8, :array_10

    .line 337
    .line 338
    .line 339
    invoke-static {v7, v8, v6, p1}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    new-array v7, v2, [B

    .line 343
    .line 344
    const/16 v8, -0x10

    .line 345
    .line 346
    aput-byte v8, v7, v4

    .line 347
    .line 348
    new-array v8, v5, [B

    .line 349
    .line 350
    fill-array-data v8, :array_11

    .line 351
    .line 352
    .line 353
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_5

    .line 369
    .line 370
    iget p2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_6
    move p2, p3

    .line 374
    :goto_2
    if-eq p2, p3, :cond_7

    .line 375
    .line 376
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 377
    .line 378
    iget-object p2, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 379
    .line 380
    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 381
    .line 382
    .line 383
    move-result p2

    .line 384
    goto :goto_3

    .line 385
    :cond_7
    iget-object p2, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 386
    .line 387
    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    :goto_3
    if-eq p2, p3, :cond_8

    .line 392
    .line 393
    iget-object p3, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 394
    .line 395
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 396
    .line 397
    .line 398
    iget-object p3, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 399
    .line 400
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 401
    .line 402
    .line 403
    iget-object p3, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 404
    .line 405
    invoke-virtual {p3, p2, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 406
    .line 407
    .line 408
    iget-object p2, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 409
    .line 410
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    new-instance p3, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const v1, 0x7f1304e4

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-static {p2, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    new-instance p3, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    const v1, 0x7f1304e9

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-static {p2, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :array_0
    .array-data 1
        -0x50t
        0x16t
        0x27t
        -0x4ft
        0x3at
        0x1bt
        -0x66t
        0x1t
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_1
    .array-data 1
        0x2ct
        0x6ft
        0x70t
        0x66t
        0x78t
        0x7ct
        0x49t
        0x2t
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_2
    .array-data 1
        -0x35t
        -0x73t
        0x5t
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_3
    .array-data 1
        -0x64t
        -0x38t
        0x55t
        -0x53t
        0x44t
        0x67t
        -0x19t
        -0xat
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_4
    .array-data 1
        -0x54t
        -0x1t
        0x2dt
        0x75t
        0x46t
        -0x3at
        0xdt
        0x60t
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_5
    .array-data 1
        0x11t
        0x75t
        -0x1ct
        -0x70t
        -0x1dt
        0x2dt
        0x5ft
        0x33t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_6
    .array-data 1
        -0x15t
        -0x17t
        0x19t
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_7
    .array-data 1
        -0x48t
        -0x58t
        0x5ct
        0x40t
        0x56t
        -0x30t
        0x12t
        0x14t
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_8
    .array-data 1
        -0x4ft
        0x2ft
        0x31t
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    :array_9
    .array-data 1
        -0x1ft
        0x7ct
        0x7at
        -0x48t
        0x1t
        -0x1at
        -0x42t
        0x3bt
    .end array-data

    :array_a
    .array-data 1
        -0x33t
        -0x4t
        0x15t
        -0x27t
        -0x12t
        -0x6ct
        0x41t
        0x23t
    .end array-data

    :array_b
    .array-data 1
        0x75t
        0x22t
        0x7bt
        -0x4dt
        0x77t
        -0x26t
        -0x8t
        -0x7ct
    .end array-data

    :array_c
    .array-data 1
        0x39t
        -0x45t
        -0x5t
    .end array-data

    :array_d
    .array-data 1
        0x76t
        -0x14t
        -0x42t
        -0x24t
        -0x42t
        0x26t
        0x60t
        -0x51t
    .end array-data

    :array_e
    .array-data 1
        0x74t
        0x6et
        -0x18t
        -0x4t
        0x5t
        -0x3t
        0x5at
        0x65t
    .end array-data

    :array_f
    .array-data 1
        0x4ft
        -0x5bt
        0x8t
        -0x2et
        0x67t
        -0x27t
        -0x9t
        -0x57t
    .end array-data

    :array_10
    .array-data 1
        -0x53t
        0x48t
        0x7et
        0x20t
        0x4t
        0x26t
        -0x7ft
        -0xat
    .end array-data

    :array_11
    .array-data 1
        -0x2et
        0x78t
        0x24t
        -0x7t
        0x6ft
        -0x5dt
        0x15t
        -0x44t
    .end array-data
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x27

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    new-array v3, v2, [B

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-array v0, v0, [B

    .line 34
    .line 35
    fill-array-data v0, :array_2

    .line 36
    .line 37
    .line 38
    new-array v1, v2, [B

    .line 39
    .line 40
    fill-array-data v1, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const v2, 0x7f1304f7

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :catch_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const v2, 0x7f1304f3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 1
        -0x4t
        -0x6dt
        -0x3dt
        0x3at
        0x60t
        0x38t
        0x7dt
        0x5bt
        -0x13t
        -0x68t
        -0x2bt
        0x25t
        0x66t
        0x22t
        0x6at
        0x1ct
        -0xet
        -0x6dt
        -0x77t
        0x9t
        0x4ct
        0x12t
        0x5ct
        0x26t
        -0x32t
        -0x5et
        -0x1ft
        0x1t
        0x41t
        0x14t
        0x46t
        0x39t
        -0x2et
        -0x42t
        -0x1at
        0x1ct
        0x46t
        0x1et
        0x57t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 1
        -0x63t
        -0x3t
        -0x59t
        0x48t
        0xft
        0x51t
        0x19t
        0x75t
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 1
        0x5et
        -0x2ft
        -0x66t
        0x79t
        0x54t
        0x34t
        0x38t
        -0x2ct
        0x4ft
        -0x26t
        -0x74t
        0x66t
        0x52t
        0x2et
        0x2ft
        -0x6dt
        0x50t
        -0x2ft
        -0x30t
        0x4at
        0x78t
        0x1et
        0x19t
        -0x57t
        0x6ct
        -0x20t
        -0x48t
        0x42t
        0x75t
        0x18t
        0x3t
        -0x4at
        0x70t
        -0x4t
        -0x41t
        0x5ft
        0x72t
        0x12t
        0x12t
    .end array-data

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
    :array_3
    .array-data 1
        0x3ft
        -0x41t
        -0x2t
        0xbt
        0x3bt
        0x5dt
        0x5ct
        -0x6t
    .end array-data
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->p:Landroidx/appcompat/app/AlertDialog;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    sput-object p1, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p2, ""

    .line 29
    .line 30
    :goto_0
    iput-object p2, p0, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f1304e8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const v2, 0x7f1304fb

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/widget/EditText;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const/16 v1, 0x81

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroid/widget/CheckBox;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const v3, 0x7f1304f5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    new-instance v2, Le0/s0;

    .line 110
    .line 111
    const/4 v3, 0x7

    .line 112
    invoke-direct {v2, v3, v0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Landroid/widget/LinearLayout;

    .line 119
    .line 120
    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    .line 126
    .line 127
    const/16 v3, 0x28

    .line 128
    .line 129
    const/16 v4, 0xa

    .line 130
    .line 131
    const/16 v5, 0x32

    .line 132
    .line 133
    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const v2, 0x7f1304f8

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v2, Lm0/y0;

    .line 157
    .line 158
    const/4 v3, 0x3

    .line 159
    invoke-direct {v2, p0, v0, p1, v3}, Lm0/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const v0, 0x7f13010a

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Le0/d3;

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-direct {v0, v1}, Le0/d3;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->p:Landroidx/appcompat/app/AlertDialog;

    .line 190
    .line 191
    new-instance p2, Lm7/c;

    .line 192
    .line 193
    const/4 v0, 0x0

    .line 194
    invoke-direct {p2, p0, v0}, Lm7/c;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->p:Landroidx/appcompat/app/AlertDialog;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 203
    .line 204
    .line 205
    :cond_3
    :goto_1
    return-void
.end method

.method public final x(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/woha/wifim/MainWifiManadger;->g:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/woha/wifim/MainWifiManadger;->r:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/woha/wifim/MainWifiManadger;->s:Lm7/a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->t:Lm7/a;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 24
    .line 25
    const v3, -0x777778

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->l:Landroid/widget/Button;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->j:Landroid/widget/Button;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const v4, 0x7f1304f1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 59
    .line 60
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lcom/example/navistart/mainview/OnOffButton;->setEnable(Ljava/lang/Boolean;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/woha/wifim/MainWifiManadger;->k:Lcom/example/navistart/mainview/OnOffButton;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Lcom/example/navistart/mainview/OnOffButton;->setTextButton(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v2, 0x2ee0

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    new-instance v0, Lm7/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lm7/a;-><init>(Lcom/woha/wifim/MainWifiManadger;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
