.class public interface abstract Lai/onnxruntime/telemetry/HttpClientRequest$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/telemetry/HttpClientRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/telemetry/HttpClientRequest$Factory$AndroidUrlConnection;
    }
.end annotation


# virtual methods
.method public abstract create(Lai/onnxruntime/telemetry/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lai/onnxruntime/telemetry/HttpClientRequest$Headers;)Lai/onnxruntime/telemetry/HttpClientRequest;
    .param p1    # Lai/onnxruntime/telemetry/HttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lai/onnxruntime/telemetry/HttpClientRequest$Headers;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
