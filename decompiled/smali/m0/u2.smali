.class public final Lm0/u2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lm0/c3;


# direct methods
.method public constructor <init>(Lm0/c3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm0/u2;->a:Lm0/c3;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/u2;->a:Lm0/c3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lm0/c3;->v:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lm0/c3;->e:Lm0/x2;

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    move/from16 v1, p6

    .line 3
    .line 4
    if-ne v1, v0, :cond_5

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmpl-float v2, p4, v2

    .line 8
    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    iget-object v3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    new-instance v9, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    move v2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/16 v4, 0xa0

    .line 26
    .line 27
    const/16 v5, 0x43

    .line 28
    .line 29
    const/16 v6, 0x2e

    .line 30
    .line 31
    :goto_1
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const/16 v4, 0x36

    .line 37
    .line 38
    const/16 v5, 0x33

    .line 39
    .line 40
    const/16 v6, 0xda

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_2
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    int-to-float v5, v4

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    int-to-float v6, v4

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    int-to-float v4, v4

    .line 63
    add-float v7, v4, p4

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    int-to-float v8, v4

    .line 70
    move-object v4, p1

    .line 71
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    int-to-float v4, v4

    .line 80
    add-float v5, v4, p4

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    int-to-float v6, v4

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    int-to-float v7, v4

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    int-to-float v8, v4

    .line 97
    move-object v4, p1

    .line 98
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    :goto_3
    new-instance v5, Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 104
    .line 105
    .line 106
    const/4 v6, -0x1

    .line 107
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    .line 109
    .line 110
    const/16 v6, 0xe

    .line 111
    .line 112
    iget-object v7, p0, Lm0/u2;->a:Lm0/c3;

    .line 113
    .line 114
    invoke-virtual {v7, v6}, Lm0/c3;->z(I)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v6, v6

    .line 119
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 123
    .line 124
    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    const v0, 0x7f130433

    .line 128
    .line 129
    .line 130
    :goto_4
    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_5

    .line 135
    :cond_3
    const v0, 0x7f13012f

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    int-to-float v6, v6

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    int-to-float v8, v8

    .line 149
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    sub-float/2addr v8, v9

    .line 154
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    sub-float/2addr v8, v9

    .line 159
    const/high16 v9, 0x40000000    # 2.0f

    .line 160
    .line 161
    div-float/2addr v8, v9

    .line 162
    add-float/2addr v8, v6

    .line 163
    const/16 v6, 0x10

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v7, v6}, Lm0/c3;->z(I)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    add-int/2addr v3, v2

    .line 176
    int-to-float v2, v3

    .line 177
    invoke-virtual {p1, v0, v2, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {v7, v6}, Lm0/c3;->z(I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    sub-int/2addr v2, v3

    .line 190
    int-to-float v2, v2

    .line 191
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    sub-float/2addr v2, v3

    .line 196
    invoke-virtual {p1, v0, v2, v8, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    :goto_6
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/u2;->a:Lm0/c3;

    .line 2
    .line 3
    iget-object v1, v0, Lm0/c3;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq p1, v2, :cond_7

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lt p1, v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/io/File;

    .line 25
    .line 26
    iget-object v2, v0, Lm0/c3;->e:Lm0/x2;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, v0, Lm0/c3;->v:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_1
    const/16 v2, 0x8

    .line 38
    .line 39
    if-ne p2, v2, :cond_4

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    iput-object p1, v0, Lm0/c3;->u:Ljava/io/File;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const p2, 0x7f130437

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lm0/c3;->K()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    :goto_1
    const p1, 0x7f13044c

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    const/4 v2, 0x4

    .line 95
    if-ne p2, v2, :cond_6

    .line 96
    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const v2, 0x7f1402ef

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 118
    .line 119
    .line 120
    const p2, 0x7f13043c

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    const v2, 0x7f13043b

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance p2, Le0/e0;

    .line 147
    .line 148
    const/4 v2, 0x6

    .line 149
    invoke-direct {p2, v2, v0, v1}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const v0, 0x7f13012f

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const p2, 0x7f13010a

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 168
    .line 169
    .line 170
    :cond_6
    :goto_2
    return-void

    .line 171
    :cond_7
    :goto_3
    iget-object p1, v0, Lm0/c3;->e:Lm0/x2;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 174
    .line 175
    .line 176
    return-void
.end method
