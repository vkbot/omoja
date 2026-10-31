.class public final Lj1/x;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/w;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_16

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_2c

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lj1/x;->d:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_16
    .array-data 1
        -0x15t
        0x6ct
        0x52t
        -0x33t
        0x27t
        0x62t
        0x7ct
        -0x58t
        -0x1ct
        0x6at
        0x51t
        -0x78t
        0x68t
        0x7at
        0x6dt
        -0x5dt
        -0x1ft
        0x62t
        0x5bt
        -0x7at
        0x24t
        0x62t
        0x6ft
        -0x17t
        -0x17t
        0x73t
        0x4ft
        -0x44t
        0x5t
        0x5bt
        0x41t
        -0x7ct
        -0x3dt
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
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
    nop

    .line 45
    :array_2c
    .array-data 1
        -0x78t
        0x3t
        0x3ft
        -0x1dt
        0x46t
        0x17t
        0x8t
        -0x39t
    .end array-data
.end method


# virtual methods
.method public final i(Landroid/content/Context;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lj1/x;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_39

    .line 13
    .line 14
    iget-boolean v0, p0, Lj1/x;->b:Z

    .line 15
    .line 16
    if-eqz v0, :cond_39

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0x1b

    .line 23
    .line 24
    new-array v1, v1, [B

    .line 25
    .line 26
    fill-array-data v1, :array_3a

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    new-array v2, v2, [B

    .line 32
    .line 33
    fill-array-data v2, :array_4c

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_39

    .line 45
    .line 46
    const/high16 v1, 0x10000000

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p1, v0, v1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lj1/x;->c:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_39

    .line 57
    .line 58
    :catch_39
    :cond_39
    return-void

    .line 59
    :array_3a
    .array-data 1
        0x7at
        0x33t
        0x4dt
        0x47t
        0x0t
        0x4dt
        -0x23t
        -0x69t
        0x75t
        0x35t
        0x4et
        0x2t
        0x4ft
        0x55t
        -0x34t
        -0x64t
        0x70t
        0x3dt
        0x44t
        0xct
        0x3t
        0x4dt
        -0x32t
        -0x2at
        0x78t
        0x2ct
        0x50t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_4c
    .array-data 1
        0x19t
        0x5ct
        0x20t
        0x69t
        0x61t
        0x38t
        -0x57t
        -0x8t
    .end array-data
.end method

.method public final k(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lj1/x;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_70

    .line 4
    .line 5
    iget-boolean v0, p0, Lj1/x;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_70

    .line 8
    .line 9
    if-eqz p1, :cond_70

    .line 10
    .line 11
    if-nez p2, :cond_d

    .line 12
    .line 13
    goto :goto_70

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x20

    .line 19
    .line 20
    if-ne v0, v1, :cond_70

    .line 21
    .line 22
    const/16 v0, 0x1b

    .line 23
    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    fill-array-data v0, :array_72

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    new-array v2, v1, [B

    .line 32
    .line 33
    fill-array-data v2, :array_84

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_32

    .line 49
    .line 50
    goto :goto_70

    .line 51
    :cond_32
    const/16 p1, 0x2a

    .line 52
    .line 53
    new-array p1, p1, [B

    .line 54
    .line 55
    fill-array-data p1, :array_8c

    .line 56
    .line 57
    .line 58
    new-array v0, v1, [B

    .line 59
    .line 60
    fill-array-data v0, :array_a6

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_70

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 86
    .line 87
    :goto_56
    const/4 v0, 0x1

    .line 88
    if-eqz p2, :cond_6b

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_66

    .line 95
    .line 96
    const/16 v1, 0x10

    .line 97
    .line 98
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 99
    .line 100
    .line 101
    move p2, v0

    .line 102
    goto :goto_6c

    .line 103
    :cond_66
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    goto :goto_56

    .line 108
    :cond_6b
    const/4 p2, 0x0

    .line 109
    :goto_6c
    xor-int/2addr p2, v0

    .line 110
    iput-boolean p2, p0, Lj1/x;->b:Z

    .line 111
    .line 112
    goto :goto_4a

    .line 113
    :cond_70
    :goto_70
    return-void

    .line 114
    nop

    .line 115
    :array_72
    .array-data 1
        0x51t
        0x78t
        -0x35t
        0x70t
        0x2bt
        -0x16t
        0x21t
        -0x34t
        0x5et
        0x7et
        -0x38t
        0x35t
        0x64t
        -0xet
        0x30t
        -0x39t
        0x5bt
        0x76t
        -0x3et
        0x3bt
        0x28t
        -0x16t
        0x32t
        -0x73t
        0x53t
        0x67t
        -0x2at
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_84
    .array-data 1
        0x32t
        0x17t
        -0x5at
        0x5et
        0x4at
        -0x61t
        0x55t
        -0x5dt
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_8c
    .array-data 1
        0x6ct
        -0x48t
        -0x1ft
        0xat
        0x4et
        0x24t
        0x58t
        -0x26t
        0x63t
        -0x42t
        -0x1et
        0x4ft
        0x1t
        0x3ct
        0x49t
        -0x2ft
        0x66t
        -0x4at
        -0x18t
        0x41t
        0x4dt
        0x24t
        0x4bt
        -0x65t
        0x6et
        -0x59t
        -0x4t
        0x1et
        0x46t
        0x35t
        0x3t
        -0x3ft
        0x79t
        -0x78t
        -0x1ft
        0x4dt
        0x41t
        0x38t
        0x41t
        -0x24t
        0x75t
        -0x4et
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    nop

    .line 167
    :array_a6
    .array-data 1
        0xft
        -0x29t
        -0x74t
        0x24t
        0x2ft
        0x51t
        0x2ct
        -0x4bt
    .end array-data
.end method
