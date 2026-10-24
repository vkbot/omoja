.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;
.super Ljava/lang/Object;
.source "CommandStatusWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandStatusWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandStatusWrapper.kt\ncom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper\n*L\n1#1,120:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;",
        "",
        "()V",
        "<set-?>",
        "",
        "bCswStatus",
        "getBCswStatus",
        "()B",
        "",
        "dCswDataResidue",
        "getDCswDataResidue",
        "()I",
        "dCswSignature",
        "dCswTag",
        "getDCswTag",
        "read",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
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
.field public static final COMMAND_FAILED:I = 0x1

.field public static final COMMAND_PASSED:I = 0x0

.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper$Companion;

.field private static final D_CSW_SIGNATURE:I = 0x53425355

.field public static final PHASE_ERROR:I = 0x2

.field public static final SIZE:I = 0xd

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bCswStatus:B

.field private dCswDataResidue:I

.field private dCswSignature:I

.field private dCswTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper$Companion;

    .line 115
    const-class v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommandStatusWrapper::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x53425355

    iput v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswSignature:I

    return-void
.end method


# virtual methods
.method public final getBCswStatus()B
    .locals 1

    .line 67
    iget-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->bCswStatus:B

    return v0
.end method

.method public final getDCswDataResidue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswDataResidue:I

    return v0
.end method

.method public final getDCswTag()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswTag:I

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    move-object v0, p0

    check-cast v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    .local v0, "$this$apply":Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;
    const/4 v1, 0x0

    .line 81
    .local v1, "$i$a$-apply-CommandStatusWrapper$read$1":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswSignature:I

    .line 82
    const v3, 0x53425355

    if-eq v2, v3, :cond_0

    .line 83
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected dCSWSignature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswSignature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswTag:I

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->dCswDataResidue:I

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->bCswStatus:B

    .line 88
    .end local v0    # "$this$apply":Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;
    .end local v1    # "$i$a$-apply-CommandStatusWrapper$read$1":I
    nop

    .line 79
    nop

    .line 89
    return-void
.end method
