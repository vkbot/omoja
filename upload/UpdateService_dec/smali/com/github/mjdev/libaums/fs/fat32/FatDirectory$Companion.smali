.class public final Lcom/github/mjdev/libaums/fs/fat32/FatDirectory$Companion;
.super Ljava/lang/Object;
.source "FatDirectory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/FatDirectory$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "readRoot",
        "Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;",
        "fs",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "fat",
        "Lcom/github/mjdev/libaums/fs/fat32/FAT;",
        "bootSector",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;",
        "readRoot$libaums_release",
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

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 531
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final readRoot$libaums_release(Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;
    .locals 8
    .param p1, "fs"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;
    .param p2, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .param p3, "fat"    # Lcom/github/mjdev/libaums/fs/fat32/FAT;
    .param p4, "bootSector"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bootSector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;-><init>(Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V

    .line 554
    .local v0, "result":Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;
    new-instance v7, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    invoke-virtual {p4}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getRootDirStartCluster()J

    move-result-wide v2

    .line 555
    nop

    .line 554
    move-object v1, v7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;-><init>(JLcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)V

    invoke-static {v0, v7}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->access$setChain$p(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;)V

    .line 556
    invoke-static {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->access$init(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V

    .line 557
    return-object v0
.end method
