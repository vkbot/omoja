.class public Lcom/example/navistart/DPups;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x5

    .line 9
    new-array p2, p2, [B

    .line 10
    .line 11
    fill-array-data p2, :array_40

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    fill-array-data v1, :array_48

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, p2, v1}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0xb

    .line 30
    .line 31
    new-array p1, p1, [B

    .line 32
    .line 33
    fill-array-data p1, :array_50

    .line 34
    .line 35
    .line 36
    new-array p2, v0, [B

    .line 37
    .line 38
    fill-array-data p2, :array_5a

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 p2, 0x15

    .line 46
    .line 47
    new-array p2, p2, [B

    .line 48
    .line 49
    fill-array-data p2, :array_62

    .line 50
    .line 51
    .line 52
    new-array v0, v0, [B

    .line 53
    .line 54
    fill-array-data v0, :array_72

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :array_40
    .array-data 1
        0x39t
        0x6at
        0x1ft
        0x2et
        -0x6ft
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    nop

    .line 73
    :array_48
    .array-data 1
        0x7dt
        0x3at
        0x6at
        0x5et
        -0x1et
        -0x79t
        0x14t
        -0x4et
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_50
    .array-data 1
        -0x5bt
        -0x31t
        -0x3bt
        -0x52t
        -0x45t
        0x7t
        0x79t
        0x26t
        -0x74t
        -0x3dt
        -0x23t
    .end array-data

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
    :array_5a
    .array-data 1
        -0x1ft
        -0x56t
        -0x4dt
        -0x39t
        -0x28t
        0x62t
        0x38t
        0x42t
    .end array-data

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
        -0x49t
        0xbt
        -0x25t
        -0x79t
        0x9t
        0x12t
        0x21t
        0x31t
        -0x7ct
        0x0t
        -0x38t
        -0x64t
        0x4at
        0x33t
        0x68t
        0xdt
        -0x6et
        0xct
        -0x3ft
        -0x75t
        0xet
    .end array-data

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
    .line 111
    .line 112
    .line 113
    .line 114
    nop

    .line 115
    :array_72
    .array-data 1
        -0xdt
        0x6et
        -0x53t
        -0x12t
        0x6at
        0x77t
        0x1t
        0x7et
    .end array-data
.end method

.method public final onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x5

    .line 9
    new-array p2, p2, [B

    .line 10
    .line 11
    fill-array-data p2, :array_40

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    fill-array-data v1, :array_48

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, p2, v1}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0xb

    .line 30
    .line 31
    new-array p1, p1, [B

    .line 32
    .line 33
    fill-array-data p1, :array_50

    .line 34
    .line 35
    .line 36
    new-array p2, v0, [B

    .line 37
    .line 38
    fill-array-data p2, :array_5a

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 p2, 0x14

    .line 46
    .line 47
    new-array p2, p2, [B

    .line 48
    .line 49
    fill-array-data p2, :array_62

    .line 50
    .line 51
    .line 52
    new-array v0, v0, [B

    .line 53
    .line 54
    fill-array-data v0, :array_70

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :array_40
    .array-data 1
        0x48t
        0x7t
        0x58t
        -0x65t
        0x1at
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    nop

    .line 73
    :array_48
    .array-data 1
        0xct
        0x57t
        0x2dt
        -0x15t
        0x69t
        -0x3at
        -0xft
        0x4ft
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_50
    .array-data 1
        -0x73t
        0x57t
        -0x1et
        0x59t
        0x24t
        -0x3at
        0x14t
        0x65t
        -0x5ct
        0x5bt
        -0x6t
    .end array-data

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
    :array_5a
    .array-data 1
        -0x37t
        0x32t
        -0x6ct
        0x30t
        0x47t
        -0x5dt
        0x55t
        0x1t
    .end array-data

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
        -0x56t
        0x13t
        0x43t
        -0x75t
        -0xft
        -0x63t
        -0x4ft
        -0x43t
        -0x67t
        0x18t
        0x50t
        -0x70t
        -0x4et
        -0x43t
        -0x1t
        -0x6dt
        -0x74t
        0x1at
        0x50t
        -0x7at
    .end array-data

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
    .line 111
    .line 112
    .line 113
    :array_70
    .array-data 1
        -0x12t
        0x76t
        0x35t
        -0x1et
        -0x6et
        -0x8t
        -0x6ft
        -0xet
    .end array-data
.end method
