.class public final synthetic Lh7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/appmanag/ManageAppsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/appmanag/ManageAppsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh7/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh7/c;->c:Lcom/woha/appmanag/ManageAppsActivity;

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
    .locals 6

    .line 1
    iget p1, p0, Lh7/c;->b:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lh7/c;->c:Lcom/woha/appmanag/ManageAppsActivity;

    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget-object p1, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 20
    .line 21
    const-class p1, Lm0/y;

    .line 22
    .line 23
    invoke-static {p1, v1}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x19

    .line 32
    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    new-array v2, v3, [B

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    sget-object p1, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 52
    .line 53
    const-class p1, Lm0/i;

    .line 54
    .line 55
    invoke-static {p1, v1}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-array v0, v0, [B

    .line 64
    .line 65
    fill-array-data v0, :array_2

    .line 66
    .line 67
    .line 68
    new-array v2, v3, [B

    .line 69
    .line 70
    fill-array-data v2, :array_3

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    sget-object p1, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 82
    .line 83
    new-instance p1, Landroid/content/Intent;

    .line 84
    .line 85
    const-class v1, Lcom/woha/appmanag/FilePickerActivity;

    .line 86
    .line 87
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0xe

    .line 91
    .line 92
    new-array v1, v1, [B

    .line 93
    .line 94
    fill-array-data v1, :array_4

    .line 95
    .line 96
    .line 97
    new-array v4, v3, [B

    .line 98
    .line 99
    fill-array-data v4, :array_5

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const/4 v4, 0x4

    .line 107
    new-array v4, v4, [B

    .line 108
    .line 109
    fill-array-data v4, :array_6

    .line 110
    .line 111
    .line 112
    new-array v5, v3, [B

    .line 113
    .line 114
    fill-array-data v5, :array_7

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    new-array v0, v0, [B

    .line 125
    .line 126
    fill-array-data v0, :array_8

    .line 127
    .line 128
    .line 129
    new-array v1, v3, [B

    .line 130
    .line 131
    fill-array-data v1, :array_9

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_0
    .array-data 1
        0x30t
        0x38t
        0x67t
        -0x19t
        -0x5t
        0x3t
        -0x73t
        -0x7ct
        0x32t
        0x3et
        0x70t
        -0x19t
        -0x1t
        0xdt
        -0x77t
        -0x78t
        0x3ft
        0x3ct
        0x4at
        -0x24t
        -0x1et
        0x3t
        -0x7et
        -0x80t
        0x34t
    .end array-data

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
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :array_1
    .array-data 1
        0x53t
        0x59t
        0x15t
        -0x48t
        -0x75t
        0x62t
        -0x12t
        -0x11t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_2
    .array-data 1
        0x2at
        -0x1bt
        -0x37t
        -0x4ft
        0x21t
        -0x2ft
        -0x25t
        0x71t
        0x3ft
        -0x6t
        -0x3ft
        -0x54t
        0x26t
        -0x19t
        -0x3ct
        0x7at
        0x3et
        -0x38t
        -0x34t
        -0x4at
        0x34t
        -0x1et
        -0x3ct
        0x73t
    .end array-data

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
    .line 196
    .line 197
    .line 198
    .line 199
    :array_3
    .array-data 1
        0x4dt
        -0x69t
        -0x58t
        -0x21t
        0x55t
        -0x72t
        -0x55t
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
    :array_4
    .array-data 1
        0x7bt
        0x28t
        -0x33t
        0x3at
        0x19t
        0x6ft
        0x6bt
        0x45t
        0x78t
        0x2ft
        -0x2et
        0x36t
        0x29t
        0x64t
    .end array-data

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
    nop

    .line 219
    :array_5
    .array-data 1
        0x1dt
        0x41t
        -0x5ft
        0x5ft
        0x46t
        0xat
        0x13t
        0x31t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_6
    .array-data 1
        0x4et
        0x7ct
        0x46t
        0x21t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_7
    .array-data 1
        0x60t
        0x1dt
        0x36t
        0x4at
        -0x69t
        0x33t
        -0x6at
        0x19t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_8
    .array-data 1
        -0x41t
        0x50t
        0x31t
        0x43t
        -0x2bt
        -0x36t
        0x55t
        -0x56t
        -0x44t
        0x57t
        0x2et
        0x4ft
        -0x1bt
        -0x3ft
        0x72t
        -0x4dt
        -0x4at
        0x5dt
        0x38t
        0x79t
        -0x7t
        -0x36t
        0x43t
        -0x46t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_9
    .array-data 1
        -0x27t
        0x39t
        0x5dt
        0x26t
        -0x76t
        -0x51t
        0x2dt
        -0x22t
    .end array-data
.end method
