.class public Lcom/wireguard/android/backend/GoBackend$VpnService;
.super Landroid/net/VpnService;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wireguard/android/backend/GoBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VpnService"
.end annotation


# instance fields
.field public b:Lcom/wireguard/android/backend/GoBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    .line 1
    sget-object v0, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wireguard/android/backend/GoBackend$VpnService;->b:Lcom/wireguard/android/backend/GoBackend;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget v0, v0, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->a(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/wireguard/android/backend/GoBackend$VpnService;->b:Lcom/wireguard/android/backend/GoBackend;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iput-object v3, v0, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;

    .line 21
    .line 22
    iput v2, v0, Lcom/wireguard/android/backend/GoBackend;->d:I

    .line 23
    .line 24
    iput-object v3, v0, Lcom/wireguard/android/backend/GoBackend;->b:Lf7/c;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {v1, v0}, Lr5/c;->l(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object v0, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/support/v4/media/h;

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-direct {v0, v1}, Landroid/support/v4/media/h;-><init>(I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 42
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/wireguard/android/backend/GoBackend;->e:Landroid/support/v4/media/h;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    :cond_1
    const-string v0, "WireGuard/GoBackend"

    .line 47
    .line 48
    const-string v1, "Service started by Always-on VPN feature"

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method
