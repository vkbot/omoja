.class public final Lcom/bumptech/glide/manager/r;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/manager/r;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/manager/r;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/bumptech/glide/manager/r;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bumptech/glide/manager/r;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/woha/wifim/MainWifiManadger;

    .line 9
    .line 10
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/woha/wifim/MainWifiManadger;->z()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/manager/q;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p1, p0, v1, v0}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/lang/Object;ZI)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lc0/p;->f()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/bumptech/glide/manager/r;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/woha/wifim/MainWifiManadger;

    .line 13
    .line 14
    sget-object p2, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/woha/wifim/MainWifiManadger;->z()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/bumptech/glide/manager/r;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bumptech/glide/manager/r;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/woha/wifim/MainWifiManadger;

    .line 9
    .line 10
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/woha/wifim/MainWifiManadger;->z()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/manager/q;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, v0, v0}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/lang/Object;ZI)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lc0/p;->f()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
