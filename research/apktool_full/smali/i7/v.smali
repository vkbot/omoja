.class public Li7/v;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0c006a

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x1b

    .line 5
    .line 6
    new-array p2, p2, [B

    .line 7
    .line 8
    fill-array-data p2, :array_0

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    fill-array-data v0, :array_1

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f090445

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v2, v0

    .line 30
    check-cast v2, Landroid/widget/SeekBar;

    .line 31
    .line 32
    const v0, 0x7f09055d

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v4, v0

    .line 40
    check-cast v4, Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-virtual {v0, p2, v7}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-gez v5, :cond_0

    .line 52
    .line 53
    move v0, v7

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v0, v5

    .line 56
    :goto_0
    const/16 v8, 0x64

    .line 57
    .line 58
    if-le v0, v8, :cond_1

    .line 59
    .line 60
    move v3, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v3, v0

    .line 63
    :goto_1
    new-instance v1, Li7/t;

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-direct/range {v1 .. v6}, Li7/t;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Li7/u;

    .line 76
    .line 77
    invoke-direct {v0, v4, p2, v7}, Li7/u;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    .line 82
    .line 83
    const p2, 0x7f090492

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/Spinner;

    .line 91
    .line 92
    invoke-static {}, Li7/h;->values()[Li7/h;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    array-length v0, p2

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    .line 98
    .line 99
    :goto_2
    array-length v1, p2

    .line 100
    if-ge v7, v1, :cond_2

    .line 101
    .line 102
    aget-object v1, p2, v7

    .line 103
    .line 104
    iget v1, v1, Li7/h;->b:I

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    aput-object v1, v0, v7

    .line 111
    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const v3, 0x1090008

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const v0, 0x1090009

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Li7/h;->a()Li7/h;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Le0/e1;

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    invoke-direct {v0, v1, p2}, Le0/e1;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :array_0
    .array-data 1
        0x49t
        -0x67t
        -0x41t
        -0x64t
        -0x3ft
        0xbt
        -0x2et
        0x4ft
        0x5bt
        -0x6et
        -0x52t
        -0x62t
        -0xft
        0xbt
        -0x3ct
        0x71t
        0x48t
        -0x5dt
        -0x54t
        -0x68t
        -0x11t
        0x1ft
        -0x33t
        0x4ft
        0x71t
        -0x47t
        -0x7dt
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
    .line 175
    :array_1
    .array-data 1
        0x3at
        -0x4t
        -0x26t
        -0x9t
        -0x7dt
        0x6at
        -0x60t
        0x10t
    .end array-data
.end method
