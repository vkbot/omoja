.class Lai/onnxruntime/telemetry/ConnectivityCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private m_metered:Z

.field private final m_parent:Lai/onnxruntime/telemetry/HttpClient;


# direct methods
.method public constructor <init>(Lai/onnxruntime/telemetry/HttpClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/telemetry/ConnectivityCallback;->m_parent:Lai/onnxruntime/telemetry/HttpClient;

    .line 5
    .line 6
    iput-boolean p2, p0, Lai/onnxruntime/telemetry/ConnectivityCallback;->m_metered:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iget-boolean p2, p0, Lai/onnxruntime/telemetry/ConnectivityCallback;->m_metered:Z

    .line 10
    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    iput-boolean p1, p0, Lai/onnxruntime/telemetry/ConnectivityCallback;->m_metered:Z

    .line 14
    .line 15
    iget-object p2, p0, Lai/onnxruntime/telemetry/ConnectivityCallback;->m_parent:Lai/onnxruntime/telemetry/HttpClient;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lai/onnxruntime/telemetry/HttpClient;->onCostChange(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
