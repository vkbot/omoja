.class public Lm0/o0;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb1/s;


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# instance fields
.field public b:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_38

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_44

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lm0/o0;->c:Ljava/lang/String;

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    fill-array-data v0, :array_4c

    .line 24
    .line 25
    .line 26
    new-array v1, v2, [B

    .line 27
    .line 28
    fill-array-data v1, :array_58

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lm0/o0;->d:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v0, 0x11

    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    fill-array-data v0, :array_60

    .line 42
    .line 43
    .line 44
    new-array v1, v2, [B

    .line 45
    .line 46
    fill-array-data v1, :array_6e

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lm0/o0;->e:Ljava/lang/String;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_38
    .array-data 1
        -0x6ct
        0x60t
        -0x20t
        -0x76t
        0x40t
        -0x78t
        -0x6ct
        -0x11t
        -0x67t
        0x61t
        -0x25t
        -0x45t
        0x56t
        -0x74t
        -0x6bt
    .end array-data

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
    :array_44
    .array-data 1
        -0x4t
        0x15t
        -0x7ct
        -0x2bt
        0x37t
        -0x1ft
        -0x10t
        -0x78t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_4c
    .array-data 1
        -0x67t
        -0x9t
        0x78t
        0x8t
        0x36t
        -0x23t
        -0x58t
        -0x24t
        -0x7ft
        -0xft
        0x68t
        0x30t
        0x37t
        -0x40t
        -0x7bt
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_58
    .array-data 1
        -0x12t
        -0x62t
        0x1ct
        0x6ft
        0x53t
        -0x57t
        -0x9t
        -0x52t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_60
    .array-data 1
        0x1bt
        -0x4ft
        0x35t
        -0x4dt
        -0x78t
        0x19t
        -0x7at
        -0xdt
        0x7t
        -0x41t
        0x33t
        -0x58t
        -0x7bt
        0x6et
        -0x17t
        -0x6bt
        0x7dt
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    nop

    .line 111
    :array_6e
    .array-data 1
        0x48t
        -0xct
        0x76t
        -0x1at
        -0x26t
        0x5ct
        -0x27t
        -0x59t
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
.method public final a()V
    .registers 1

    .line 1
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public final c()V
    .registers 1

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x30

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_46

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    new-array v3, v2, [B

    .line 21
    .line 22
    fill-array-data v3, :array_62

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v3, v0, p1}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    new-array p1, p1, [B

    .line 30
    .line 31
    fill-array-data p1, :array_6a

    .line 32
    .line 33
    .line 34
    new-array v1, v2, [B

    .line 35
    .line 36
    fill-array-data v1, :array_70

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1, v0, p2}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    new-array p1, p1, [B

    .line 44
    .line 45
    fill-array-data p1, :array_78

    .line 46
    .line 47
    .line 48
    new-array p2, v2, [B

    .line 49
    .line 50
    fill-array-data p2, :array_7e

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p2, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 58
    .line 59
    new-instance v0, Le0/j2;

    .line 60
    .line 61
    const/16 v1, 0x11

    .line 62
    .line 63
    invoke-direct {v0, v1, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_46
    .array-data 1
        -0x71t
        0x7t
        0x3ct
        0x14t
        0x7ct
        -0x2et
        -0x19t
        0x7dt
        -0x6at
        0x2ft
        0x3ct
        0x14t
        0x61t
        -0x36t
        -0x60t
        0x76t
        -0x43t
        0x18t
        0x37t
        0x1et
        0x67t
        -0x7bt
        -0x11t
        0x34t
        -0x28t
        0x19t
        0x3bt
        0x1et
        0x77t
        -0x36t
        -0x42t
        0x3ct
        -0x69t
        0x0t
        0x13t
        0x1et
        0x77t
        -0x29t
        -0x5at
        0x7bt
        -0x64t
        0x2bt
        0x24t
        0x15t
        0x7dt
        -0x2ft
        -0x1ft
        0x35t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_62
    .array-data 1
        -0x8t
        0x6et
        0x52t
        0x70t
        0x13t
        -0x5bt
        -0x37t
        0x12t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_6a
    .array-data 1
        0x32t
        -0x72t
        -0x25t
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_70
    .array-data 1
        0x15t
        -0x5et
        -0x5t
        0x4bt
        0x1bt
        0x1dt
        0x6dt
        -0x26t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_78
    .array-data 1
        -0x8t
        0x5et
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    nop

    .line 127
    :array_7e
    .array-data 1
        -0x2ft
        0x65t
        0x65t
        0x55t
        -0x51t
        0x55t
        -0x3bt
        0x7bt
    .end array-data
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0c0071

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

.method public final onDestroyView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_47

    .line 4
    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_4c

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_56

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v1, :cond_3f

    .line 56
    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .line 59
    iget-object v1, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    iget-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 71
    .line 72
    :cond_47
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    :array_4c
    .array-data 1
        0x17t
        -0x13t
        0x64t
        -0x4ft
        0x1ct
        0x2at
        -0x7et
        -0x9t
        0x17t
        -0x1ft
        0x60t
    .end array-data

    :array_56
    .array-data 1
        0x76t
        -0x71t
        0xbt
        -0x3ct
        0x68t
        0x10t
        -0x20t
        -0x65t
    .end array-data
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_c

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    sget-object v1, Lm0/o0;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_12
    const/16 v2, 0xf

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    if-nez p2, :cond_27

    .line 24
    .line 25
    new-array p2, v2, [B

    .line 26
    .line 27
    fill-array-data p2, :array_1a8

    .line 28
    .line 29
    .line 30
    new-array v2, v3, [B

    .line 31
    .line 32
    fill-array-data v2, :array_1b4

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_3b

    .line 40
    :cond_27
    new-array v2, v2, [B

    .line 41
    .line 42
    fill-array-data v2, :array_1bc

    .line 43
    .line 44
    .line 45
    new-array v4, v3, [B

    .line 46
    .line 47
    fill-array-data v4, :array_1c8

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v4, Lm0/o0;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    :goto_3b
    const/4 v2, 0x0

    .line 61
    const/4 v4, 0x1

    .line 62
    if-eqz v1, :cond_105

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4b

    .line 73
    .line 74
    goto/16 :goto_105

    .line 75
    .line 76
    :cond_4b
    new-array v5, v4, [B

    .line 77
    .line 78
    const/16 v6, 0x76

    .line 79
    .line 80
    aput-byte v6, v5, v2

    .line 81
    .line 82
    new-array v6, v3, [B

    .line 83
    .line 84
    fill-array-data v6, :array_1d0

    .line 85
    .line 86
    .line 87
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_105

    .line 96
    .line 97
    new-array v5, v4, [B

    .line 98
    .line 99
    const/16 v6, -0x59

    .line 100
    .line 101
    aput-byte v6, v5, v2

    .line 102
    .line 103
    new-array v6, v3, [B

    .line 104
    .line 105
    fill-array-data v6, :array_1d8

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_77

    .line 117
    .line 118
    goto/16 :goto_105

    .line 119
    .line 120
    :cond_77
    if-eqz p2, :cond_105

    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_85

    .line 131
    .line 132
    goto/16 :goto_105

    .line 133
    .line 134
    :cond_85
    new-array v5, v4, [B

    .line 135
    .line 136
    const/16 v6, -0x64

    .line 137
    .line 138
    aput-byte v6, v5, v2

    .line 139
    .line 140
    new-array v6, v3, [B

    .line 141
    .line 142
    fill-array-data v6, :array_1e0

    .line 143
    .line 144
    .line 145
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-nez v5, :cond_105

    .line 154
    .line 155
    new-array v5, v4, [B

    .line 156
    .line 157
    const/4 v6, 0x4

    .line 158
    aput-byte v6, v5, v2

    .line 159
    .line 160
    new-array v6, v3, [B

    .line 161
    .line 162
    fill-array-data v6, :array_1e8

    .line 163
    .line 164
    .line 165
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_af

    .line 174
    .line 175
    goto :goto_105

    .line 176
    :cond_af
    new-instance v5, Ljava/io/File;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-direct {v5, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance p2, Ljava/io/File;

    .line 190
    .line 191
    new-instance v6, Ljava/io/File;

    .line 192
    .line 193
    invoke-direct {v6, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/16 v1, 0xd

    .line 197
    .line 198
    new-array v1, v1, [B

    .line 199
    .line 200
    fill-array-data v1, :array_1f0

    .line 201
    .line 202
    .line 203
    new-array v7, v3, [B

    .line 204
    .line 205
    fill-array-data v7, :array_1fc

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-direct {p2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :try_start_d6
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_105

    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 255
    .line 256
    .line 257
    move-result v1
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_101} :catch_105

    .line 258
    if-nez v1, :cond_104

    .line 259
    .line 260
    goto :goto_105

    .line 261
    :cond_104
    move-object v0, p2

    .line 262
    :catch_105
    :cond_105
    :goto_105
    if-nez v0, :cond_121

    .line 263
    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const p2, 0x7f130128

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {p1, p2}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_121
    const p2, 0x7f0905e3

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    check-cast p1, Landroid/webkit/WebView;

    .line 298
    .line 299
    iput-object p1, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 330
    .line 331
    new-instance p2, Landroid/webkit/WebChromeClient;

    .line 332
    .line 333
    invoke-direct {p2}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 340
    .line 341
    new-instance p2, Landroid/webkit/WebViewClient;

    .line 342
    .line 343
    invoke-direct {p2}, Landroid/webkit/WebViewClient;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 350
    .line 351
    new-instance p2, Lb1/l;

    .line 352
    .line 353
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 354
    .line 355
    .line 356
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    sget-object v2, Lm0/o0;->e:Ljava/lang/String;

    .line 361
    .line 362
    invoke-direct {p2, v2, v1, p0}, Lb1/l;-><init>(Ljava/lang/String;Lj0/c;Lb1/s;)V

    .line 363
    .line 364
    .line 365
    const/16 v1, 0xa

    .line 366
    .line 367
    new-array v1, v1, [B

    .line 368
    .line 369
    fill-array-data v1, :array_204

    .line 370
    .line 371
    .line 372
    new-array v2, v3, [B

    .line 373
    .line 374
    fill-array-data v2, :array_20e

    .line 375
    .line 376
    .line 377
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 385
    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const/4 v1, 0x7

    .line 392
    new-array v1, v1, [B

    .line 393
    .line 394
    fill-array-data v1, :array_216

    .line 395
    .line 396
    .line 397
    new-array v2, v3, [B

    .line 398
    .line 399
    fill-array-data v2, :array_21e

    .line 400
    .line 401
    .line 402
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    nop

    .line 425
    :array_1a8
    .array-data 1
        -0x7bt
        0xat
        0xft
        -0xct
        -0x48t
        -0x19t
        -0x19t
        0x18t
        -0x5et
        0x16t
        0x3bt
        -0x1bt
        -0x6et
        -0x1et
        -0x2ft
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_1b4
    .array-data 1
        -0x38t
        0x73t
        0x58t
        -0x6ft
        -0x26t
        -0x49t
        -0x6bt
        0x77t
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_1bc
    .array-data 1
        0x7at
        0x3bt
        0x12t
        -0x5ct
        -0xct
        -0x1ct
        0xat
        -0x22t
        0x5dt
        0x27t
        0x26t
        -0x4bt
        -0x22t
        -0x1ft
        0x3ct
    .end array-data

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_1c8
    .array-data 1
        0x37t
        0x42t
        0x45t
        -0x3ft
        -0x6at
        -0x4ct
        0x78t
        -0x4ft
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_1d0
    .array-data 1
        0x59t
        0x70t
        -0x13t
        0x42t
        -0x51t
        0x5ft
        0x67t
        0xdt
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    :array_1d8
    .array-data 1
        -0x5t
        -0x8t
        -0x2ft
        -0x39t
        0x78t
        -0x44t
        0x1dt
        -0x5bt
    .end array-data

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_1e0
    .array-data 1
        -0x4dt
        0x48t
        0x4et
        0x18t
        -0x37t
        -0x67t
        -0x1ct
        -0x5ct
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_1e8
    .array-data 1
        0x58t
        -0x2bt
        -0x6dt
        -0x13t
        0x17t
        0x67t
        -0x4at
        0x42t
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_1f0
    .array-data 1
        0x7t
        -0x9t
        0x6et
        0x71t
        0x32t
        -0x40t
        -0x3ft
        0x7ct
        0x5at
        -0x6t
        0x6et
        0x68t
        0x37t
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    nop

    .line 509
    :array_1fc
    .array-data 1
        0x74t
        -0x6et
        0x1at
        0x5t
        0x5bt
        -0x52t
        -0x5at
        0xft
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_204
    .array-data 1
        -0x7bt
        -0x56t
        -0x3ft
        -0xct
        0x59t
        -0x45t
        0x29t
        -0x6t
        -0x6ct
        -0x53t
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    nop

    .line 527
    :array_20e
    .array-data 1
        -0x1ct
        -0x3ct
        -0x5bt
        -0x7at
        0x36t
        -0x2et
        0x4dt
        -0x45t
    .end array-data

    :array_216
    .array-data 1
        -0x19t
        -0x1at
        -0x41t
        0x7ft
        -0x53t
        -0x44t
        0x23t
    .end array-data

    :array_21e
    .array-data 1
        -0x7ft
        -0x71t
        -0x2dt
        0x1at
        -0x69t
        -0x6dt
        0xct
        0x63t
    .end array-data
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/example/navistart/cores/InterC;->lo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
