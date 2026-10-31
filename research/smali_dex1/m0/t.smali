.class public final Lm0/t;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lm0/v;


# direct methods
.method public constructor <init>(Lm0/v;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/t;->a:Lm0/v;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/t;->a:Lm0/v;

    .line 2
    .line 3
    iget-object v0, v0, Lm0/v;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 12

    .line 1
    check-cast p1, Lm0/s;

    .line 2
    .line 3
    iget-object v0, p0, Lm0/t;->a:Lm0/v;

    .line 4
    .line 5
    iget-object v1, v0, Lm0/v;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lm0/u;

    .line 12
    .line 13
    iget-object v1, p1, Lm0/s;->a:Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object v2, p1, Lm0/s;->f:Landroid/widget/ImageButton;

    .line 16
    .line 17
    iget-object v3, p1, Lm0/s;->e:Landroid/widget/Button;

    .line 18
    .line 19
    iget-object v4, p1, Lm0/s;->d:Landroid/widget/Button;

    .line 20
    .line 21
    iget-object v5, p2, Lm0/u;->h:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p1, Lm0/s;->b:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v5, p2, Lm0/u;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lm0/s;->c:Landroid/widget/TextView;

    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-boolean v6, p2, Lm0/u;->f:Z

    .line 41
    .line 42
    if-eqz v6, :cond_4f

    .line 43
    .line 44
    iget-object v6, p2, Lm0/u;->g:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_3e

    .line 51
    .line 52
    const v6, 0x7f1300bc

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_59

    .line 63
    :cond_3e
    iget-object v6, p2, Lm0/u;->g:Ljava/lang/String;

    .line 64
    .line 65
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const v7, 0x7f1300bd

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_59

    .line 80
    :cond_4f
    const v6, 0x7f1300be

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :goto_59
    iget-object v6, p2, Lm0/u;->e:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_66

    .line 97
    .line 98
    iget-object v6, p2, Lm0/u;->e:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_66
    iget-object v6, p2, Lm0/u;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_73

    .line 110
    .line 111
    iget-object v6, p2, Lm0/u;->d:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_73
    const/4 v6, 0x5

    .line 117
    new-array v6, v6, [B

    .line 118
    .line 119
    fill-array-data v6, :array_ea

    .line 120
    .line 121
    .line 122
    const/16 v7, 0x8

    .line 123
    .line 124
    new-array v8, v7, [B

    .line 125
    .line 126
    fill-array-data v8, :array_f2

    .line 127
    .line 128
    .line 129
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-boolean v1, p2, Lm0/u;->f:Z

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    if-eqz v1, :cond_97

    .line 144
    .line 145
    iget-boolean v1, p2, Lm0/u;->i:Z

    .line 146
    .line 147
    if-eqz v1, :cond_95

    .line 148
    .line 149
    goto :goto_97

    .line 150
    :cond_95
    move v1, v7

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    :goto_97
    move v1, v5

    .line 153
    :goto_98
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-boolean v1, p2, Lm0/u;->f:Z

    .line 157
    .line 158
    if-eqz v1, :cond_a7

    .line 159
    .line 160
    const v1, 0x7f1300bf

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    goto :goto_ae

    .line 168
    :cond_a7
    const v1, 0x7f13013a

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :goto_ae
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lm0/r;

    .line 179
    .line 180
    invoke-direct {v0, p0, p2, v5}, Lm0/r;-><init>(Lm0/t;Lm0/u;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v0, p2, Lm0/u;->f:Z

    .line 187
    .line 188
    if-eqz v0, :cond_bf

    .line 189
    .line 190
    move v0, v5

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move v0, v7

    .line 193
    :goto_c0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lm0/r;

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    invoke-direct {v0, p0, p2, v1}, Lm0/r;-><init>(Lm0/t;Lm0/u;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    iget-boolean v0, p2, Lm0/u;->f:Z

    .line 206
    .line 207
    if-eqz v0, :cond_d1

    .line 208
    .line 209
    move v7, v5

    .line 210
    :cond_d1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lm0/r;

    .line 214
    .line 215
    const/4 v1, 0x2

    .line 216
    invoke-direct {v0, p0, p2, v1}, Lm0/r;-><init>(Lm0/t;Lm0/u;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 223
    .line 224
    new-instance v0, Lm0/r;

    .line 225
    .line 226
    const/4 v1, 0x3

    .line 227
    invoke-direct {v0, p0, p2, v1}, Lm0/r;-><init>(Lm0/t;Lm0/u;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    nop

    .line 235
    :array_ea
    .array-data 1
        -0x56t
        -0x58t
        0x65t
        -0x20t
        0xft
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    nop

    .line 243
    :array_f2
    .array-data 1
        -0x76t
        -0x78t
        0x19t
        -0x40t
        0x2ft
        -0x4dt
        -0x78t
        -0x5dt
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
    const v0, 0x7f0c0080

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
    new-instance p2, Lm0/s;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lm0/s;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
