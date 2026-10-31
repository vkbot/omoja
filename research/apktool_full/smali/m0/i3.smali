.class public final synthetic Lm0/i3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/n3;


# direct methods
.method public synthetic constructor <init>(Lm0/n3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/i3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/i3;->c:Lm0/n3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lm0/i3;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm0/i3;->c:Lm0/n3;

    .line 7
    .line 8
    iget-object p1, v1, Lm0/n3;->p:Landroidx/appcompat/app/AlertDialog;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v2, 0x7f1402f0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v2, 0x7f0c011a

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const v0, 0x7f0905c8

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    const v2, 0x7f0905c7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v4, v2

    .line 60
    check-cast v4, Landroid/widget/ListView;

    .line 61
    .line 62
    const v2, 0x7f130466

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v2, Lb7/h;

    .line 74
    .line 75
    const/4 v5, 0x3

    .line 76
    invoke-direct {v2, v5, v1}, Lb7/h;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const v5, 0x7f130473

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const v2, 0x7f13010a

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const v2, 0x7f130411

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, v1, Lm0/n3;->p:Landroidx/appcompat/app/AlertDialog;

    .line 105
    .line 106
    new-instance p1, Lm0/d3;

    .line 107
    .line 108
    invoke-direct {p1, v1, v2}, Lm0/d3;-><init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 115
    .line 116
    .line 117
    const/4 p1, -0x3

    .line 118
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    move-object v3, v0

    .line 123
    new-instance v0, Lm0/e3;

    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    invoke-direct/range {v0 .. v5}, Lm0/e3;-><init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    const p1, 0x7f0905c6

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v0, Lm0/e3;

    .line 140
    .line 141
    const/4 v5, 0x1

    .line 142
    invoke-direct/range {v0 .. v5}, Lm0/e3;-><init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    const p1, 0x7f0905c9

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance v0, Lm0/e3;

    .line 156
    .line 157
    const/4 v5, 0x2

    .line 158
    invoke-direct/range {v0 .. v5}, Lm0/e3;-><init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, v1, Lm0/n3;->m:Ljava/io/File;

    .line 165
    .line 166
    if-nez p1, :cond_1

    .line 167
    .line 168
    iget-object p1, v1, Lm0/n3;->n:Lcom/bumptech/glide/manager/t;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :cond_1
    invoke-virtual {v1, p1, v2, v3, v4}, Lm0/n3;->v(Ljava/io/File;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_0
    iget-object p1, p0, Lm0/i3;->c:Lm0/n3;

    .line 182
    .line 183
    iget-object v0, p1, Lm0/n3;->n:Lcom/bumptech/glide/manager/t;

    .line 184
    .line 185
    iget v1, p1, Lm0/n3;->g:I

    .line 186
    .line 187
    iget-object v2, p1, Lm0/n3;->o:Ljava/util/concurrent/ExecutorService;

    .line 188
    .line 189
    new-instance v3, Landroidx/activity/f;

    .line 190
    .line 191
    const/16 v4, 0x8

    .line 192
    .line 193
    invoke-direct {v3, p1, v0, v1, v4}, Landroidx/activity/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_1
    iget-object p1, p0, Lm0/i3;->c:Lm0/n3;

    .line 201
    .line 202
    invoke-virtual {p1}, Lm0/n3;->w()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_2
    iget-object p1, p0, Lm0/i3;->c:Lm0/n3;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    instance-of v0, v0, Ll0/a;

    .line 213
    .line 214
    if-eqz v0, :cond_2

    .line 215
    .line 216
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ll0/a;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 231
    .line 232
    .line 233
    :goto_0
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
