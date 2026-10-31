.class public final synthetic Lm0/h3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/n3;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Lcom/bumptech/glide/manager/t;

.field public final synthetic h:Ljava/io/File;

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lm0/n3;ILandroidx/appcompat/app/AlertDialog;Ljava/util/ArrayList;Landroid/widget/TextView;Lcom/bumptech/glide/manager/t;Ljava/io/File;Ljava/util/ArrayList;Landroid/widget/ListView;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/h3;->b:Lm0/n3;

    .line 5
    .line 6
    iput p2, p0, Lm0/h3;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Lm0/h3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 9
    .line 10
    iput-object p4, p0, Lm0/h3;->e:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lm0/h3;->f:Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p6, p0, Lm0/h3;->g:Lcom/bumptech/glide/manager/t;

    .line 15
    .line 16
    iput-object p7, p0, Lm0/h3;->h:Ljava/io/File;

    .line 17
    .line 18
    iput-object p8, p0, Lm0/h3;->i:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p9, p0, Lm0/h3;->j:Landroid/widget/ListView;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .line 1
    iget-object v0, p0, Lm0/h3;->h:Ljava/io/File;

    .line 2
    .line 3
    iget-object v2, p0, Lm0/h3;->b:Lm0/n3;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_b9

    .line 10
    .line 11
    iget v1, v2, Lm0/n3;->s:I

    .line 12
    .line 13
    iget v3, p0, Lm0/h3;->c:I

    .line 14
    .line 15
    if-ne v3, v1, :cond_b9

    .line 16
    .line 17
    iget-object v1, v2, Lm0/n3;->p:Landroidx/appcompat/app/AlertDialog;

    .line 18
    .line 19
    iget-object v4, p0, Lm0/h3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 20
    .line 21
    if-eq v1, v4, :cond_18

    .line 22
    .line 23
    goto/16 :goto_b9

    .line 24
    .line 25
    :cond_18
    iget-object v1, p0, Lm0/h3;->e:Ljava/util/List;

    .line 26
    .line 27
    iget-object v5, p0, Lm0/h3;->f:Landroid/widget/TextView;

    .line 28
    .line 29
    if-nez v1, :cond_3b

    .line 30
    .line 31
    iget-object v1, p0, Lm0/h3;->g:Lcom/bumptech/glide/manager/t;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :try_start_23
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_28

    .line 40
    goto :goto_2c

    .line 41
    :catch_28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_2c
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f130449

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    const/4 v0, -0x1

    .line 61
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lm0/h3;->i:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const/4 v7, 0x0

    .line 81
    move v8, v7

    .line 82
    :goto_51
    if-ge v8, v6, :cond_9f

    .line 83
    .line 84
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    check-cast v9, Ljava/io/File;

    .line 91
    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    new-array v11, v1, [B

    .line 98
    .line 99
    const/16 v12, 0x5f

    .line 100
    .line 101
    aput-byte v12, v11, v7

    .line 102
    .line 103
    const/16 v12, 0x8

    .line 104
    .line 105
    new-array v13, v12, [B

    .line 106
    .line 107
    fill-array-data v13, :array_ba

    .line 108
    .line 109
    .line 110
    invoke-static {v11, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const v11, 0x7f130175

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const/4 v11, 0x2

    .line 128
    new-array v11, v11, [B

    .line 129
    .line 130
    fill-array-data v11, :array_c2

    .line 131
    .line 132
    .line 133
    new-array v12, v12, [B

    .line 134
    .line 135
    fill-array-data v12, :array_c8

    .line 136
    .line 137
    .line 138
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_51

    .line 160
    :cond_9f
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 161
    .line 162
    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    const v7, 0x7f0c0119

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v6, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 170
    .line 171
    .line 172
    iget-object v6, p0, Lm0/h3;->j:Landroid/widget/ListView;

    .line 173
    .line 174
    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lm0/j3;

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    invoke-direct/range {v1 .. v7}, Lm0/j3;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    .line 185
    .line 186
    :cond_b9
    :goto_b9
    return-void

    .line 187
    :array_ba
    .array-data 1
        0x4t
        -0x43t
        0x6et
        0x4at
        0x7dt
        0x23t
        -0x28t
        0x6et
    .end array-data

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
        0x6dt
        -0x2bt
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    nop

    .line 201
    :array_c8
    .array-data 1
        0x30t
        -0xbt
        0x29t
        -0x31t
        0x10t
        -0x59t
        -0x45t
        -0x15t
    .end array-data
.end method
