.class public final Lm0/q1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lj0/c;

.field public c:Landroidx/fragment/app/h;

.field public d:Lf5/j;

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lm0/q1;->e:I

    .line 6
    .line 7
    iput-object p2, p0, Lm0/q1;->a:Ljava/util/List;

    .line 8
    .line 9
    new-instance p2, Lj0/c;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lj0/c;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lm0/q1;->b:Lj0/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 1
    iget v0, p0, Lm0/q1;->e:I

    .line 2
    .line 3
    iput p1, p0, Lm0/q1;->e:I

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq v0, p1, :cond_a

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    .line 10
    .line 11
    :cond_a
    iget v0, p0, Lm0/q1;->e:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_11

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public final getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/q1;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 11

    .line 1
    check-cast p1, Lm0/p1;

    .line 2
    .line 3
    iget-object v0, p0, Lm0/q1;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lw0/o0;

    .line 10
    .line 11
    iget-object v1, v0, Lw0/o0;->a:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_11

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_15
    iget v2, p0, Lm0/q1;->e:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne p2, v2, :cond_1d

    .line 27
    .line 28
    move p2, v4

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move p2, v3

    .line 31
    :goto_1e
    iget-object v2, p1, Lm0/p1;->a:Landroid/widget/Button;

    .line 32
    .line 33
    iget-object v5, p1, Lm0/p1;->b:Landroid/widget/Spinner;

    .line 34
    .line 35
    iget-object v6, p1, Lm0/p1;->c:Landroid/widget/CheckBox;

    .line 36
    .line 37
    invoke-virtual {v2, p2}, Landroid/view/View;->setActivated(Z)V

    .line 38
    .line 39
    .line 40
    const/16 v7, 0x8

    .line 41
    .line 42
    if-eqz p2, :cond_3f

    .line 43
    .line 44
    const/16 p2, 0x1e

    .line 45
    .line 46
    new-array p2, p2, [B

    .line 47
    .line 48
    fill-array-data p2, :array_94

    .line 49
    .line 50
    .line 51
    new-array v1, v7, [B

    .line 52
    .line 53
    fill-array-data v1, :array_a8

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_5c

    .line 64
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_59

    .line 69
    .line 70
    const/16 p2, 0x1b

    .line 71
    .line 72
    new-array p2, p2, [B

    .line 73
    .line 74
    fill-array-data p2, :array_b0

    .line 75
    .line 76
    .line 77
    new-array v1, v7, [B

    .line 78
    .line 79
    fill-array-data v1, :array_c2

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_5c

    .line 90
    :cond_59
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :goto_5c
    new-instance p2, Lm0/o1;

    .line 94
    .line 95
    invoke-direct {p2, p0, p1, v3}, Lm0/o1;-><init>(Lm0/q1;Lm0/p1;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-virtual {v6, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v1, v0, Lw0/o0;->c:Z

    .line 106
    .line 107
    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Le0/c3;

    .line 111
    .line 112
    const/4 v2, 0x2

    .line 113
    invoke-direct {v1, v2, p0, v0}, Le0/c3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lm0/q1;->b:Lj0/c;

    .line 123
    .line 124
    iget-object v1, v0, Lw0/o0;->b:Lj0/e;

    .line 125
    .line 126
    invoke-virtual {p2, v5, v1}, Lj0/c;->n(Landroid/widget/Spinner;Lj0/e;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Le0/d1;

    .line 130
    .line 131
    const/4 v1, 0x3

    .line 132
    invoke-direct {p2, v1, p0, v0}, Le0/d1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p1, Lm0/p1;->d:Landroid/widget/Button;

    .line 139
    .line 140
    new-instance v0, Lm0/o1;

    .line 141
    .line 142
    invoke-direct {v0, p0, p1, v4}, Lm0/o1;-><init>(Lm0/q1;Lm0/p1;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :array_94
    .array-data 1
        -0x54t
        0x22t
        -0x63t
        0x23t
        -0x44t
        -0x7et
        0x2at
        0x59t
        -0x54t
        0x7t
        -0x64t
        0x11t
        -0x44t
        -0x7ft
        -0x26t
        0x35t
        -0x3at
        0x6ft
        -0x10t
        0x43t
        -0x2et
        -0x1ct
        0x45t
        0x35t
        -0x3at
        0x6et
        -0x32t
        -0x43t
        0x42t
        0x1at
    .end array-data

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
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    nop

    .line 169
    :array_a8
    .array-data 1
        0x7ct
        -0x41t
        0x4dt
        -0x6dt
        0x6ct
        0x34t
        -0x6t
        -0x1bt
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_b0
    .array-data 1
        0x12t
        -0x52t
        -0x2dt
        0x4t
        -0x3dt
        0x6et
        0x2ct
        0x8t
        0x12t
        -0x74t
        -0x2dt
        0xdt
        -0x3et
        0x53t
        -0x23t
        0x58t
        0x78t
        -0x14t
        -0x41t
        0x5ft
        -0x53t
        0xft
        0x42t
        0x58t
        0x78t
        -0x13t
        -0x7ft
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_c2
    .array-data 1
        -0x3et
        0x3ct
        0x2t
        -0x71t
        0x13t
        -0x21t
        -0x3t
        -0x78t
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0c007c

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lm0/p1;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lm0/p1;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
