.class public final Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/telemetry/HttpClientRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderEntry"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;->key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lai/onnxruntime/telemetry/HttpClientRequest$HeaderEntry;->value:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
