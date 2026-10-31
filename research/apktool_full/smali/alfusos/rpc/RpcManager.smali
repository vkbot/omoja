.class public Lalfusos/rpc/RpcManager;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalfusos/rpc/RpcManager$Holder;,
        Lalfusos/rpc/RpcManager$OnRpcListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lalfusos/rpc/RpcManager;
    .locals 1

    .line 1
    sget-object v0, Lalfusos/rpc/RpcManager$Holder;->mInstance:Lalfusos/rpc/RpcManager;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getMessage(I[B)[B
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [B

    .line 3
    .line 4
    return-object p1
.end method

.method public registerListener(IBLalfusos/rpc/RpcManager$OnRpcListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendMessage(I[B)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
