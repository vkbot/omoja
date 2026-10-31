.class public final Lcom/example/navistart/HideManager/LauncherShortcutRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_1e

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_34

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p1, p2}, Lp0/b;->g(Landroid/content/Context;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :array_1e
    .array-data 1
        -0x8t
        0x15t
        0x33t
        -0x80t
        -0x51t
        -0x7at
        -0x4at
        0x48t
        -0x10t
        0x15t
        0x23t
        -0x69t
        -0x52t
        -0x65t
        -0x4t
        0x7t
        -0x6t
        0xft
        0x3et
        -0x63t
        -0x52t
        -0x3ft
        -0x70t
        0x29t
        -0x2at
        0x2ft
        0x8t
        -0x4ft
        -0x71t
        -0x5et
        -0x7et
        0x2at
        -0x24t
        0x2ft
        0x12t
        -0x4at
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :array_34
    .array-data 1
        -0x67t
        0x7bt
        0x57t
        -0xet
        -0x40t
        -0x11t
        -0x2et
        0x66t
    .end array-data
.end method
