.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;
.super Ljava/lang/Object;
.source "SenseException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;",
        "",
        "()V",
        "responseToString",
        "",
        "response",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 15
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$responseToString(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;
    .param p1, "response"    # Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;

    .line 15
    invoke-direct {p0, p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;->responseToString(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final responseToString(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;)Ljava/lang/String;
    .locals 2
    .param p1, "response"    # Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;

    .line 17
    if-nez p1, :cond_0

    .line 18
    const-string v0, ""

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (ASC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getAdditionalSenseCode()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ASCQ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getAdditionalSenseCodeQualifier()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0
.end method
