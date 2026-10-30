.class public final Lm0/n0;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public final b:Landroid/os/Handler;

.field public volatile c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Lm0/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xe

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
    sput-object v0, Lm0/n0;->k:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 1
        -0x7ct
        0x44t
        0x39t
        -0x72t
        0x67t
        0x3ft
        -0x3ft
        0x3at
        -0x59t
        0x5ft
        0x14t
        -0x6et
        0x64t
        0x2ft
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 1
        -0x3et
        0x31t
        0x55t
        -0x1et
        0x14t
        0x5ct
        -0x4dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lm0/n0;->b:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    const p3, 0x7f0c005a

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
    iget p2, p0, Lm0/n0;->c:I

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    add-int/2addr p2, p3

    .line 13
    iput p2, p0, Lm0/n0;->c:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lm0/n0;->d:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 26
    .line 27
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    const/high16 v1, 0x44160000    # 600.0f

    .line 30
    .line 31
    mul-float/2addr v1, p2

    .line 32
    float-to-int v1, v1

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    .line 43
    const/high16 v3, 0x42800000    # 64.0f

    .line 44
    .line 45
    mul-float/2addr v3, p2

    .line 46
    float-to-int v3, v3

    .line 47
    sub-int/2addr v2, v3

    .line 48
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    const/4 v1, -0x2

    .line 57
    invoke-direct {v0, p3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    const p3, 0x7f090214

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 71
    .line 72
    iput-object p3, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 73
    .line 74
    const/high16 v0, 0x42c00000    # 96.0f

    .line 75
    .line 76
    mul-float/2addr v0, p2

    .line 77
    float-to-int v0, v0

    .line 78
    const/high16 v1, 0x43f00000    # 480.0f

    .line 79
    .line 80
    mul-float/2addr v1, p2

    .line 81
    float-to-int v1, v1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    .line 92
    const/high16 v3, 0x43700000    # 240.0f

    .line 93
    .line 94
    mul-float/2addr p2, v3

    .line 95
    float-to-int p2, p2

    .line 96
    sub-int/2addr v2, p2

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p3, p2}, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;->setMaxHeight(I)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 109
    .line 110
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 120
    .line 121
    .line 122
    const p2, 0x7f09021b

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object p2, p0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 132
    .line 133
    const p2, 0x7f09021a

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    iput-object p2, p0, Lm0/n0;->h:Landroid/view/View;

    .line 141
    .line 142
    const p2, 0x7f090217

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    iput-object p2, p0, Lm0/n0;->i:Landroid/view/View;

    .line 150
    .line 151
    new-instance p2, Lm0/m0;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Lm0/m0;-><init>(Lm0/n0;)V

    .line 154
    .line 155
    .line 156
    iput-object p2, p0, Lm0/n0;->j:Lm0/m0;

    .line 157
    .line 158
    iget-object p3, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 159
    .line 160
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    .line 162
    .line 163
    const p2, 0x7f090215

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    new-instance p3, Landroidx/navigation/c;

    .line 171
    .line 172
    const/16 v0, 0xf

    .line 173
    .line 174
    invoke-direct {p3, v0, p0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget v0, p0, Lm0/n0;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lm0/n0;->c:I

    .line 6
    .line 7
    iget-object v0, p0, Lm0/n0;->b:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v1, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 21
    .line 22
    iput-object v1, p0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v1, p0, Lm0/n0;->h:Landroid/view/View;

    .line 25
    .line 26
    iput-object v1, p0, Lm0/n0;->i:Landroid/view/View;

    .line 27
    .line 28
    iput-object v1, p0, Lm0/n0;->j:Lm0/m0;

    .line 29
    .line 30
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lm0/n0;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lm0/n0;->d:Z

    .line 15
    .line 16
    iget v0, p0, Lm0/n0;->c:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lm0/n0;->h:Landroid/view/View;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 38
    .line 39
    const v3, 0x7f130187

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lm0/n0;->i:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    sget-object v2, Lm0/n0;->k:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v3, -0x1

    .line 60
    invoke-static {v3, v2}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Landroidx/activity/f;

    .line 65
    .line 66
    const/4 v4, 0x6

    .line 67
    invoke-direct {v3, p0, v1, v0, v4}, Landroidx/activity/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public final t(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lm0/n0;->c:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final u(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lm0/n0;->t(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lm0/n0;->d:Z

    .line 10
    .line 11
    iget-object v0, p0, Lm0/n0;->f:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lm0/n0;->i:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lm0/n0;->h:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 34
    .line 35
    const v0, 0x7f130183

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
