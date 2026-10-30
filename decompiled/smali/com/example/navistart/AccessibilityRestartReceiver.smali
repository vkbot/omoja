.class public Lcom/example/navistart/AccessibilityRestartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 p1, 0x1d

    .line 2
    .line 3
    new-array p1, p1, [B

    .line 4
    .line 5
    fill-array-data p1, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        0x1dt
        0x40t
        -0x27t
        -0x2ct
        0x36t
        0xft
        0xet
        0x75t
        0xet
        0x46t
        -0x37t
        -0x3bt
        0x24t
        0xet
        0x13t
        0x68t
        0x6t
        0x49t
        -0x3dt
        -0x2ct
        0x2et
        0x2t
        0x9t
        0x6ft
        0x1dt
        0x53t
        -0x3dt
        -0x3dt
        0x32t
    .end array-data

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
    .line 45
    .line 46
    nop

    .line 47
    :array_1
    .array-data 1
        0x4ft
        0x5t
        -0x76t
        -0x80t
        0x77t
        0x5dt
        0x5at
        0x2at
    .end array-data
.end method
