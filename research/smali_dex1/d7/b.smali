.class public final synthetic Ld7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Ld7/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Ld7/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Ld7/b;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ld7/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_1c

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroid/bluetooth/BluetoothSocket;

    .line 9
    .line 10
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :pswitch_10
    check-cast v1, Lf5/g;

    .line 18
    .line 19
    iget-object v0, v1, Lf5/g;->d:Ly5/i;

    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_15
    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method
