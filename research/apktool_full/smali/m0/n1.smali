.class public Lm0/n1;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lt1/g;
.implements Lw0/b0;


# static fields
.field public static e:Lcom/example/navistart/Notik;


# instance fields
.field public b:Ljava/util/List;

.field public c:Landroid/widget/LinearLayout;

.field public d:Lt1/h;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lm0/n1;->b:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/n1;->d:Lt1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Le0/j2;

    .line 15
    .line 16
    const/16 v2, 0x14

    .line 17
    .line 18
    invoke-direct {v1, v2, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final m(Lw0/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    const/16 v1, 0xb

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    new-array v2, v2, [B

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    instance-of v1, p3, Lru/transfer/MessageData;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lm0/n1;->b:Ljava/util/List;

    .line 35
    .line 36
    check-cast p3, Lru/transfer/MessageData;

    .line 37
    .line 38
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    instance-of v1, p3, Ljava/util/List;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    check-cast p3, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    instance-of v1, v1, Lru/transfer/MessageData;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iput-object p3, p0, Lm0/n1;->b:Ljava/util/List;

    .line 63
    .line 64
    :cond_1
    :goto_0
    const p3, 0x7f0c00b3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const p2, 0x7f09003b

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Landroid/widget/LinearLayout;

    .line 79
    .line 80
    iput-object p2, p0, Lm0/n1;->c:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    return-object p1

    .line 83
    :array_0
    .array-data 1
        -0x28t
        -0x22t
        0x4ct
        0x60t
        0x21t
        0x71t
        -0x38t
        -0x2bt
        -0x2ct
        -0x31t
        0x5et
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :array_1
    .array-data 1
        -0x4bt
        -0x45t
        0x3ft
        0x13t
        0x40t
        0x16t
        -0x53t
        -0x6ft
    .end array-data
.end method

.method public final onStart()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm0/n1;->c:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    new-instance v1, Lm0/m1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lm0/m1;-><init>(Lm0/n1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lm0/n1;->b:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lm0/n1;->c:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lm0/n1;->b:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lru/transfer/MessageData;

    .line 46
    .line 47
    new-instance v2, Lt1/h;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    iput-boolean v4, v2, Lt1/h;->f:Z

    .line 58
    .line 59
    const v5, 0x7f0c00b2

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v5, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    const v3, 0x7f0902e8

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v3, v2, Lt1/h;->b:Landroid/widget/TextView;

    .line 75
    .line 76
    const v3, 0x7f090579

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v3, v2, Lt1/h;->c:Landroid/widget/TextView;

    .line 86
    .line 87
    const v3, 0x7f0900c2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object v3, v2, Lt1/h;->j:Landroid/widget/ImageView;

    .line 97
    .line 98
    const v3, 0x7f09014d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroid/widget/ImageButton;

    .line 106
    .line 107
    iput-object v3, v2, Lt1/h;->d:Landroid/widget/ImageButton;

    .line 108
    .line 109
    const v3, 0x7f090142

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Landroid/widget/ImageButton;

    .line 117
    .line 118
    iput-object v3, v2, Lt1/h;->e:Landroid/widget/ImageButton;

    .line 119
    .line 120
    new-instance v5, Landroidx/navigation/c;

    .line 121
    .line 122
    const/16 v6, 0x14

    .line 123
    .line 124
    invoke-direct {v5, v6, v2}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    const v3, 0x7f0901dd

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/EditText;

    .line 138
    .line 139
    iput-object v3, v2, Lt1/h;->g:Landroid/widget/EditText;

    .line 140
    .line 141
    const v3, 0x7f09003c

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    iput-object v3, v2, Lt1/h;->h:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    const v3, 0x7f09003d

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroid/widget/LinearLayout;

    .line 160
    .line 161
    iput-object v3, v2, Lt1/h;->i:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    invoke-virtual {v2, p0}, Lt1/h;->setMessageDataViewListener(Lt1/g;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Lt1/h;->setMessage(Lru/transfer/MessageData;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lm0/n1;->c:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lm0/n1;->d:Lt1/h;

    .line 6
    .line 7
    return-void
.end method
