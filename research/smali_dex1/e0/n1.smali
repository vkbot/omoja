.class public final synthetic Le0/n1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/ModernMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/ModernMainActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/n1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/n1;->c:Lcom/example/navistart/ModernMainActivity;

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
    .registers 5

    .line 1
    iget p1, p0, Le0/n1;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Le0/n1;->c:Lcom/example/navistart/ModernMainActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_a0

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v0, Lcom/woha/appmanag/ManageAppsActivity;

    .line 16
    .line 17
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x15

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_ae

    .line 25
    .line 26
    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    fill-array-data v1, :array_be

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_2b
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 45
    .line 46
    const-class p1, Lm0/y;

    .line 47
    .line 48
    invoke-static {p1, v0}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/16 v2, 0x19

    .line 57
    .line 58
    new-array v2, v2, [B

    .line 59
    .line 60
    fill-array-data v2, :array_c6

    .line 61
    .line 62
    .line 63
    new-array v1, v1, [B

    .line 64
    .line 65
    fill-array-data v1, :array_d8

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_4b
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 77
    .line 78
    const-class p1, Lm0/i;

    .line 79
    .line 80
    invoke-static {p1, v0}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/16 v2, 0x18

    .line 89
    .line 90
    new-array v2, v2, [B

    .line 91
    .line 92
    fill-array-data v2, :array_e0

    .line 93
    .line 94
    .line 95
    new-array v1, v1, [B

    .line 96
    .line 97
    fill-array-data v1, :array_f0

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_6b
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 109
    .line 110
    const-class p1, Lm0/n0;

    .line 111
    .line 112
    invoke-static {p1, v0}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/16 v2, 0x16

    .line 121
    .line 122
    new-array v2, v2, [B

    .line 123
    .line 124
    fill-array-data v2, :array_f8

    .line 125
    .line 126
    .line 127
    new-array v1, v1, [B

    .line 128
    .line 129
    fill-array-data v1, :array_108

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_8b
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 141
    .line 142
    const-class p1, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 143
    .line 144
    invoke-static {v2, p1, v0}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_93
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 149
    .line 150
    new-instance p1, Landroid/content/Intent;

    .line 151
    .line 152
    const-class v1, Lcom/example/navistart/PermActivity;

    .line 153
    .line 154
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2, p1, v0}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_93
        :pswitch_8b
        :pswitch_6b
        :pswitch_4b
        :pswitch_2b
    .end packed-switch

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_ae
    .array-data 1
        -0x1t
        0x2et
        -0xet
        0x1et
        0x33t
        0xdt
        0x2at
        0x6dt
        -0xat
        0x29t
        -0xbt
        0x1et
        0x8t
        0x33t
        0x2ft
        0x78t
        -0x1dt
        0x2et
        -0x7t
        0x15t
        0x1ft
    .end array-data

    .line 176
    .line 177
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
    nop

    .line 191
    :array_be
    .array-data 1
        -0x69t
        0x47t
        -0x6at
        0x7bt
        0x6ct
        0x6ct
        0x4et
        0x1bt
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_c6
    .array-data 1
        0x10t
        -0x6ct
        -0x4et
        -0x77t
        0x17t
        0x6t
        -0x16t
        -0xft
        0x12t
        -0x6et
        -0x5bt
        -0x77t
        0x13t
        0x8t
        -0x12t
        -0x3t
        0x1ft
        -0x70t
        -0x61t
        -0x4et
        0xet
        0x6t
        -0x1bt
        -0xbt
        0x14t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_d8
    .array-data 1
        0x73t
        -0xbt
        -0x40t
        -0x2at
        0x67t
        0x67t
        -0x77t
        -0x66t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_e0
    .array-data 1
        -0x1bt
        -0x2et
        -0x39t
        0x67t
        -0x9t
        -0x5t
        0x7at
        0x12t
        -0x10t
        -0x33t
        -0x31t
        0x7at
        -0x10t
        -0x33t
        0x65t
        0x19t
        -0xft
        -0x1t
        -0x3et
        0x60t
        -0x1et
        -0x38t
        0x65t
        0x10t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f0
    .array-data 1
        -0x7et
        -0x60t
        -0x5at
        0x9t
        -0x7dt
        -0x5ct
        0xat
        0x77t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_f8
    .array-data 1
        0x37t
        0x46t
        -0x2dt
        0x35t
        -0x4dt
        -0x48t
        -0x39t
        -0x35t
        0x34t
        0x5dt
        -0x20t
        0x38t
        -0x50t
        -0x55t
        -0x3at
        -0xft
        0x35t
        0x5at
        -0x22t
        0x35t
        -0x51t
        -0x44t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    nop

    .line 265
    :array_108
    .array-data 1
        0x51t
        0x33t
        -0x41t
        0x59t
        -0x40t
        -0x25t
        -0x4bt
        -0x52t
    .end array-data
.end method
