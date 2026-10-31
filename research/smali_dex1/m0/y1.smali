.class public Lm0/y1;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lt0/d;

.field public d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_36

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_46

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lm0/y1;->e:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x1b

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_4e

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_60

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lm0/y1;->f:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v0, 0xf

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_68

    .line 44
    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_74

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :array_36
    .array-data 1
        -0x71t
        -0x7t
        -0x45t
        0x79t
        0x8t
        -0x30t
        -0x3t
        0x64t
        -0x70t
        -0x1dt
        -0x59t
        0x43t
        0x36t
        -0x2dt
        -0x18t
        0x4ft
        -0x77t
        -0x1bt
        -0x45t
        0x41t
        0x1at
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    nop

    .line 71
    :array_46
    .array-data 1
        -0x3t
        -0x74t
        -0x2bt
        0x26t
        0x69t
        -0x60t
        -0x73t
        0x3bt
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_4e
    .array-data 1
        0x2bt
        0x18t
        0x45t
        0x59t
        0x39t
        -0x3at
        -0x20t
        -0x20t
        0x34t
        0x2t
        0x59t
        0x63t
        0x7t
        -0x3bt
        -0xbt
        -0x35t
        0x2dt
        0x4t
        0x45t
        0x61t
        0x2bt
        -0x17t
        -0x2ct
        -0x6t
        0x15t
        0x2ct
        0x72t
    .end array-data

    :array_60
    .array-data 1
        0x59t
        0x6dt
        0x2bt
        0x6t
        0x58t
        -0x4at
        -0x70t
        -0x41t
    .end array-data

    :array_68
    .array-data 1
        -0x2dt
        -0x1ct
        -0xat
        -0x15t
        0x5at
        -0x5bt
        0x41t
        -0x61t
        -0x30t
        -0x1dt
        -0xat
        -0xct
        0x40t
        -0x47t
        0x7bt
    .end array-data

    :array_74
    .array-data 1
        -0x60t
        -0x6dt
        -0x57t
        -0x67t
        0x2ft
        -0x35t
        0x1et
        -0x2t
    .end array-data
.end method

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
    .registers 11

    .line 1
    const p3, 0x7f0c0103

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
    const p2, 0x7f0903ec

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iput-object p2, p0, Lm0/y1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    sget-object p3, Lm0/y1;->e:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, p3}, Lj0/c;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lm0/y1;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance p2, Lt0/d;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget-object v1, p0, Lm0/y1;->d:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p2, p3, v1}, Lt0/d;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lm0/y1;->c:Lt0/d;

    .line 59
    .line 60
    iget-object p3, p0, Lm0/y1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    .line 64
    .line 65
    const p2, 0x7f090104

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    new-instance p3, Lm0/x1;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-direct {p3, p0, v1}, Lm0/x1;-><init>(Lm0/y1;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    const p2, 0x7f09006d

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    move-object v2, p2

    .line 89
    check-cast v2, Landroid/widget/SeekBar;

    .line 90
    .line 91
    const p2, 0x7f09055b

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    move-object v4, p2

    .line 99
    check-cast v4, Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    sget-object p3, Lm0/y1;->f:Ljava/lang/String;

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p2, p3, v1}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    add-int/lit8 p2, v5, -0x1

    .line 113
    .line 114
    if-gez p2, :cond_74

    .line 115
    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v0, p2

    .line 118
    :goto_75
    const/16 p2, 0x13

    .line 119
    .line 120
    if-le v0, p2, :cond_7b

    .line 121
    .line 122
    move v3, p2

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move v3, v0

    .line 125
    :goto_7c
    new-instance v1, Li7/t;

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    invoke-direct/range {v1 .. v6}, Li7/t;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Li7/u;

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-direct {p2, v4, p3, v0}, Li7/u;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 144
    .line 145
    .line 146
    const p2, 0x7f09010d

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    new-instance p3, Lm0/x1;

    .line 154
    .line 155
    invoke-direct {p3, p0, v0}, Lm0/x1;-><init>(Lm0/y1;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    return-object p1
.end method
