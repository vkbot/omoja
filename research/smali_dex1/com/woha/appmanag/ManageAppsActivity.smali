.class public Lcom/woha/appmanag/ManageAppsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Landroid/content/pm/PackageManager;

.field public d:Lh7/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x15

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
    fill-array-data v1, :array_26

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_16
    .array-data 1
        0x19t
        -0x4et
        0x65t
        -0x6ft
        -0x77t
        -0x11t
        -0xft
        -0x55t
        0x10t
        -0x4bt
        0x62t
        -0x6ft
        -0x4et
        -0x2ft
        -0xct
        -0x42t
        0x5t
        -0x4et
        0x6et
        -0x66t
        -0x5bt
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
    nop

    .line 39
    :array_26
    .array-data 1
        0x71t
        -0x25t
        0x1t
        -0xct
        -0x2at
        -0x72t
        -0x6bt
        -0x23t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p1}, Le0/m;->x(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_32

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_32

    .line 9
    .line 10
    if-eqz p3, :cond_32

    .line 11
    .line 12
    const/16 p1, 0xd

    .line 13
    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    fill-array-data p1, :array_34

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x8

    .line 20
    .line 21
    new-array p2, p2, [B

    .line 22
    .line 23
    fill-array-data p2, :array_40

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_28

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-static {p1, p0, p2}, Le0/y2;->c(Ljava/lang/String;Landroid/content/Context;Le0/g2;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_28
    const p1, 0x7f130142

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void

    .line 52
    nop

    .line 53
    :array_34
    .array-data 1
        0x1ft
        0x48t
        -0x3ct
        -0x6ft
        0x43t
        -0x8t
        0x3bt
        -0x17t
        0x33t
        0x4bt
        -0x3ft
        -0x68t
        0x45t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        0x6ct
        0x2dt
        -0x58t
        -0xct
        0x20t
        -0x74t
        0x5et
        -0x73t
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f050377

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0c0023

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7f0902a1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/ListView;

    .line 55
    .line 56
    const v1, 0x7f090268

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/Button;

    .line 64
    .line 65
    const v2, 0x7f090221

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/Button;

    .line 73
    .line 74
    const v3, 0x7f09015f

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/widget/Button;

    .line 82
    .line 83
    const v4, 0x7f09015d

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/Button;

    .line 91
    .line 92
    const v5, 0x7f0902bc

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    sget-object v7, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_73

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    :cond_73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/woha/appmanag/ManageAppsActivity;->c:Landroid/content/pm/PackageManager;

    .line 121
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/woha/appmanag/ManageAppsActivity;->b:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/woha/appmanag/ManageAppsActivity;->s()V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lh7/f;

    .line 133
    .line 134
    invoke-direct {v0, p0}, Lh7/f;-><init>(Lcom/woha/appmanag/ManageAppsActivity;)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/woha/appmanag/ManageAppsActivity;->d:Lh7/f;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lh7/b;

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    invoke-direct {v0, v5, p0}, Lh7/b;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Lh7/c;

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    invoke-direct {p1, p0, v0}, Lh7/c;-><init>(Lcom/woha/appmanag/ManageAppsActivity;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lh7/c;

    .line 161
    .line 162
    const/4 v0, 0x1

    .line 163
    invoke-direct {p1, p0, v0}, Lh7/c;-><init>(Lcom/woha/appmanag/ManageAppsActivity;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Lh7/c;

    .line 170
    .line 171
    const/4 v0, 0x2

    .line 172
    invoke-direct {p1, p0, v0}, Lh7/c;-><init>(Lcom/woha/appmanag/ManageAppsActivity;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Lh7/c;

    .line 179
    .line 180
    const/4 v0, 0x3

    .line 181
    invoke-direct {p1, p0, v0}, Lh7/c;-><init>(Lcom/woha/appmanag/ManageAppsActivity;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/woha/appmanag/ManageAppsActivity;->s()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/woha/appmanag/ManageAppsActivity;->d:Lh7/f;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/woha/appmanag/ManageAppsActivity;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_8e

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    new-array v3, v2, [B

    .line 18
    .line 19
    fill-array-data v3, :array_a0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    new-array v1, v1, [B

    .line 33
    .line 34
    fill-array-data v1, :array_a8

    .line 35
    .line 36
    .line 37
    new-array v3, v2, [B

    .line 38
    .line 39
    fill-array-data v3, :array_bc

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/woha/appmanag/ManageAppsActivity;->c:Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3b
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_8c

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/woha/appmanag/ManageAppsActivity;->c:Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v4, p0, Lcom/woha/appmanag/ManageAppsActivity;->c:Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 89
    .line 90
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    .line 94
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    const/16 v7, 0x15

    .line 97
    .line 98
    new-array v7, v7, [B

    .line 99
    .line 100
    fill-array-data v7, :array_c4

    .line 101
    .line 102
    .line 103
    new-array v8, v2, [B

    .line 104
    .line 105
    fill-array-data v8, :array_d4

    .line 106
    .line 107
    .line 108
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_3b

    .line 117
    .line 118
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 119
    .line 120
    and-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    if-nez v1, :cond_3b

    .line 123
    .line 124
    iget-object v1, p0, Lcom/woha/appmanag/ManageAppsActivity;->b:Ljava/util/ArrayList;

    .line 125
    .line 126
    new-instance v6, Lh7/g;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v3, v6, Lh7/g;->a:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v5, v6, Lh7/g;->b:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v4, v6, Lh7/g;->c:Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_3b

    .line 141
    :cond_8c
    return-void

    .line 142
    nop

    .line 143
    :array_8e
    .array-data 1
        -0xat
        -0x7dt
        0x57t
        -0x79t
        0x11t
        -0x6dt
        -0x40t
        0x55t
        -0x2t
        -0x7dt
        0x47t
        -0x70t
        0x10t
        -0x72t
        -0x76t
        0x1at
        -0xct
        -0x67t
        0x5at
        -0x66t
        0x10t
        -0x2ct
        -0x17t
        0x3at
        -0x22t
        -0x5dt
    .end array-data

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
    nop

    .line 161
    :array_a0
    .array-data 1
        -0x69t
        -0x13t
        0x33t
        -0xbt
        0x7et
        -0x6t
        -0x5ct
        0x7bt
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_a8
    .array-data 1
        -0x10t
        0x69t
        0x73t
        -0x40t
        0x13t
        -0x59t
        -0x6dt
        0x27t
        -0x8t
        0x69t
        0x63t
        -0x29t
        0x12t
        -0x46t
        -0x27t
        0x6at
        -0x10t
        0x73t
        0x72t
        -0x2bt
        0x13t
        -0x44t
        -0x72t
        0x27t
        -0x23t
        0x46t
        0x42t
        -0x4t
        0x3ft
        -0x7at
        -0x4et
        0x5bt
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_bc
    .array-data 1
        -0x6ft
        0x7t
        0x17t
        -0x4et
        0x7ct
        -0x32t
        -0x9t
        0x9t
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
        -0x50t
        0x58t
        0x6bt
        -0x14t
        0x17t
        0x7ct
        -0x4ft
        -0x5bt
        -0x5dt
        0x5bt
        0x63t
        -0x14t
        0x1ct
        0x65t
        -0x5at
        -0x5ft
        -0x60t
        0x43t
        0x67t
        -0x50t
        0x6t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
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
        -0x2dt
        0x37t
        0x6t
        -0x3et
        0x72t
        0x4t
        -0x30t
        -0x38t
    .end array-data
.end method

.method public final t(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    fill-array-data v1, :array_46

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    fill-array-data v3, :array_58

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    new-array v3, v2, [B

    .line 30
    .line 31
    fill-array-data v3, :array_60

    .line 32
    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    fill-array-data v2, :array_68

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const/high16 p1, 0x10000000

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {p0, v0, p1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_46
    .array-data 1
        -0x49t
        0x19t
        0x4ct
        -0x21t
        0x1bt
        0xbt
        -0x46t
        -0x57t
        -0x41t
        0x19t
        0x5ct
        -0x38t
        0x1at
        0x16t
        -0x10t
        -0x1at
        -0x4bt
        0x3t
        0x41t
        -0x3et
        0x1at
        0x4ct
        -0x66t
        -0x3et
        -0x66t
        0x32t
        0x7ct
        -0x18t
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
    :array_58
    .array-data 1
        -0x2at
        0x77t
        0x28t
        -0x53t
        0x74t
        0x62t
        -0x22t
        -0x79t
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
        0x6ft
        0x6dt
        -0x20t
        -0x57t
        0x1ft
        0xat
        0x7t
        -0x40t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_68
    .array-data 1
        0x1ft
        0xct
        -0x7dt
        -0x3et
        0x7et
        0x6dt
        0x62t
        -0x6t
    .end array-data
.end method
