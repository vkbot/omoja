.class public final synthetic Lh7/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/appmanag/ManageAppsActivity;

.field public final synthetic d:Lh7/g;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/appmanag/ManageAppsActivity;Lh7/g;I)V
    .registers 4

    .line 1
    iput p3, p0, Lh7/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh7/d;->c:Lcom/woha/appmanag/ManageAppsActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lh7/d;->d:Lh7/g;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .line 1
    iget p1, p0, Lh7/d;->b:I

    .line 2
    .line 3
    iget-object p2, p0, Lh7/d;->d:Lh7/g;

    .line 4
    .line 5
    iget-object v0, p0, Lh7/d;->c:Lcom/woha/appmanag/ManageAppsActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_80

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p2, Lh7/g;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/woha/appmanag/ManageAppsActivity;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    sget-object p1, Lcom/woha/appmanag/ManageAppsActivity;->e:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p2, Lh7/g;->b:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p2, Landroid/content/Intent;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x11

    .line 37
    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    fill-array-data v2, :array_86

    .line 41
    .line 42
    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    new-array v4, v3, [B

    .line 46
    .line 47
    fill-array-data v4, :array_94

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v4, v1}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const/16 v1, 0xb

    .line 65
    .line 66
    new-array v1, v1, [B

    .line 67
    .line 68
    fill-array-data v1, :array_9c

    .line 69
    .line 70
    .line 71
    new-array v2, v3, [B

    .line 72
    .line 73
    fill-array-data v2, :array_a6

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/high16 v2, 0xa000000

    .line 88
    .line 89
    invoke-static {v0, v1, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    const/4 p2, -0x1

    .line 110
    invoke-static {p2, p1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance p2, Lh7/e;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-direct {p2, v0, v1}, Lh7/e;-><init>(Lcom/woha/appmanag/ManageAppsActivity;I)V

    .line 118
    .line 119
    .line 120
    const-wide/16 v0, 0x7d0

    .line 121
    .line 122
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    .line 124
    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_86
    .array-data 1
        -0x10t
        0x4ft
        0x13t
        -0x33t
        0x7ft
        -0x12t
        0x19t
        0x64t
        -0x6et
        0x56t
        0x2t
        -0x2at
        0x74t
        -0x12t
        0x18t
        0x69t
        -0x76t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    nop

    .line 149
    :array_94
    .array-data 1
        -0x22t
        0x1at
        0x5dt
        -0x7ct
        0x31t
        -0x43t
        0x4dt
        0x25t
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_9c
    .array-data 1
        -0x2dt
        -0x6ct
        -0x52t
        0x6et
        0x5bt
        0x2ct
        -0x20t
        0x3et
        -0x3et
        -0x68t
        -0x58t
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
    :array_a6
    .array-data 1
        -0x5dt
        -0xbt
        -0x33t
        0x5t
        0x3at
        0x4bt
        -0x7bt
        0x70t
    .end array-data
.end method
