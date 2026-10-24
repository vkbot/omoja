.class public final Lcom/github/mjdev/libaums/partition/Partition$Companion;
.super Ljava/lang/Object;
.source "Partition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/partition/Partition;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/Partition$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "createPartition",
        "Lcom/github/mjdev/libaums/partition/Partition;",
        "entry",
        "Lcom/github/mjdev/libaums/partition/PartitionTableEntry;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 63
    invoke-direct {p0}, Lcom/github/mjdev/libaums/partition/Partition$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPartition(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/Partition;
    .locals 3
    .param p1, "entry"    # Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
    .param p2, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    nop

    .line 82
    :try_start_0
    new-instance v0, Lcom/github/mjdev/libaums/partition/Partition;

    invoke-direct {v0, p2, p1}, Lcom/github/mjdev/libaums/partition/Partition;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/partition/PartitionTableEntry;)V

    .line 84
    .local v0, "partition":Lcom/github/mjdev/libaums/partition/Partition;
    sget-object v1, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->INSTANCE:Lcom/github/mjdev/libaums/fs/FileSystemFactory;

    move-object v2, v0

    check-cast v2, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-virtual {v1, p1, v2}, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->createFileSystem(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/FileSystem;

    move-result-object v1

    .line 85
    .local v1, "fs":Lcom/github/mjdev/libaums/fs/FileSystem;
    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/partition/Partition;->access$setFileSystem$p(Lcom/github/mjdev/libaums/partition/Partition;Lcom/github/mjdev/libaums/fs/FileSystem;)V
    :try_end_0
    .catch Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .end local v0    # "partition":Lcom/github/mjdev/libaums/partition/Partition;
    .end local v1    # "fs":Lcom/github/mjdev/libaums/fs/FileSystem;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;
    invoke-static {}, Lcom/github/mjdev/libaums/partition/Partition;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported fs on partition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    move-object v0, v1

    .line 81
    .end local v0    # "e":Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;
    :goto_0
    return-object v0
.end method
