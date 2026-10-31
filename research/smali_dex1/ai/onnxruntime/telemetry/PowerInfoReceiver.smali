.class Lai/onnxruntime/telemetry/PowerInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final m_parent:Lai/onnxruntime/telemetry/HttpClient;


# direct methods
.method public constructor <init>(Lai/onnxruntime/telemetry/HttpClient;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/telemetry/PowerInfoReceiver;->m_parent:Lai/onnxruntime/telemetry/HttpClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    const-string p1, "status"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eq p1, v0, :cond_11

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-ne p1, v0, :cond_f

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    move p1, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 19
    :goto_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1c

    .line 22
    .line 23
    if-lt v0, v2, :cond_1e

    .line 24
    .line 25
    const-string v0, "battery_low"

    .line 26
    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_1e
    iget-object p2, p0, Lai/onnxruntime/telemetry/PowerInfoReceiver;->m_parent:Lai/onnxruntime/telemetry/HttpClient;

    .line 32
    .line 33
    invoke-virtual {p2, p1, v1}, Lai/onnxruntime/telemetry/HttpClient;->onPowerChange(ZZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
