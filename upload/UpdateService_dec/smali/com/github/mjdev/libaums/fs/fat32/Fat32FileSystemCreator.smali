.class public final Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystemCreator;
.super Ljava/lang/Object;
.source "Fat32FileSystemCreator.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/fs/FileSystemCreator;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystemCreator;",
        "Lcom/github/mjdev/libaums/fs/FileSystemCreator;",
        "()V",
        "read",
        "Lcom/github/mjdev/libaums/fs/FileSystem;",
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
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/FileSystem;
    .locals 1
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

    .line 17
    sget-object v0, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;->Companion:Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem$Companion;

    invoke-virtual {v0, p2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem$Companion;->read(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;

    move-result-object v0

    check-cast v0, Lcom/github/mjdev/libaums/fs/FileSystem;

    return-object v0
.end method
