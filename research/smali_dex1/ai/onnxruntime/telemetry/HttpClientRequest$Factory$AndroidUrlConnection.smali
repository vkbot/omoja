.class public Lai/onnxruntime/telemetry/HttpClientRequest$Factory$AndroidUrlConnection;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/telemetry/HttpClientRequest$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/telemetry/HttpClientRequest$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidUrlConnection"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lai/onnxruntime/telemetry/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lai/onnxruntime/telemetry/HttpClientRequest$Headers;)Lai/onnxruntime/telemetry/HttpClientRequest;
    .registers 14
    .param p1    # Lai/onnxruntime/telemetry/HttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lai/onnxruntime/telemetry/HttpClientRequest$Headers;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lai/onnxruntime/telemetry/Request;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/telemetry/Request;-><init>(Lai/onnxruntime/telemetry/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lai/onnxruntime/telemetry/HttpClientRequest$Headers;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
