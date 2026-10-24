.class public final Lcom/github/mjdev/libaums/partition/Partition;
.super Lcom/github/mjdev/libaums/driver/ByteBlockDevice;
.source "Partition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/partition/Partition$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/Partition;",
        "Lcom/github/mjdev/libaums/driver/ByteBlockDevice;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "entry",
        "Lcom/github/mjdev/libaums/partition/PartitionTableEntry;",
        "(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/partition/PartitionTableEntry;)V",
        "<set-?>",
        "Lcom/github/mjdev/libaums/fs/FileSystem;",
        "fileSystem",
        "getFileSystem",
        "()Lcom/github/mjdev/libaums/fs/FileSystem;",
        "volumeLabel",
        "",
        "getVolumeLabel",
        "()Ljava/lang/String;",
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
.field public static final Companion:Lcom/github/mjdev/libaums/partition/Partition$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileSystem:Lcom/github/mjdev/libaums/fs/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/partition/Partition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/partition/Partition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/partition/Partition;->Companion:Lcom/github/mjdev/libaums/partition/Partition$Companion;

    .line 65
    const-class v0, Lcom/github/mjdev/libaums/partition/Partition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Partition::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/partition/Partition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/partition/PartitionTableEntry;)V
    .locals 1
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .param p2, "entry"    # Lcom/github/mjdev/libaums/partition/PartitionTableEntry;

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->getLogicalBlockAddress()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;I)V

    return-void
.end method

.method public static final synthetic access$getFileSystem$p(Lcom/github/mjdev/libaums/partition/Partition;)Lcom/github/mjdev/libaums/fs/FileSystem;
    .locals 2
    .param p0, "$this"    # Lcom/github/mjdev/libaums/partition/Partition;

    .line 40
    iget-object v0, p0, Lcom/github/mjdev/libaums/partition/Partition;->fileSystem:Lcom/github/mjdev/libaums/fs/FileSystem;

    if-nez v0, :cond_0

    const-string v1, "fileSystem"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/github/mjdev/libaums/partition/Partition;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setFileSystem$p(Lcom/github/mjdev/libaums/partition/Partition;Lcom/github/mjdev/libaums/fs/FileSystem;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/partition/Partition;
    .param p1, "<set-?>"    # Lcom/github/mjdev/libaums/fs/FileSystem;

    .line 40
    iput-object p1, p0, Lcom/github/mjdev/libaums/partition/Partition;->fileSystem:Lcom/github/mjdev/libaums/fs/FileSystem;

    return-void
.end method


# virtual methods
.method public final getFileSystem()Lcom/github/mjdev/libaums/fs/FileSystem;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/github/mjdev/libaums/partition/Partition;->fileSystem:Lcom/github/mjdev/libaums/fs/FileSystem;

    if-nez v0, :cond_0

    const-string v1, "fileSystem"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVolumeLabel()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/github/mjdev/libaums/partition/Partition;->fileSystem:Lcom/github/mjdev/libaums/fs/FileSystem;

    if-nez v0, :cond_0

    const-string v1, "fileSystem"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/FileSystem;->getVolumeLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
