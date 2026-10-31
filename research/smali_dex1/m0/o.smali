.class public Lm0/o;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;


# instance fields
.field public b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

.field public c:Lm0/n;

.field public final d:Ljava/util/ArrayList;

.field public e:I

.field public f:[Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_26

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_3a

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lm0/o;->g:Ljava/lang/String;

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    fill-array-data v0, :array_42

    .line 24
    .line 25
    .line 26
    new-array v1, v2, [B

    .line 27
    .line 28
    fill-array-data v1, :array_56

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lm0/o;->h:Ljava/lang/String;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_26
    .array-data 1
        -0x7ft
        -0x79t
        -0xft
        0x4t
        -0x61t
        -0x7ft
        0x4ft
        -0x62t
        -0x7at
        -0x7bt
        -0x20t
        0x30t
        -0x7at
        -0x7bt
        0x53t
        -0x62t
        -0x61t
        -0x7ct
        -0x17t
        0x38t
        -0x64t
        -0x4dt
        0x44t
        -0x67t
        -0x4ct
        -0x6et
        -0x14t
        0x16t
        -0x65t
        -0x70t
        0x4et
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_3a
    .array-data 1
        -0x40t
        -0x9t
        -0x7ft
        0x57t
        -0x15t
        -0x20t
        0x3dt
        -0x16t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_42
    .array-data 1
        0x5dt
        -0x62t
        0x59t
        -0x53t
        -0x3ft
        -0x3ct
        0x15t
        -0x71t
        0x5at
        -0x64t
        0x48t
        -0x67t
        -0x28t
        -0x40t
        0x9t
        -0x71t
        0x43t
        -0x43t
        0x48t
        -0x78t
        -0x30t
        -0x1dt
        0x8t
        -0x77t
        0x79t
        -0x68t
        0x4ct
        -0x74t
        -0xct
        -0x2bt
        0x17t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_56
    .array-data 1
        0x1ct
        -0x12t
        0x29t
        -0x2t
        -0x4bt
        -0x5bt
        0x67t
        -0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/o;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lm0/o;->e:I

    .line 13
    .line 14
    return-void
.end method

.method public static t(Lm0/o;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    sget-object v1, Lm0/o;->h:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v2, :cond_35

    .line 27
    .line 28
    new-array v2, v3, [B

    .line 29
    .line 30
    const/16 v6, -0x2a

    .line 31
    .line 32
    aput-byte v6, v2, v5

    .line 33
    .line 34
    new-array v6, v4, [B

    .line 35
    .line 36
    fill-array-data v6, :array_82

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    :cond_35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-le p0, v4, :cond_45

    .line 65
    .line 66
    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_45
    new-array p0, v3, [B

    .line 71
    .line 72
    const/16 p1, 0xe

    .line 73
    .line 74
    aput-byte p1, p0, v5

    .line 75
    .line 76
    new-array p1, v4, [B

    .line 77
    .line 78
    fill-array-data p1, :array_8a

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_76

    .line 99
    .line 100
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/CharSequence;

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_76

    .line 114
    .line 115
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_63

    .line 119
    :cond_76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v1, p0}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :array_82
    .array-data 1
        -0x13t
        0x6at
        -0x60t
        0x18t
        0x2et
        0x4t
        -0x1dt
        0x7ct
    .end array-data

    .line 132
    .line 133
    :array_8a
    .array-data 1
        0x35t
        0x50t
        0x46t
        0x2ft
        0x66t
        -0x20t
        0x69t
        -0xdt
    .end array-data
.end method

.method public static w()Z
    .registers 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1f

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_1c

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_30

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :array_1c
    .array-data 1
        -0x4at
        0x7bt
        -0x50t
        0x5dt
        0x29t
        -0x6t
        -0x2dt
        -0x45t
        -0x4ft
        0x79t
        -0x5ft
        0x69t
        0x30t
        -0x2t
        -0x31t
        -0x45t
        -0x58t
        0x67t
        -0x51t
        0x6ft
        0x39t
        -0x23t
        -0x32t
        -0x43t
        -0x6et
        0x7dt
        -0x5bt
        0x7ct
        0x1ct
        -0x15t
        -0x2ft
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    :array_30
    .array-data 1
        -0x9t
        0xbt
        -0x40t
        0xet
        0x5dt
        -0x65t
        -0x5ft
        -0x31t
    .end array-data
.end method

.method public static x()Ljava/util/ArrayList;
    .registers 6

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lm0/o;->h:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_18

    .line 23
    .line 24
    goto :goto_46

    .line 25
    :cond_18
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    const/16 v3, -0x54

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-byte v3, v2, v4

    .line 32
    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    new-array v3, v3, [B

    .line 36
    .line 37
    fill-array-data v3, :array_48

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    array-length v2, v0

    .line 49
    :goto_30
    if-ge v4, v2, :cond_46

    .line 50
    .line 51
    aget-object v3, v0, v4

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_43

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_43

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_43
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_30

    .line 71
    :cond_46
    :goto_46
    return-object v1

    .line 72
    nop

    .line 73
    :array_48
    .array-data 1
        -0x69t
        0x56t
        0x10t
        0x18t
        -0x8t
        -0x7et
        0x3ct
        0xat
    .end array-data
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 1
    const p3, 0x7f0c0057

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_25

    .line 14
    .line 15
    const/4 p3, 0x3

    .line 16
    new-array p3, p3, [B

    .line 17
    .line 18
    fill-array-data p3, :array_68

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_6e

    .line 26
    .line 27
    .line 28
    invoke-static {p3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p0, Lm0/o;->e:I

    .line 37
    .line 38
    :cond_25
    const p2, 0x7f0903eb

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 46
    .line 47
    iput-object p2, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 48
    .line 49
    const p2, 0x7f0904ed

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/Switch;

    .line 57
    .line 58
    invoke-static {}, Lm0/o;->w()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 63
    .line 64
    .line 65
    new-instance p3, Lm0/k;

    .line 66
    .line 67
    invoke-direct {p3, p0, v0}, Lm0/k;-><init>(Lm0/o;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    .line 72
    .line 73
    const p2, 0x7f090452

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/widget/Switch;

    .line 81
    .line 82
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    sget-object v1, Lm0/o;->g:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p3, v1, v0}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    .line 94
    .line 95
    new-instance p3, Lm0/k;

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-direct {p3, p0, v0}, Lm0/k;-><init>(Lm0/o;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :array_68
    .array-data 1
        0x2at
        0x29t
        -0x4ct
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_6e
    .array-data 1
        0x4et
        0x40t
        -0x39t
        -0x48t
        -0x37t
        -0xft
        0x2dt
        -0x34t
    .end array-data
.end method

.method public final onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_14

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ll0/a;

    .line 15
    .line 16
    if-eqz v0, :cond_14

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public final onStart()V
    .registers 8

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x7

    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_bc

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v3, v2, [B

    .line 17
    .line 18
    fill-array-data v3, :array_c4

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lm0/o;->f:[Landroid/view/Display;

    .line 36
    .line 37
    if-eqz v0, :cond_ba

    .line 38
    .line 39
    iget v1, p0, Lm0/o;->e:I

    .line 40
    .line 41
    if-ltz v1, :cond_ba

    .line 42
    .line 43
    array-length v0, v0

    .line 44
    if-ge v1, v0, :cond_ba

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lm0/o;->f:[Landroid/view/Display;

    .line 51
    .line 52
    iget v3, p0, Lm0/o;->e:I

    .line 53
    .line 54
    aget-object v1, v1, v3

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x6

    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    fill-array-data v1, :array_cc

    .line 64
    .line 65
    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    fill-array-data v2, :array_d4

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/view/WindowManager;

    .line 80
    .line 81
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Landroid/graphics/Point;

    .line 86
    .line 87
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 91
    .line 92
    .line 93
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 94
    .line 95
    int-to-double v2, v0

    .line 96
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    mul-double/2addr v2, v4

    .line 102
    double-to-int v0, v2

    .line 103
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 104
    .line 105
    int-to-double v1, v1

    .line 106
    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    mul-double/2addr v1, v3

    .line 112
    double-to-int v1, v1

    .line 113
    iget-object v2, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .line 121
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 122
    .line 123
    const/4 v0, -0x2

    .line 124
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 139
    .line 140
    iget-object v4, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 141
    .line 142
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 143
    .line 144
    const/4 v6, 0x3

    .line 145
    invoke-direct {v5, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;->setMaxHeight(I)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lm0/n;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lm0/n;-><init>(Lm0/o;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lm0/o;->c:Lm0/n;

    .line 167
    .line 168
    iget-object v2, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lm0/o;->v()V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lm0/o;->b:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 177
    .line 178
    new-instance v2, Lm0/j;

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    invoke-direct {v2, p0, v3, v0, v4}, Lm0/j;-><init>(Ll0/b;FLandroid/content/Context;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 185
    .line 186
    .line 187
    :cond_ba
    return-void

    .line 188
    nop

    .line 189
    :array_bc
    .array-data 1
        0x13t
        -0x66t
        0x5dt
        -0x37t
        0x6t
        -0x74t
        0x58t
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_c4
    .array-data 1
        0x77t
        -0xdt
        0x2et
        -0x47t
        0x6at
        -0x13t
        0x21t
        0x24t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_cc
    .array-data 1
        -0x18t
        -0x4bt
        -0x49t
        0x46t
        -0x3ft
        -0x47t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    nop

    .line 213
    :array_d4
    .array-data 1
        -0x61t
        -0x24t
        -0x27t
        0x22t
        -0x52t
        -0x32t
        -0x7bt
        0x7bt
    .end array-data
.end method

.method public final u()Ljava/lang/Boolean;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_80

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_7c

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-wide v3, 0x7fffffffffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    new-instance v3, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance v6, Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Le0/m;->g:[B

    .line 83
    .line 84
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v5, 0x1

    .line 89
    new-array v6, v5, [B

    .line 90
    .line 91
    const/16 v7, 0x1a

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    aput-byte v7, v6, v8

    .line 95
    .line 96
    const/16 v7, 0x8

    .line 97
    .line 98
    new-array v7, v7, [B

    .line 99
    .line 100
    fill-array-data v7, :array_8a

    .line 101
    .line 102
    .line 103
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    cmp-long v0, v0, v2

    .line 115
    .line 116
    if-gez v0, :cond_76

    .line 117
    .line 118
    goto :goto_77

    .line 119
    :cond_76
    move v5, v8

    .line 120
    :goto_77
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :cond_7c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 126
    .line 127
    return-object v0

    .line 128
    nop

    .line 129
    :array_80
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    nop

    .line 139
    :array_8a
    .array-data 1
        0x2at
        0x6et
        0x2at
        -0x51t
        -0x59t
        -0x5ft
        -0x7ft
        -0x68t
    .end array-data
.end method

.method public final v()V
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lm0/o;->g:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v3, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lm0/o;->d:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lm0/o;->w()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v5, :cond_7a

    .line 37
    .line 38
    invoke-static {}, Lm0/o;->x()Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    move v8, v4

    .line 47
    :cond_2e
    :goto_2e
    if-ge v8, v7, :cond_7a

    .line 48
    .line 49
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    add-int/lit8 v8, v8, 0x1

    .line 54
    .line 55
    check-cast v9, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    :try_start_40
    invoke-virtual {v10, v9, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v9
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_44} :catch_45

    .line 69
    goto :goto_46

    .line 70
    :catch_45
    const/4 v9, 0x0

    .line 71
    :goto_46
    if-eqz v9, :cond_2e

    .line 72
    .line 73
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 76
    .line 77
    and-int/2addr v10, v6

    .line 78
    if-eqz v10, :cond_51

    .line 79
    .line 80
    move v10, v6

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v10, v4

    .line 83
    :goto_52
    if-nez v2, :cond_57

    .line 84
    .line 85
    if-eqz v10, :cond_57

    .line 86
    .line 87
    goto :goto_2e

    .line 88
    :cond_57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    .line 108
    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    new-instance v12, Lm0/l;

    .line 113
    .line 114
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v12, v11, v9, v10}, Lm0/l;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2e

    .line 123
    :cond_7a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_b6

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 138
    .line 139
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 140
    .line 141
    and-int/2addr v7, v6

    .line 142
    if-eqz v7, :cond_91

    .line 143
    .line 144
    move v7, v6

    .line 145
    goto :goto_92

    .line 146
    :cond_91
    move v7, v4

    .line 147
    :goto_92
    if-nez v2, :cond_97

    .line 148
    .line 149
    if-eqz v7, :cond_97

    .line 150
    .line 151
    goto :goto_7e

    .line 152
    :cond_97
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    if-eqz v7, :cond_7e

    .line 159
    .line 160
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    new-instance v9, Lm0/l;

    .line 173
    .line 174
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v9, v7, v5, v8}, Lm0/l;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_7e

    .line 183
    :cond_b6
    iget-object v0, p0, Lm0/o;->c:Lm0/n;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 186
    .line 187
    .line 188
    return-void
.end method
