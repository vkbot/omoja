.class public Lai/onnxruntime/OrtException;
.super Ljava/lang/Exception;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtException$OrtErrorCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 29
    invoke-static {p1}, Lai/onnxruntime/OrtException$OrtErrorCode;->mapFromInt(I)Lai/onnxruntime/OrtException$OrtErrorCode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Error code - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " - message: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lai/onnxruntime/OrtException;->errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    iput-object p1, p0, Lai/onnxruntime/OrtException;->errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;

    return-void
.end method


# virtual methods
.method public getCode()Lai/onnxruntime/OrtException$OrtErrorCode;
    .registers 2

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtException;->errorCode:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 2
    .line 3
    return-object v0
.end method
