.class final Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrtEnvCloser"
.end annotation


# instance fields
.field private final apiHandle:J

.field private final nativeHandle:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->apiHandle:J

    .line 5
    .line 6
    iput-wide p3, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->nativeHandle:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->apiHandle:J

    .line 2
    .line 3
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;->nativeHandle:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment;->b(JJ)V
    :try_end_7
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_8
    move-exception v0

    .line 10
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Error closing OrtEnvironment, "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
