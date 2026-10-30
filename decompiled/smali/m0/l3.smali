.class public final Lm0/l3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lcom/bumptech/glide/p;

.field public final synthetic b:Lm0/n3;


# direct methods
.method public constructor <init>(Lm0/n3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/l3;->b:Lm0/n3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/p;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lm0/l3;->a:Lcom/bumptech/glide/p;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/l3;->b:Lm0/n3;

    .line 2
    .line 3
    iget-object v0, v0, Lm0/n3;->c:Ljava/util/ArrayList;

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
    .locals 9

    .line 1
    check-cast p1, Lm0/m3;

    .line 2
    .line 3
    iget-object v0, p0, Lm0/l3;->b:Lm0/n3;

    .line 4
    .line 5
    iget-object v0, v0, Lm0/n3;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lm0/k3;

    .line 12
    .line 13
    iget-object v0, p1, Lm0/m3;->b:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p2, Lm0/k3;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lm0/m3;->c:Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-wide v3, p2, Lm0/k3;->c:J

    .line 34
    .line 35
    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    new-array v2, v2, [B

    .line 44
    .line 45
    fill-array-data v2, :array_0

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x8

    .line 49
    .line 50
    new-array v6, v5, [B

    .line 51
    .line 52
    fill-array-data v6, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p2, Lm0/k3;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lm0/l3;->a:Lcom/bumptech/glide/p;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/bumptech/glide/l;

    .line 80
    .line 81
    iget-object v2, v0, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 82
    .line 83
    iget-object v6, v0, Lcom/bumptech/glide/p;->c:Landroid/content/Context;

    .line 84
    .line 85
    const-class v7, Landroid/graphics/Bitmap;

    .line 86
    .line 87
    invoke-direct {v1, v2, v0, v7, v6}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/p;Ljava/lang/Class;Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/bumptech/glide/p;->l:Ly/e;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/l;->u(Ly/a;)Lcom/bumptech/glide/l;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p2, Lm0/k3;->e:Ljava/io/File;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->z(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Lb0/b;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-wide v6, p2, Lm0/k3;->d:J

    .line 110
    .line 111
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    new-array v6, v6, [B

    .line 116
    .line 117
    const/16 v7, -0x7c

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    aput-byte v7, v6, v8

    .line 121
    .line 122
    new-array v5, v5, [B

    .line 123
    .line 124
    fill-array-data v5, :array_2

    .line 125
    .line 126
    .line 127
    invoke-static {v6, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {v1, v2}, Lb0/b;-><init>(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ly/a;->n(Lb0/b;)Ly/a;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/bumptech/glide/l;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    sget-object v1, Lq/f0;->d:Lh/g;

    .line 154
    .line 155
    const-wide/32 v2, 0xf4240

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Ly/a;->m(Lh/g;Ljava/lang/Object;)Ly/a;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/bumptech/glide/l;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v1, Lq/o;->b:Lq/o;

    .line 172
    .line 173
    new-instance v1, Lq/i;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ly/a;->r(Lq/i;)Ly/a;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/bumptech/glide/l;

    .line 183
    .line 184
    const v1, 0x7f070242

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ly/a;->j(I)Ly/a;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/bumptech/glide/l;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ly/a;->e(I)Ly/a;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lcom/bumptech/glide/l;

    .line 198
    .line 199
    iget-object v1, p1, Lm0/m3;->a:Landroid/widget/ImageView;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->x(Landroid/widget/ImageView;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 205
    .line 206
    new-instance v0, Landroidx/navigation/ui/a;

    .line 207
    .line 208
    const/16 v1, 0x10

    .line 209
    .line 210
    invoke-direct {v0, v1, p0, p2}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :array_0
    .array-data 1
        0x5at
        0x3t
        0x76t
        0x59t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_1
    .array-data 1
        0x7at
        -0x3ft
        -0x3ft
        0x79t
        -0x71t
        0x3dt
        0x7dt
        -0x24t
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_2
    .array-data 1
        -0x42t
        -0x40t
        0x74t
        -0x47t
        0x26t
        0x25t
        -0x7bt
        -0x3ft
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    new-instance p2, Lm0/m3;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0c0081

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p2, p1}, Lm0/m3;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    check-cast p1, Lm0/m3;

    .line 2
    .line 3
    iget-object v0, p1, Lm0/m3;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v1, p0, Lm0/l3;->a:Lcom/bumptech/glide/p;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/bumptech/glide/n;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/bumptech/glide/n;-><init>(Landroid/widget/ImageView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/p;->k(Lz/d;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
