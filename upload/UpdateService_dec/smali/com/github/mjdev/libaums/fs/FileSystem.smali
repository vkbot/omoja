.class public interface abstract Lcom/github/mjdev/libaums/fs/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0012\u0010\u000c\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0005R\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\tR\u0012\u0010\u0014\u001a\u00020\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/FileSystem;",
        "",
        "capacity",
        "",
        "getCapacity",
        "()J",
        "chunkSize",
        "",
        "getChunkSize",
        "()I",
        "freeSpace",
        "getFreeSpace",
        "occupiedSpace",
        "getOccupiedSpace",
        "rootDirectory",
        "Lcom/github/mjdev/libaums/fs/UsbFile;",
        "getRootDirectory",
        "()Lcom/github/mjdev/libaums/fs/UsbFile;",
        "type",
        "getType",
        "volumeLabel",
        "",
        "getVolumeLabel",
        "()Ljava/lang/String;",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getCapacity()J
.end method

.method public abstract getChunkSize()I
.end method

.method public abstract getFreeSpace()J
.end method

.method public abstract getOccupiedSpace()J
.end method

.method public abstract getRootDirectory()Lcom/github/mjdev/libaums/fs/UsbFile;
.end method

.method public abstract getType()I
.end method

.method public abstract getVolumeLabel()Ljava/lang/String;
.end method
