.class public final Lcom/github/mjdev/libaums/partition/fs/FileSystemPartitionTableCreator;
.super Ljava/lang/Object;
.source "FileSystemPartitionTableCreator.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/fs/FileSystemPartitionTableCreator;",
        "Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;",
        "()V",
        "read",
        "Lcom/github/mjdev/libaums/partition/PartitionTable;",
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
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/PartitionTable;
    .locals 7
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 20
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/github/mjdev/libaums/partition/fs/FileSystemPartitionTable;

    .line 21
    sget-object v2, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->INSTANCE:Lcom/github/mjdev/libaums/fs/FileSystemFactory;

    new-instance v3, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;-><init>(III)V

    new-instance v5, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;

    const/4 v6, 0x2

    invoke-direct {v5, p1, v4, v6, v0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v5, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-virtual {v2, v3, v5}, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->createFileSystem(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/FileSystem;

    move-result-object v2

    .line 20
    invoke-direct {v1, p1, v2}, Lcom/github/mjdev/libaums/partition/fs/FileSystemPartitionTable;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/FileSystem;)V
    :try_end_0
    .catch Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;
    nop

    .line 19
    .end local v1    # "e":Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;
    :goto_0
    check-cast v0, Lcom/github/mjdev/libaums/partition/PartitionTable;

    return-object v0
.end method
