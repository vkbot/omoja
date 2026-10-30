.class public final synthetic Le0/b3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/VJCT;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/VJCT;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/b3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/b3;->c:Lcom/example/navistart/VJCT;

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
    iget p1, p0, Le0/b3;->b:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    iget-object v1, p0, Le0/b3;->c:Lcom/example/navistart/VJCT;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v2, 0x15

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {v1, p1, v0}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f1304da

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object p1, v1, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v2, v1, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/16 v3, 0xa

    .line 73
    .line 74
    new-array v3, v3, [B

    .line 75
    .line 76
    fill-array-data v3, :array_2

    .line 77
    .line 78
    .line 79
    new-array v0, v0, [B

    .line 80
    .line 81
    fill-array-data v0, :array_3

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/example/navistart/punto;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v3, Le0/m;->j:[B

    .line 101
    .line 102
    sget-object v4, Le0/p3;->a:[Ljava/lang/String;

    .line 103
    .line 104
    new-instance v4, Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 107
    .line 108
    .line 109
    const-string v3, ""

    .line 110
    .line 111
    invoke-virtual {v2, v4, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    iget-object v6, v1, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 125
    .line 126
    invoke-static {v6}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5, v6, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v3, v1, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 138
    .line 139
    invoke-static {v3}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v3}, Lcom/example/navistart/boot;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    new-instance v4, Le0/f3;

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-direct {v4, v5}, Le0/f3;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v5, v4, Le0/f3;->b:Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const/4 v5, -0x1

    .line 168
    iput v5, v4, Le0/f3;->c:I

    .line 169
    .line 170
    iput-object v1, v4, Le0/f3;->d:Lcom/example/navistart/VJCT;

    .line 171
    .line 172
    filled-new-array {p1, v0, v2, v3}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v4, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_1
    sget-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_0
    .array-data 1
        -0x60t
        0x1dt
        0x5bt
        -0x32t
        0x42t
        0x76t
        -0x7ct
        0x5at
        -0x5ct
        0x7t
        0x57t
        -0x6et
        0x51t
        0x31t
        -0x69t
        0x51t
        -0x59t
        0x0t
        0x59t
        -0x77t
        0x51t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
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
    nop

    .line 211
    :array_1
    .array-data 1
        -0x3dt
        0x72t
        0x36t
        -0x20t
        0x35t
        0x1ft
        -0xat
        0x3ft
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_2
    .array-data 1
        0x5at
        -0x1bt
        -0x6dt
        -0x14t
        -0x38t
        -0x6et
        -0x6t
        0x27t
        0x52t
        -0x11t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    nop

    .line 229
    :array_3
    .array-data 1
        0x3bt
        -0x75t
        -0x9t
        -0x62t
        -0x59t
        -0x5t
        -0x62t
        0x78t
    .end array-data
.end method
