.class public final Le0/i1;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/view/LayoutInflater;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/example/navistart/MainActivity;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const v0, 0x7f0c010f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Le0/i1;->b:Landroid/view/LayoutInflater;

    .line 12
    .line 13
    :goto_0
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    instance-of v0, p1, Lcom/example/navistart/ModernMainActivity;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v0, p1

    .line 28
    check-cast v0, Landroid/content/ContextWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-ne v0, p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object p1, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    iput-boolean p2, p0, Le0/i1;->c:Z

    .line 40
    .line 41
    return-void
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 0

    .line 1
    int-to-float p0, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p0, p1

    .line 13
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method


# virtual methods
.method public final b(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Le0/i1;->b:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    const v1, 0x7f0c010f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Le0/g1;

    .line 14
    .line 15
    const v1, 0x7f090493

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/ImageView;

    .line 23
    .line 24
    const v2, 0x7f090494

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-direct {p3, v1, v2}, Le0/g1;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Le0/g1;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Le0/j1;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v1, p3, Le0/g1;->a:Landroid/widget/ImageView;

    .line 55
    .line 56
    iget-object v2, p1, Le0/j1;->c:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p3, Le0/g1;->b:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object p1, p1, Le0/j1;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-boolean p1, p0, Le0/i1;->c:Z

    .line 69
    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    move-object p1, p2

    .line 73
    check-cast p1, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v2, 0x30

    .line 80
    .line 81
    if-eqz p4, :cond_2

    .line 82
    .line 83
    const/16 v3, 0x40

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v3, v2

    .line 87
    :goto_1
    invoke-static {v3, v1}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz p4, :cond_3

    .line 99
    .line 100
    const/16 v3, 0x8

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v3, 0x2

    .line 104
    :goto_2
    invoke-static {v3, v1}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz p4, :cond_4

    .line 113
    .line 114
    const/16 v4, 0xc

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    const/4 v4, 0x4

    .line 118
    :goto_3
    invoke-static {v4, v3}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v2, v4}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {p1, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    .line 132
    .line 133
    if-eqz p4, :cond_5

    .line 134
    .line 135
    const p1, 0x7f070184

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    .line 144
    .line 145
    :goto_4
    iget-object p1, p3, Le0/g1;->b:Landroid/widget/TextView;

    .line 146
    .line 147
    iget-object v0, p3, Le0/g1;->a:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const v3, 0x7f050381

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p3, Le0/g1;->b:Landroid/widget/TextView;

    .line 164
    .line 165
    const/high16 p3, 0x41880000    # 17.0f

    .line 166
    .line 167
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 171
    .line 172
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 173
    .line 174
    .line 175
    const/16 p3, 0x84

    .line 176
    .line 177
    const/16 v1, 0x92

    .line 178
    .line 179
    const/16 v3, 0x69

    .line 180
    .line 181
    invoke-static {v3, p3, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    const/16 v1, 0xb

    .line 193
    .line 194
    invoke-static {v1, p3}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    int-to-float p3, p3

    .line 199
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    const/4 v1, 0x1

    .line 207
    invoke-static {v1, p3}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 208
    .line 209
    .line 210
    move-result p3

    .line 211
    const/16 v1, 0xb0

    .line 212
    .line 213
    const/16 v3, 0xc1

    .line 214
    .line 215
    const/16 v4, 0x9d

    .line 216
    .line 217
    invoke-static {v4, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual {p1, p3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const/4 p3, 0x6

    .line 232
    invoke-static {p3, p1}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-eqz p4, :cond_6

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_6
    const/16 v2, 0x28

    .line 247
    .line 248
    :goto_5
    invoke-static {v2, p1}, Le0/i1;->a(ILandroid/content/Context;)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    .line 254
    invoke-direct {p3, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    return-object p2
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Le0/i1;->b(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Le0/i1;->b(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
