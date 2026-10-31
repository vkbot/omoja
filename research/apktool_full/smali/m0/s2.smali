.class public final synthetic Lm0/s2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lm0/s2;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lm0/s2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lm0/s2;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lm0/s2;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lm0/s2;->f:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lm0/s2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/s2;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 9
    .line 10
    iget-object v1, p0, Lm0/s2;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 13
    .line 14
    iget-object v2, p0, Lm0/s2;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/widget/SeekBar;

    .line 17
    .line 18
    iget-object v3, p0, Lm0/s2;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->Q(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lm0/s2;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ls1/k;

    .line 29
    .line 30
    iget-object v1, p0, Lm0/s2;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Landroid/widget/RadioGroup;

    .line 33
    .line 34
    iget-object v2, p0, Lm0/s2;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v3, p0, Lm0/s2;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Landroid/widget/RadioGroup;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    instance-of v4, v1, Ls1/q;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    check-cast v1, Ls1/q;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, v0, Ls1/k;->b:Ls1/r;

    .line 66
    .line 67
    invoke-virtual {v0}, Ls1/r;->e()Ls1/q;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_1
    sget-object v0, Ls1/q;->c:Ls1/q;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    if-ne v1, v0, :cond_2

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move v0, v4

    .line 79
    :goto_2
    const v1, 0x3ed70a3d    # 0.42f

    .line 80
    .line 81
    .line 82
    const/high16 v5, 0x3f800000    # 1.0f

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    move v6, v5

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move v6, v1

    .line 89
    :goto_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 90
    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    move v1, v5

    .line 95
    :cond_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 96
    .line 97
    .line 98
    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ge v4, v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    return-void

    .line 115
    :pswitch_1
    iget-object v0, p0, Lm0/s2;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lm0/c3;

    .line 118
    .line 119
    iget-object v1, p0, Lm0/s2;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v1, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v2, p0, Lm0/s2;->e:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Ljava/io/File;

    .line 126
    .line 127
    iget-object v3, p0, Lm0/s2;->f:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v3, Ljava/io/File;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    invoke-virtual {v0, v5, v4}, Lm0/c3;->H(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    if-nez v1, :cond_6

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {v0}, Lm0/c3;->v()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const v2, 0x7f130435

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3}, Lm0/c3;->D(Ljava/io/File;)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_6
    const v2, 0x7f130436

    .line 166
    .line 167
    .line 168
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_5
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
