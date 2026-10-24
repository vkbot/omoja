.class public final Lcom/github/mjdev/libaums/fs/fat32/FatFile;
.super Lcom/github/mjdev/libaums/fs/AbstractUsbFile;
.source "FatFile.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B1\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0010\u0010)\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0008\u0010*\u001a\u00020\u0014H\u0016J\u0008\u0010+\u001a\u00020&H\u0016J\u0008\u0010,\u001a\u00020&H\u0016J\u0008\u0010-\u001a\u00020&H\u0002J\u0008\u0010.\u001a\u00020\u0014H\u0016J\u0008\u0010/\u001a\u00020\u0014H\u0016J\u0013\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u001b01H\u0016\u00a2\u0006\u0002\u00102J\u0013\u00103\u001a\u0008\u0012\u0004\u0012\u00020(01H\u0016\u00a2\u0006\u0002\u00104J\u0010\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020(H\u0016J\u0018\u00107\u001a\u00020&2\u0006\u00108\u001a\u00020\u00142\u0006\u00106\u001a\u000209H\u0016J\u0018\u0010:\u001a\u00020&2\u0006\u00108\u001a\u00020\u00142\u0006\u0010;\u001a\u000209H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0011R$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00148V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u001b8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006<"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/FatFile;",
        "Lcom/github/mjdev/libaums/fs/AbstractUsbFile;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "fat",
        "Lcom/github/mjdev/libaums/fs/fat32/FAT;",
        "bootSector",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;",
        "entry",
        "Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;",
        "parent",
        "Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;",
        "(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V",
        "chain",
        "Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;",
        "isDirectory",
        "",
        "()Z",
        "isRoot",
        "newLength",
        "",
        "length",
        "getLength",
        "()J",
        "setLength",
        "(J)V",
        "newName",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getParent",
        "()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;",
        "setParent",
        "(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V",
        "close",
        "",
        "createDirectory",
        "Lcom/github/mjdev/libaums/fs/UsbFile;",
        "createFile",
        "createdAt",
        "delete",
        "flush",
        "initChain",
        "lastAccessed",
        "lastModified",
        "list",
        "",
        "()[Ljava/lang/String;",
        "listFiles",
        "()[Lcom/github/mjdev/libaums/fs/UsbFile;",
        "moveTo",
        "destination",
        "read",
        "offset",
        "Ljava/nio/ByteBuffer;",
        "write",
        "source",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

.field private final bootSector:Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

.field private chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

.field private final entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

.field private final fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

.field private parent:Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;


# direct methods
.method public constructor <init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V
    .locals 1
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .param p2, "fat"    # Lcom/github/mjdev/libaums/fs/fat32/FAT;
    .param p3, "bootSector"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p4, "entry"    # Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;
    .param p5, "parent"    # Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bootSector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    nop

    .line 42
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iput-object p2, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

    iput-object p3, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->bootSector:Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    iput-object p4, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    iput-object p5, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->parent:Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    return-void
.end method

.method public static final synthetic access$getChain$p(Lcom/github/mjdev/libaums/fs/fat32/FatFile;)Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;
    .locals 2
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/FatFile;

    .line 26
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    if-nez v0, :cond_0

    const-string v1, "chain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setChain$p(Lcom/github/mjdev/libaums/fs/fat32/FatFile;Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/FatFile;
    .param p1, "<set-?>"    # Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    .line 26
    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    return-void
.end method

.method private final initChain()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;

    iget-object v0, v0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getStartCluster()J

    move-result-wide v2

    iget-object v4, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iget-object v5, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

    iget-object v6, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->bootSector:Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;-><init>(JLcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)V

    iput-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->flush()V

    .line 130
    return-void
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public createFile(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public createdAt()J
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getActualEntry()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getCreatedDateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->initChain()V

    .line 151
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->removeEntry$libaums_release(Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;)V

    .line 152
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->write$libaums_release()V

    .line 153
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    if-nez v0, :cond_2

    const-string v1, "chain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->setLength$libaums_release(J)V

    .line 154
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->write$libaums_release()V

    .line 125
    return-void
.end method

.method public getLength()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getName$libaums_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/github/mjdev/libaums/fs/UsbFile;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    move-result-object v0

    check-cast v0, Lcom/github/mjdev/libaums/fs/UsbFile;

    return-object v0
.end method

.method public getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->parent:Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public lastAccessed()J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getActualEntry()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getLastAccessedDateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastModified()J
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getActualEntry()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getLastModifiedDateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public listFiles()[Lcom/github/mjdev/libaums/fs/UsbFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a file!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public moveTo(Lcom/github/mjdev/libaums/fs/UsbFile;)V
    .locals 2
    .param p1, "destination"    # Lcom/github/mjdev/libaums/fs/UsbFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0, v1, p1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->move$libaums_release(Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Lcom/github/mjdev/libaums/fs/UsbFile;)V

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    invoke-virtual {p0, v0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->setParent(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V

    .line 146
    return-void
.end method

.method public read(JLjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "offset"    # J
    .param p3, "destination"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->initChain()V

    .line 102
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->setLastAccessedTimeToNow()V

    .line 103
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    if-nez v0, :cond_0

    const-string v1, "chain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->read$libaums_release(JLjava/nio/ByteBuffer;)V

    .line 104
    return-void
.end method

.method public setLength(J)V
    .locals 2
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->initChain()V

    .line 58
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    if-nez v0, :cond_0

    const-string v1, "chain"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->setLength$libaums_release(J)V

    .line 59
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0, p1, p2}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->setFileSize(J)V

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "newName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getParent()Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0, v1, p1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->renameEntry$libaums_release(Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Ljava/lang/String;)V

    return-void
.end method

.method public setParent(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    .line 42
    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->parent:Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    return-void
.end method

.method public write(JLjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "offset"    # J
    .param p3, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->initChain()V

    .line 109
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 110
    .local v0, "length":J
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->getLength()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->setLength(J)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->entry:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v2}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->setLastModifiedTimeToNow()V

    .line 113
    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/FatFile;->chain:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    if-nez v2, :cond_1

    const-string v3, "chain"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, p1, p2, p3}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->write$libaums_release(JLjava/nio/ByteBuffer;)V

    .line 114
    return-void
.end method
