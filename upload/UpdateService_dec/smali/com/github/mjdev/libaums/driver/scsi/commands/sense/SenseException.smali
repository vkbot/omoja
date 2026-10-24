.class public Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
.super Ljava/io/IOException;
.source "SenseException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;",
        "Ljava/io/IOException;",
        "response",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;",
        "msg",
        "",
        "(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;Ljava/lang/String;)V",
        "additionalSenseCode",
        "",
        "getAdditionalSenseCode",
        "()B",
        "additionalSenseCodeQualifier",
        "getAdditionalSenseCodeQualifier",
        "senseKey",
        "getSenseKey",
        "Companion",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;


# instance fields
.field private final additionalSenseCode:B

.field private final additionalSenseCodeQualifier:B

.field private final senseKey:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
    .param p2, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    nop

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;

    invoke-static {v1, p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;->access$responseToString(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException$Companion;Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getSenseKey()B

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-byte v1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->senseKey:B

    .line 12
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getAdditionalSenseCode()B

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-byte v1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->additionalSenseCode:B

    .line 13
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getAdditionalSenseCodeQualifier()B

    move-result v0

    :cond_2
    iput-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->additionalSenseCodeQualifier:B

    return-void
.end method


# virtual methods
.method public final getAdditionalSenseCode()B
    .locals 1

    .line 12
    iget-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->additionalSenseCode:B

    return v0
.end method

.method public final getAdditionalSenseCodeQualifier()B
    .locals 1

    .line 13
    iget-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->additionalSenseCodeQualifier:B

    return v0
.end method

.method public final getSenseKey()B
    .locals 1

    .line 11
    iget-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->senseKey:B

    return v0
.end method
