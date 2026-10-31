.class public final synthetic Ls1/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/k;

.field public final synthetic d:[Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Ls1/k;[Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    iput p3, p0, Ls1/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/i;->c:Ls1/k;

    .line 4
    .line 5
    iput-object p2, p0, Ls1/i;->d:[Landroid/app/AlertDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Ls1/i;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Ls1/i;->d:[Landroid/app/AlertDialog;

    .line 8
    .line 9
    iget-object v4, p0, Ls1/i;->c:Ls1/k;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    aget-object p1, v3, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v1, Lcom/example/navistart/ModernMainActivity;

    .line 28
    .line 29
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    aget-object p1, v3, v2

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    instance-of v0, p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 56
    .line 57
    new-instance v0, Landroid/content/Intent;

    .line 58
    .line 59
    const-class v2, Lcom/woha/appmanag/FilePickerActivity;

    .line 60
    .line 61
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    const/16 v2, 0x18

    .line 65
    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    fill-array-data v2, :array_0

    .line 69
    .line 70
    .line 71
    new-array v1, v1, [B

    .line 72
    .line 73
    fill-array-data v1, :array_1

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x1cf4

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void

    .line 90
    :pswitch_1
    aget-object p1, v3, v2

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    instance-of v2, p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 102
    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    check-cast p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 106
    .line 107
    invoke-static {}, Ls1/s;->a()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v3, Ls1/s;->c:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const/16 v3, 0x21

    .line 124
    .line 125
    new-array v3, v3, [B

    .line 126
    .line 127
    fill-array-data v3, :array_2

    .line 128
    .line 129
    .line 130
    new-array v4, v1, [B

    .line 131
    .line 132
    fill-array-data v4, :array_3

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const/16 v4, 0x14

    .line 140
    .line 141
    new-array v4, v4, [B

    .line 142
    .line 143
    fill-array-data v4, :array_4

    .line 144
    .line 145
    .line 146
    new-array v1, v1, [B

    .line 147
    .line 148
    fill-array-data v1, :array_5

    .line 149
    .line 150
    .line 151
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v2, v3, v1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->H(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object p1, p1, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 162
    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    invoke-virtual {p1}, Ls1/q0;->m()V

    .line 166
    .line 167
    .line 168
    :cond_5
    return-void

    .line 169
    :pswitch_2
    aget-object p1, v3, v2

    .line 170
    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    instance-of v1, p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 181
    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    check-cast p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 185
    .line 186
    const-class v1, Ls1/v;

    .line 187
    .line 188
    invoke-virtual {p1, v1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->G(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    return-void

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_0
    .array-data 1
        0x4bt
        -0x43t
        0x47t
        -0x4dt
        -0x60t
        0x21t
        0x57t
        -0x5ft
        0x48t
        -0x46t
        0x58t
        -0x41t
        -0x70t
        0x2at
        0x70t
        -0x48t
        0x42t
        -0x50t
        0x4et
        -0x77t
        -0x74t
        0x21t
        0x41t
        -0x4ft
    .end array-data

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
    .line 217
    .line 218
    .line 219
    :array_1
    .array-data 1
        0x2dt
        -0x2ct
        0x2bt
        -0x2at
        -0x1t
        0x44t
        0x2ft
        -0x2bt
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_2
    .array-data 1
        -0x31t
        0xat
        -0x5t
        0x5at
        -0x21t
        0x70t
        -0x45t
        0x74t
        -0x18t
        0x16t
        -0x31t
        0x4bt
        -0xft
        0x41t
        -0x44t
        0x75t
        -0x1ft
        0x1bt
        -0x37t
        0x4dt
        -0x1et
        0x73t
        -0x54t
        0x6ft
        -0xat
        0x1at
        -0x3et
        0x58t
        -0x32t
        0x7ft
        -0x7et
        0x7et
        -0x5t
    .end array-data

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
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    nop

    .line 249
    :array_3
    .array-data 1
        -0x7et
        0x73t
        -0x54t
        0x3ft
        -0x43t
        0x20t
        -0x37t
        0x1bt
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_4
    .array-data 1
        0x27t
        0x52t
        0x50t
        -0x43t
        -0x73t
        -0x33t
        -0x38t
        0x2ct
        0x34t
        0x52t
        0x54t
        -0x7dt
        -0x6ct
        -0x40t
        -0x37t
        0x1dt
        0x20t
        0x5ft
        0x53t
        -0x52t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_5
    .array-data 1
        0x43t
        0x37t
        0x36t
        -0x24t
        -0x8t
        -0x5ft
        -0x44t
        0x73t
    .end array-data
.end method
