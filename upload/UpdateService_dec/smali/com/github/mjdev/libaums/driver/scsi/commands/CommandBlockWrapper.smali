.class public abstract Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
.super Ljava/lang/Object;
.source "CommandBlockWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;,
        Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandBlockWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandBlockWrapper.kt\ncom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper\n*L\n1#1,149:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \"2\u00020\u0001:\u0002\"#B1\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;",
        "",
        "dCbwDataTransferLength",
        "",
        "direction",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;",
        "bCbwLun",
        "",
        "bCbwcbLength",
        "bCbwDynamicSize",
        "",
        "(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZ)V",
        "getBCbwDynamicSize",
        "()Z",
        "getBCbwcbLength",
        "()B",
        "bmCbwFlags",
        "getBmCbwFlags",
        "setBmCbwFlags",
        "(B)V",
        "getDCbwDataTransferLength",
        "()I",
        "setDCbwDataTransferLength",
        "(I)V",
        "dCbwTag",
        "getDCbwTag",
        "setDCbwTag",
        "getDirection",
        "()Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;",
        "dynamicSizeFromPartialResponse",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "serialize",
        "",
        "Companion",
        "Direction",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Companion;

.field private static final D_CBW_SIGNATURE:I = 0x43425355


# instance fields
.field private final bCbwDynamicSize:Z

.field private final bCbwLun:B

.field private final bCbwcbLength:B

.field private bmCbwFlags:B

.field private dCbwDataTransferLength:I

.field private dCbwTag:I

.field private final direction:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Companion;

    return-void
.end method

.method protected constructor <init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZ)V
    .locals 1
    .param p1, "dCbwDataTransferLength"    # I
    .param p2, "direction"    # Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;
    .param p3, "bCbwLun"    # B
    .param p4, "bCbwcbLength"    # B
    .param p5, "bCbwDynamicSize"    # Z

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwDataTransferLength:I

    iput-object p2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->direction:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    iput-byte p3, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwLun:B

    iput-byte p4, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwcbLength:B

    iput-boolean p5, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwDynamicSize:Z

    .line 102
    sget-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->IN:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    if-ne p2, v0, :cond_0

    .line 103
    const/16 v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bmCbwFlags:B

    .line 104
    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 69
    const/4 p5, 0x0

    move v5, p5

    goto :goto_0

    .line 0
    :cond_0
    move v5, p5

    .line 69
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;-><init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZ)V

    return-void
.end method


# virtual methods
.method public dynamicSizeFromPartialResponse(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "If dynamic length possible override in subclass"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getBCbwDynamicSize()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwDynamicSize:Z

    return v0
.end method

.method public final getBCbwcbLength()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwcbLength:B

    return v0
.end method

.method public final getBmCbwFlags()B
    .locals 1

    .line 79
    iget-byte v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bmCbwFlags:B

    return v0
.end method

.method public final getDCbwDataTransferLength()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwDataTransferLength:I

    return v0
.end method

.method public final getDCbwTag()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwTag:I

    return v0
.end method

.method public final getDirection()Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->direction:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    return-object v0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    move-object v0, p1

    .local v0, "$this$apply":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 118
    .local v1, "$i$a$-apply-CommandBlockWrapper$serialize$1":I
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 119
    const v2, 0x43425355

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    iget v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwTag:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    iget v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwDataTransferLength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget-byte v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bmCbwFlags:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    iget-byte v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwLun:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    iget-byte v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bCbwcbLength:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    .end local v0    # "$this$apply":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$a$-apply-CommandBlockWrapper$serialize$1":I
    nop

    .line 117
    nop

    .line 126
    return-void
.end method

.method public final setBmCbwFlags(B)V
    .locals 0
    .param p1, "<set-?>"    # B

    .line 79
    iput-byte p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->bmCbwFlags:B

    return-void
.end method

.method public final setDCbwDataTransferLength(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 54
    iput p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwDataTransferLength:I

    return-void
.end method

.method public final setDCbwTag(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 78
    iput p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dCbwTag:I

    return-void
.end method
