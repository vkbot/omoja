.class Lalfusos/rpc/RpcManager$Holder;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalfusos/rpc/RpcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field static mInstance:Lalfusos/rpc/RpcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lalfusos/rpc/RpcManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lalfusos/rpc/RpcManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lalfusos/rpc/RpcManager$Holder;->mInstance:Lalfusos/rpc/RpcManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
