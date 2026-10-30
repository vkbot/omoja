.class public final synthetic Ls1/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ls1/k;

.field public final synthetic c:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic d:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic e:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic f:Landroid/widget/RadioGroup;

.field public final synthetic g:Landroid/widget/RadioGroup;

.field public final synthetic h:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic i:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic j:Landroid/widget/RadioGroup;

.field public final synthetic k:[Landroid/widget/Spinner;

.field public final synthetic l:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Ls1/k;[Landroid/widget/Spinner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p10, p0, Ls1/h;->b:Ls1/k;

    .line 5
    .line 6
    iput-object p5, p0, Ls1/h;->c:Landroidx/appcompat/widget/SwitchCompat;

    .line 7
    .line 8
    iput-object p6, p0, Ls1/h;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 9
    .line 10
    iput-object p7, p0, Ls1/h;->e:Landroidx/appcompat/widget/SwitchCompat;

    .line 11
    .line 12
    iput-object p2, p0, Ls1/h;->f:Landroid/widget/RadioGroup;

    .line 13
    .line 14
    iput-object p3, p0, Ls1/h;->g:Landroid/widget/RadioGroup;

    .line 15
    .line 16
    iput-object p8, p0, Ls1/h;->h:Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    .line 18
    iput-object p9, p0, Ls1/h;->i:Landroidx/appcompat/widget/SwitchCompat;

    .line 19
    .line 20
    iput-object p4, p0, Ls1/h;->j:Landroid/widget/RadioGroup;

    .line 21
    .line 22
    iput-object p11, p0, Ls1/h;->k:[Landroid/widget/Spinner;

    .line 23
    .line 24
    iput-object p1, p0, Ls1/h;->l:Landroid/app/AlertDialog;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Ls1/h;->b:Ls1/k;

    .line 2
    .line 3
    iget-object v0, p1, Ls1/k;->b:Ls1/r;

    .line 4
    .line 5
    iget-object v1, p0, Ls1/h;->c:Landroidx/appcompat/widget/SwitchCompat;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Ls1/r;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ls1/h;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, v0, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sget-object v4, Ls1/r;->h:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Ls1/h;->e:Landroidx/appcompat/widget/SwitchCompat;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v4, Ls1/r;->i:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Ls1/h;->f:Landroid/widget/RadioGroup;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v3, 0x0

    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    move-object v1, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_0
    instance-of v4, v1, Ls1/q;

    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    check-cast v1, Ls1/q;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0}, Ls1/r;->e()Ls1/q;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    sget-object v5, Ls1/r;->j:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Ls1/h;->g:Landroid/widget/RadioGroup;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v1, :cond_2

    .line 124
    .line 125
    move-object v1, v3

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :goto_2
    instance-of v4, v1, Ls1/p;

    .line 132
    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    check-cast v1, Ls1/p;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    invoke-virtual {v0}, Ls1/r;->d()Ls1/p;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    sget-object v5, Ls1/r;->k:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Ls1/h;->h:Landroidx/appcompat/widget/SwitchCompat;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    sget-object v5, Ls1/r;->g:Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Ls1/h;->i:Landroidx/appcompat/widget/SwitchCompat;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    sget-object v5, Ls1/r;->f:Ljava/lang/String;

    .line 189
    .line 190
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Ls1/h;->j:Landroid/widget/RadioGroup;

    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-nez v1, :cond_4

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    :goto_4
    instance-of v1, v3, Ls1/o;

    .line 215
    .line 216
    if-eqz v1, :cond_5

    .line 217
    .line 218
    check-cast v3, Ls1/o;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_5
    invoke-virtual {v0}, Ls1/r;->b()Ls1/o;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    :goto_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    sget-object v2, Ls1/r;->c:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    :goto_6
    const/4 v2, 0x6

    .line 244
    if-ge v1, v2, :cond_7

    .line 245
    .line 246
    iget-object v2, p0, Ls1/h;->k:[Landroid/widget/Spinner;

    .line 247
    .line 248
    aget-object v2, v2, v1

    .line 249
    .line 250
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    instance-of v3, v2, Lj0/e;

    .line 255
    .line 256
    if-eqz v3, :cond_6

    .line 257
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    sget-object v4, Ls1/k;->s:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    check-cast v2, Lj0/e;

    .line 276
    .line 277
    invoke-static {v3, v2}, Lj0/f;->f(Ljava/lang/String;Lj0/e;)V

    .line 278
    .line 279
    .line 280
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_7
    invoke-virtual {p1}, Ls1/k;->n()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ls1/r;->f()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_8

    .line 291
    .line 292
    invoke-virtual {p1}, Ls1/k;->r()V

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_8
    invoke-virtual {p1}, Ls1/k;->y()V

    .line 297
    .line 298
    .line 299
    :goto_7
    iget-object p1, p1, Ls1/k;->q:Ls1/v0;

    .line 300
    .line 301
    if-eqz p1, :cond_9

    .line 302
    .line 303
    invoke-virtual {p1}, Ls1/v0;->run()V

    .line 304
    .line 305
    .line 306
    :cond_9
    iget-object p1, p0, Ls1/h;->l:Landroid/app/AlertDialog;

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 309
    .line 310
    .line 311
    return-void
.end method
