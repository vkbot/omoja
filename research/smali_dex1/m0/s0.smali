.class public Lm0/s0;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .line 1
    const p3, 0x7f0c005b

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    new-instance v5, Lp0/b;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v5, p1}, Lp0/b;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f090284

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v6, p1

    .line 26
    check-cast v6, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iget-object p1, v5, Lp0/b;->b:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_87

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lp0/a;

    .line 45
    .line 46
    iget-boolean p3, p2, Lp0/a;->e:Z

    .line 47
    .line 48
    if-eqz p3, :cond_32

    .line 49
    .line 50
    goto :goto_21

    .line 51
    :cond_32
    new-instance p3, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {p3, v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    .line 60
    .line 61
    iget v0, p2, Lp0/a;->c:I

    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    const/high16 v0, 0x41900000    # 18.0f

    .line 67
    .line 68
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const v1, 0x7f050381

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lp0/b;->e(Lp0/a;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 90
    .line 91
    .line 92
    const/16 v0, 0xc

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lm0/s0;->t(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v1, 0x8

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lm0/s0;->t(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p0, v1}, Lm0/s0;->t(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {p3, v0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .line 113
    const/16 v1, 0x38

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lm0/s0;->t(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v2, -0x1

    .line 120
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Le0/t0;

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-direct {v0, p0, v5, p2, v1}, Le0/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    .line 134
    .line 135
    goto :goto_21

    .line 136
    :cond_87
    const p1, 0x7f090283

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    move-object v3, p1

    .line 144
    check-cast v3, Landroid/widget/Button;

    .line 145
    .line 146
    new-instance v1, Lm0/p0;

    .line 147
    .line 148
    move-object v2, v6

    .line 149
    move-object v6, v4

    .line 150
    move-object v4, v2

    .line 151
    move-object v2, p0

    .line 152
    invoke-direct/range {v1 .. v6}, Lm0/p0;-><init>(Lm0/s0;Landroid/widget/Button;Landroid/widget/LinearLayout;Lp0/b;Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    move-object v7, v6

    .line 156
    move-object v6, v4

    .line 157
    move-object v4, v7

    .line 158
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lm0/r0;

    .line 162
    .line 163
    const/4 v2, 0x0

    .line 164
    move-object v5, v3

    .line 165
    move-object v3, p0

    .line 166
    invoke-direct/range {v1 .. v6}, Lm0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    move-object v2, v3

    .line 170
    invoke-virtual {v4, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    const p1, 0x7f090281

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance p2, Landroidx/navigation/c;

    .line 181
    .line 182
    const/16 p3, 0x10

    .line 183
    .line 184
    invoke-direct {p2, p3, p0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    return-object v4
.end method

.method public final t(I)I
    .registers 3

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
