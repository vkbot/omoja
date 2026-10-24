.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/sense/Unrecoverable;
.super Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
.source "SenseException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/Unrecoverable;",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;",
        "response",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;",
        "(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;)V",
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
.method public constructor <init>(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;

    .line 52
    nop

    .line 53
    const-string v0, "Can\'t communicate with device"

    invoke-direct {p0, p1, v0}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;-><init>(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;Ljava/lang/String;)V

    return-void
.end method
