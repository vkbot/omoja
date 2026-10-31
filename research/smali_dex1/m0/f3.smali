.class public final synthetic Lm0/f3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/n3;

.field public final synthetic d:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic e:I

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/ListView;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;ILjava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ListView;)V
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lm0/f3;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm0/f3;->c:Lm0/n3;

    .line 8
    .line 9
    iput-object p2, p0, Lm0/f3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 10
    .line 11
    iput p3, p0, Lm0/f3;->e:I

    .line 12
    .line 13
    iput-object p4, p0, Lm0/f3;->h:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lm0/f3;->f:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p6, p0, Lm0/f3;->g:Landroid/widget/ListView;

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lm0/n3;Lcom/bumptech/glide/manager/t;Landroidx/appcompat/app/AlertDialog;ILandroid/widget/TextView;Landroid/widget/ListView;)V
    .registers 8

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lm0/f3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f3;->c:Lm0/n3;

    iput-object p2, p0, Lm0/f3;->h:Ljava/lang/Object;

    iput-object p3, p0, Lm0/f3;->d:Landroidx/appcompat/app/AlertDialog;

    iput p4, p0, Lm0/f3;->e:I

    iput-object p5, p0, Lm0/f3;->f:Landroid/widget/TextView;

    iput-object p6, p0, Lm0/f3;->g:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget v0, p0, Lm0/f3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_b4

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/f3;->h:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, p0, Lm0/f3;->c:Lm0/n3;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_8b

    .line 18
    .line 19
    iget-object v0, v2, Lm0/n3;->p:Landroidx/appcompat/app/AlertDialog;

    .line 20
    .line 21
    iget-object v4, p0, Lm0/f3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 22
    .line 23
    if-ne v0, v4, :cond_8b

    .line 24
    .line 25
    iget v0, v2, Lm0/n3;->s:I

    .line 26
    .line 27
    iget v1, p0, Lm0/f3;->e:I

    .line 28
    .line 29
    if-eq v1, v0, :cond_1f

    .line 30
    .line 31
    goto :goto_8b

    .line 32
    :cond_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_35

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const v1, 0x7f130416

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    .line 52
    .line 53
    goto :goto_8b

    .line 54
    :cond_35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    new-array v0, v0, [Ljava/lang/String;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :goto_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ge v1, v5, :cond_51

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    aput-object v5, v0, v1

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_3c

    .line 82
    :cond_51
    iget-object v1, v2, Lm0/n3;->q:Landroidx/appcompat/app/AlertDialog;

    .line 83
    .line 84
    if-eqz v1, :cond_58

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 87
    .line 88
    .line 89
    :cond_58
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const v6, 0x7f1402f0

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    const v5, 0x7f130415

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    new-instance v9, Landroid/widget/ArrayAdapter;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const v5, 0x7f0c0119

    .line 115
    .line 116
    .line 117
    invoke-direct {v9, v1, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lm0/q0;

    .line 121
    .line 122
    const/4 v7, 0x1

    .line 123
    iget-object v5, p0, Lm0/f3;->f:Landroid/widget/TextView;

    .line 124
    .line 125
    iget-object v6, p0, Lm0/f3;->g:Landroid/widget/ListView;

    .line 126
    .line 127
    invoke-direct/range {v1 .. v7}, Lm0/q0;-><init>(Ll0/b;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Landroid/view/View;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v9, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, v2, Lm0/n3;->q:Landroidx/appcompat/app/AlertDialog;

    .line 139
    .line 140
    :cond_8b
    :goto_8b
    return-void

    .line 141
    :pswitch_8c
    iget-object v0, p0, Lm0/f3;->h:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 144
    .line 145
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lh7/k;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v2, Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lh7/k;->o(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/t;->e()Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    iget-object v4, p0, Lm0/f3;->c:Lm0/n3;

    .line 161
    .line 162
    iget-object v0, v4, Lm0/n3;->d:Landroid/os/Handler;

    .line 163
    .line 164
    new-instance v3, Lm0/f3;

    .line 165
    .line 166
    iget-object v5, p0, Lm0/f3;->d:Landroidx/appcompat/app/AlertDialog;

    .line 167
    .line 168
    iget v6, p0, Lm0/f3;->e:I

    .line 169
    .line 170
    iget-object v8, p0, Lm0/f3;->f:Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object v9, p0, Lm0/f3;->g:Landroid/widget/ListView;

    .line 173
    .line 174
    invoke-direct/range {v3 .. v9}, Lm0/f3;-><init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;ILjava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ListView;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_8c
    .end packed-switch
.end method
