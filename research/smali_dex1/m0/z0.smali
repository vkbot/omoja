.class public Lm0/z0;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/LinkedHashMap;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/Button;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Lm0/v0;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_28

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_36

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lm0/z0;->m:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x1c

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_3e

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_50

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lm0/z0;->n:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 1
        -0x31t
        -0x5t
        0x2ft
        -0x50t
        -0x42t
        0x6dt
        -0x13t
        0x7t
        -0x34t
        -0x10t
        0x2dt
        -0x50t
        -0x4ct
        0x6bt
        -0x20t
        0xdt
        -0x34t
        -0x6t
        0x3bt
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_36
    .array-data 1
        -0x5dt
        -0x6ct
        0x48t
        -0x11t
        -0x2bt
        0x8t
        -0x6ct
        0x64t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_3e
    .array-data 1
        0x26t
        -0x1ct
        0x3at
        -0x57t
        0x5dt
        0x22t
        -0x1dt
        0xat
        0x2dt
        -0x16t
        0x4t
        -0x52t
        0x57t
        0x3ct
        -0x21t
        0x9t
        0x26t
        -0x18t
        0x4t
        -0x5ft
        0x5bt
        0x36t
        -0x21t
        0x9t
        0x34t
        -0x18t
        0x29t
        -0x44t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_50
    .array-data 1
        0x42t
        -0x73t
        0x5bt
        -0x3bt
        0x32t
        0x45t
        -0x44t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

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
    iput-object v0, p0, Lm0/z0;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm0/z0;->c:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lm0/z0;->k:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static t()V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1a

    .line 10
    .line 11
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lm0/z0;->n:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "\u0000"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {v0, v1, v3, v2}, Lcom/example/navistart/cores/InterC;->lo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1a

    .line 25
    .line 26
    .line 27
    :catch_1a
    :cond_1a
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0c005c

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
    return-object p1
.end method

.method public final onDestroy()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lm0/z0;->l:Z

    .line 21
    .line 22
    if-nez v2, :cond_1e

    .line 23
    .line 24
    if-nez v0, :cond_1e

    .line 25
    .line 26
    iput-boolean v1, p0, Lm0/z0;->l:Z

    .line 27
    .line 28
    invoke-static {v1}, Lh0/b;->x(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method public final onDestroyView()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm0/z0;->j:Z

    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lm0/z0;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lm0/z0;->t()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 13
    .line 14
    iput-object v0, p0, Lm0/z0;->e:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object v0, p0, Lm0/z0;->f:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object v0, p0, Lm0/z0;->g:Landroid/widget/Button;

    .line 19
    .line 20
    iput-object v0, p0, Lm0/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iput-object v0, p0, Lm0/z0;->i:Lm0/v0;

    .line 23
    .line 24
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0902a9

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object p2, p0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 14
    .line 15
    const p2, 0x7f0902ab

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p2, p0, Lm0/z0;->e:Landroid/widget/TextView;

    .line 25
    .line 26
    const p2, 0x7f0902a5

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p2, p0, Lm0/z0;->f:Landroid/widget/TextView;

    .line 36
    .line 37
    const p2, 0x7f0902aa

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/widget/Button;

    .line 45
    .line 46
    iput-object p2, p0, Lm0/z0;->g:Landroid/widget/Button;

    .line 47
    .line 48
    const p2, 0x7f0902a8

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    iput-object p2, p0, Lm0/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    iget-object p2, p0, Lm0/z0;->b:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lm0/z0;->c:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lm0/z0;->m:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lj0/c;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x0

    .line 87
    :cond_56
    :goto_56
    if-ge v3, v2, :cond_8c

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    check-cast v4, Lw0/o0;

    .line 96
    .line 97
    iget-object v5, v4, Lw0/o0;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v5}, Lcom/example/navistart/cores/LogcatRule;->fromStorageValue(Ljava/lang/String;)Lcom/example/navistart/cores/LogcatRule;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-object v4, v4, Lw0/o0;->b:Lj0/e;

    .line 104
    .line 105
    if-eqz v5, :cond_56

    .line 106
    .line 107
    invoke-static {v4}, Lj0/f;->d(Lj0/e;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_56

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/example/navistart/cores/LogcatRule;->toStorageValue()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_7b

    .line 122
    .line 123
    goto :goto_56

    .line 124
    :cond_7b
    new-instance v6, Lm0/t0;

    .line 125
    .line 126
    const/4 v7, 0x1

    .line 127
    invoke-direct {v6, v5, v4, v7}, Lm0/t0;-><init>(Lcom/example/navistart/cores/LogcatRule;Lj0/e;Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/example/navistart/cores/LogcatRule;->toStorageValue()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_56

    .line 141
    :cond_8c
    new-instance v0, Lm0/v0;

    .line 142
    .line 143
    new-instance v1, Landroidx/fragment/app/h;

    .line 144
    .line 145
    const/16 v2, 0x14

    .line 146
    .line 147
    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, p2, v1}, Lm0/v0;-><init>(Ljava/util/ArrayList;Landroidx/fragment/app/h;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lm0/z0;->i:Lm0/v0;

    .line 154
    .line 155
    iget-object p2, p0, Lm0/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, Lm0/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    .line 171
    iget-object v0, p0, Lm0/z0;->i:Lm0/v0;

    .line 172
    .line 173
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 174
    .line 175
    .line 176
    const p2, 0x7f0902a4

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance p2, Lm0/w0;

    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-direct {p2, p0, v0}, Lm0/w0;-><init>(Lm0/z0;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lm0/z0;->g:Landroid/widget/Button;

    .line 193
    .line 194
    new-instance p2, Lm0/w0;

    .line 195
    .line 196
    const/4 v0, 0x1

    .line 197
    invoke-direct {p2, p0, v0}, Lm0/w0;-><init>(Lm0/z0;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iget-object p1, p1, Lv1/c;->e:Landroidx/lifecycle/MutableLiveData;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    new-instance v0, Lm0/x0;

    .line 218
    .line 219
    const/4 v1, 0x0

    .line 220
    invoke-direct {v0, p0, v1}, Lm0/x0;-><init>(Ll0/b;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lm0/z0;->v()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lm0/z0;->u()V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method public final u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/z0;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    iget-object v1, p0, Lm0/z0;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/16 v1, 0x8

    .line 16
    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public final v()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/z0;->g:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_34

    .line 4
    .line 5
    iget-object v1, p0, Lm0/z0;->e:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v1, :cond_34

    .line 8
    .line 9
    iget-object v1, p0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 10
    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    goto :goto_34

    .line 14
    :cond_d
    iget-boolean v1, p0, Lm0/z0;->j:Z

    .line 15
    .line 16
    if-eqz v1, :cond_15

    .line 17
    .line 18
    const v1, 0x7f13021a

    .line 19
    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    const v1, 0x7f130216

    .line 23
    .line 24
    .line 25
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lm0/z0;->e:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-boolean v1, p0, Lm0/z0;->j:Z

    .line 31
    .line 32
    if-eqz v1, :cond_25

    .line 33
    .line 34
    const v1, 0x7f130217

    .line 35
    .line 36
    .line 37
    goto :goto_28

    .line 38
    :cond_25
    const v1, 0x7f130218

    .line 39
    .line 40
    .line 41
    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lm0/z0;->d:Landroid/widget/EditText;

    .line 45
    .line 46
    iget-boolean v1, p0, Lm0/z0;->j:Z

    .line 47
    .line 48
    xor-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    :cond_34
    :goto_34
    return-void
.end method
