.class public final synthetic Lm7/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/net/wifi/WifiManager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm7/h;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm7/h;->c:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lm7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm7/h;->c:Landroid/net/wifi/WifiManager;

    .line 7
    .line 8
    invoke-static {v0}, Lm7/k;->b(Landroid/net/wifi/WifiManager;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lm7/h;->c:Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    invoke-static {v0}, Lm7/k;->b(Landroid/net/wifi/WifiManager;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
