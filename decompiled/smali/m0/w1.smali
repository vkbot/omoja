.class public Lm0/w1;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lm0/v1;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/os/Handler;

.field public i:I

.field public j:[Landroid/view/Display;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/w1;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm0/w1;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lm0/w1;->h:Landroid/os/Handler;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lm0/w1;->i:I

    .line 31
    .line 32
    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    and-int/lit16 p0, p0, 0x81

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :catch_0
    :cond_0
    return v0
.end method

.method public static u(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 1
        0x41t
        -0x4ft
        -0x55t
        -0x40t
        -0x1at
        0x8t
        -0x22t
        -0x5bt
        0x4at
        -0x48t
        -0x4ct
        -0x36t
        -0x4t
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    nop

    .line 39
    :array_1
    .array-data 1
        0x25t
        -0x2ct
        -0x23t
        -0x57t
        -0x7bt
        0x6dt
        -0x7ft
        -0x2bt
    .end array-data
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const p3, 0x7f0c0069

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 p3, 0x3

    .line 16
    new-array p3, p3, [B

    .line 17
    .line 18
    fill-array-data p3, :array_0

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {p3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p0, Lm0/w1;->i:I

    .line 37
    .line 38
    :cond_0
    const p2, 0x7f0903ea

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    iput-object p2, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    const p2, 0x7f0901e2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p2, p0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 59
    .line 60
    const p2, 0x7f0903e7

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p2, p0, Lm0/w1;->d:Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object p2, p0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 72
    .line 73
    new-instance p3, Landroidx/navigation/c;

    .line 74
    .line 75
    const/16 v1, 0x11

    .line 76
    .line 77
    invoke-direct {p3, v1, p0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {p3, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Lm0/v1;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Lm0/v1;-><init>(Lm0/w1;)V

    .line 100
    .line 101
    .line 102
    iput-object p2, p0, Lm0/w1;->e:Lm0/v1;

    .line 103
    .line 104
    iget-object p3, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    nop

    .line 111
    :array_0
    .array-data 1
        -0x4at
        -0x72t
        0x5at
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 1
        -0x2et
        -0x19t
        0x29t
        -0x4at
        -0x10t
        0x4dt
        0x38t
        0x3bt
    .end array-data
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Ll0/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ll0/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x7

    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v3, v2, [B

    .line 17
    .line 18
    fill-array-data v3, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lm0/w1;->j:[Landroid/view/Display;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget v1, p0, Lm0/w1;->i:I

    .line 40
    .line 41
    if-ltz v1, :cond_0

    .line 42
    .line 43
    array-length v0, v0

    .line 44
    if-ge v1, v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lm0/w1;->j:[Landroid/view/Display;

    .line 51
    .line 52
    iget v3, p0, Lm0/w1;->i:I

    .line 53
    .line 54
    aget-object v1, v1, v3

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x6

    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    fill-array-data v1, :array_2

    .line 64
    .line 65
    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    fill-array-data v2, :array_3

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/view/WindowManager;

    .line 80
    .line 81
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Landroid/graphics/Point;

    .line 86
    .line 87
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .line 101
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 102
    .line 103
    int-to-double v1, v1

    .line 104
    const-wide v3, 0x3fed70a3d70a3d71L    # 0.92

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    mul-double/2addr v1, v3

    .line 110
    double-to-int v1, v1

    .line 111
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 112
    .line 113
    const/4 v1, -0x2

    .line 114
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    .line 116
    iget-object v1, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    :cond_0
    invoke-virtual {p0}, Lm0/w1;->v()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :array_0
    .array-data 1
        -0x2et
        -0x7bt
        0x54t
        0x8t
        0x2ft
        0x46t
        0x5t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_1
    .array-data 1
        -0x4at
        -0x14t
        0x27t
        0x78t
        0x43t
        0x27t
        0x7ct
        0x65t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_2
    .array-data 1
        -0x14t
        0x1bt
        0x77t
        -0x7ft
        0x23t
        -0x7ft
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    nop

    .line 149
    :array_3
    .array-data 1
        -0x65t
        0x72t
        0x19t
        -0x1bt
        0x4ct
        -0xat
        0x4dt
        0x76t
    .end array-data
.end method

.method public final v()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lb1/u;->q(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lm0/w1;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lm0/w1;->e:Lm0/v1;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    const v3, 0x7f13035b

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/16 v5, 0xa

    .line 56
    .line 57
    new-array v5, v5, [B

    .line 58
    .line 59
    fill-array-data v5, :array_0

    .line 60
    .line 61
    .line 62
    new-array v6, v1, [B

    .line 63
    .line 64
    fill-array-data v6, :array_1

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/app/usage/UsageStatsManager;

    .line 76
    .line 77
    new-instance v6, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    if-eqz v5, :cond_8

    .line 83
    .line 84
    invoke-static {v4}, Lb1/u;->q(Landroid/content/Context;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_1

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    const-wide/32 v9, 0x240c8400

    .line 97
    .line 98
    .line 99
    sub-long v9, v7, v9

    .line 100
    .line 101
    invoke-virtual {v5, v9, v10, v7, v8}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v7, Landroid/app/usage/UsageEvents$Event;

    .line 106
    .line 107
    invoke-direct {v7}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_7

    .line 119
    .line 120
    invoke-virtual {v5, v7}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    const/4 v9, 0x1

    .line 128
    if-ne v8, v9, :cond_3

    .line 129
    .line 130
    move v10, v9

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    move v10, v2

    .line 133
    :goto_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    .line 135
    const/16 v12, 0x1d

    .line 136
    .line 137
    if-lt v11, v12, :cond_6

    .line 138
    .line 139
    if-nez v10, :cond_5

    .line 140
    .line 141
    if-ne v8, v9, :cond_4

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v9, v2

    .line 145
    :cond_5
    :goto_2
    move v10, v9

    .line 146
    :cond_6
    invoke-virtual {v7}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v10, :cond_2

    .line 151
    .line 152
    if-eqz v8, :cond_2

    .line 153
    .line 154
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_2

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .line 180
    .line 181
    new-instance v5, Lm0/r1;

    .line 182
    .line 183
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 191
    .line 192
    .line 193
    const/16 v5, 0x14

    .line 194
    .line 195
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    sub-int/2addr v6, v5

    .line 204
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-ge v5, v7, :cond_9

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Ljava/util/Map$Entry;

    .line 224
    .line 225
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    check-cast v7, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_8
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    move v5, v2

    .line 250
    :cond_a
    :goto_5
    if-ge v5, v4, :cond_d

    .line 251
    .line 252
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 257
    .line 258
    check-cast v7, Ljava/lang/String;

    .line 259
    .line 260
    iget-object v8, p0, Lm0/w1;->g:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-eqz v8, :cond_b

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_b
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    invoke-virtual {v8, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 278
    .line 279
    .line 280
    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_6

    .line 282
    :catch_0
    const/4 v8, 0x0

    .line 283
    :goto_6
    if-eqz v8, :cond_a

    .line 284
    .line 285
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    if-nez v9, :cond_c

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_c
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 293
    .line 294
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 303
    .line 304
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    new-instance v10, Lm0/s1;

    .line 309
    .line 310
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 311
    .line 312
    .line 313
    iput-object v9, v10, Lm0/s1;->a:Ljava/lang/String;

    .line 314
    .line 315
    iput-object v7, v10, Lm0/s1;->b:Ljava/lang/String;

    .line 316
    .line 317
    iput-object v8, v10, Lm0/s1;->c:Landroid/graphics/drawable/Drawable;

    .line 318
    .line 319
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_d
    iget-object v0, p0, Lm0/w1;->e:Lm0/v1;

    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 329
    .line 330
    const v4, 0x7f130359

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_e

    .line 343
    .line 344
    move v4, v2

    .line 345
    goto :goto_7

    .line 346
    :cond_e
    move v4, v1

    .line 347
    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_f

    .line 357
    .line 358
    move v2, v1

    .line 359
    :cond_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_10

    .line 367
    .line 368
    iget-object v0, p0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 369
    .line 370
    new-instance v2, Lf5/j;

    .line 371
    .line 372
    invoke-direct {v2, v1, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 376
    .line 377
    .line 378
    :cond_10
    return-void

    .line 379
    :array_0
    .array-data 1
        0x59t
        0x41t
        0x6ct
        0x68t
        0x53t
        0x75t
        0x56t
        -0x72t
        0x58t
        0x41t
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    nop

    .line 389
    :array_1
    .array-data 1
        0x2ct
        0x32t
        0xdt
        0xft
        0x36t
        0x6t
        0x22t
        -0x11t
    .end array-data
.end method
