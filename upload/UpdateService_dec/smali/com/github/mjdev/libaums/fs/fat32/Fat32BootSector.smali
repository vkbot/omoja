.class public final Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
.super Ljava/lang/Object;
.source "Fat32BootSector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020\u0004J\u0008\u0010+\u001a\u00020%H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000bR\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000bR\u001e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000fR\u001e\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u000bR\u001e\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u000fR\u001e\u0010!\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u000fR\u001e\u0010#\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0013R\"\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0007\u001a\u0004\u0018\u00010%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(\u00a8\u0006-"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;",
        "",
        "()V",
        "bytesPerCluster",
        "",
        "getBytesPerCluster",
        "()I",
        "<set-?>",
        "",
        "bytesPerSector",
        "getBytesPerSector",
        "()S",
        "dataAreaOffset",
        "",
        "getDataAreaOffset",
        "()J",
        "",
        "fatCount",
        "getFatCount",
        "()B",
        "fsInfoStartSector",
        "getFsInfoStartSector",
        "",
        "isFatMirrored",
        "()Z",
        "reservedSectors",
        "getReservedSectors",
        "rootDirStartCluster",
        "getRootDirStartCluster",
        "sectorsPerCluster",
        "getSectorsPerCluster",
        "sectorsPerFat",
        "getSectorsPerFat",
        "totalNumberOfSectors",
        "getTotalNumberOfSectors",
        "validFat",
        "getValidFat",
        "",
        "volumeLabel",
        "getVolumeLabel",
        "()Ljava/lang/String;",
        "getFatOffset",
        "fatNumber",
        "toString",
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
.field private static final BYTES_PER_SECTOR_OFF:I = 0xb

.field public static final Companion:Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;

.field private static final FAT_COUNT_OFF:I = 0x10

.field private static final FLAGS_OFF:I = 0x28

.field private static final FS_INFO_SECTOR_OFF:I = 0x30

.field private static final RESERVED_COUNT_OFF:I = 0xe

.field private static final ROOT_DIR_CLUSTER_OFF:I = 0x2c

.field private static final SECTORS_PER_CLUSTER_OFF:I = 0xd

.field private static final SECTORS_PER_FAT_OFF:I = 0x24

.field private static final TOTAL_SECTORS_OFF:I = 0x20

.field private static final VOLUME_LABEL_OFF:I = 0x30


# instance fields
.field private bytesPerSector:S

.field private fatCount:B

.field private fsInfoStartSector:S

.field private isFatMirrored:Z

.field private reservedSectors:S

.field private rootDirStartCluster:J

.field private sectorsPerCluster:S

.field private sectorsPerFat:J

.field private totalNumberOfSectors:J

.field private validFat:B

.field private volumeLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->Companion:Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 31
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBytesPerSector$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)S
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    return v0
.end method

.method public static final synthetic access$getFatCount$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)B
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-byte v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fatCount:B

    return v0
.end method

.method public static final synthetic access$getFsInfoStartSector$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)S
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fsInfoStartSector:S

    return v0
.end method

.method public static final synthetic access$getReservedSectors$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)S
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->reservedSectors:S

    return v0
.end method

.method public static final synthetic access$getRootDirStartCluster$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)J
    .locals 2
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->rootDirStartCluster:J

    return-wide v0
.end method

.method public static final synthetic access$getSectorsPerCluster$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)S
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerCluster:S

    return v0
.end method

.method public static final synthetic access$getSectorsPerFat$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)J
    .locals 2
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerFat:J

    return-wide v0
.end method

.method public static final synthetic access$getTotalNumberOfSectors$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)J
    .locals 2
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->totalNumberOfSectors:J

    return-wide v0
.end method

.method public static final synthetic access$getValidFat$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)B
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-byte v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->validFat:B

    return v0
.end method

.method public static final synthetic access$getVolumeLabel$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->volumeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isFatMirrored$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)Z
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    .line 31
    iget-boolean v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->isFatMirrored:Z

    return v0
.end method

.method public static final synthetic access$setBytesPerSector$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # S

    .line 31
    iput-short p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    return-void
.end method

.method public static final synthetic access$setFatCount$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;B)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # B

    .line 31
    iput-byte p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fatCount:B

    return-void
.end method

.method public static final synthetic access$setFatMirrored$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->isFatMirrored:Z

    return-void
.end method

.method public static final synthetic access$setFsInfoStartSector$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # S

    .line 31
    iput-short p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fsInfoStartSector:S

    return-void
.end method

.method public static final synthetic access$setReservedSectors$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # S

    .line 31
    iput-short p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->reservedSectors:S

    return-void
.end method

.method public static final synthetic access$setRootDirStartCluster$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;J)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # J

    .line 31
    iput-wide p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->rootDirStartCluster:J

    return-void
.end method

.method public static final synthetic access$setSectorsPerCluster$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # S

    .line 31
    iput-short p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerCluster:S

    return-void
.end method

.method public static final synthetic access$setSectorsPerFat$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;J)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # J

    .line 31
    iput-wide p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerFat:J

    return-void
.end method

.method public static final synthetic access$setTotalNumberOfSectors$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;J)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # J

    .line 31
    iput-wide p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->totalNumberOfSectors:J

    return-void
.end method

.method public static final synthetic access$setValidFat$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;B)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # B

    .line 31
    iput-byte p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->validFat:B

    return-void
.end method

.method public static final synthetic access$setVolumeLabel$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->volumeLabel:Ljava/lang/String;

    return-void
.end method

.method public static final read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->Companion:Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;

    invoke-virtual {v0, p0}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;->read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBytesPerCluster()I
    .locals 2

    .line 128
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerCluster:S

    iget-short v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getBytesPerSector()S
    .locals 1

    .line 38
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    return v0
.end method

.method public final getDataAreaOffset()J
    .locals 6

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getFatOffset(I)J

    move-result-wide v0

    iget-byte v2, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fatCount:B

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerFat:J

    mul-long/2addr v2, v4

    iget-short v4, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFatCount()B
    .locals 1

    .line 62
    iget-byte v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fatCount:B

    return v0
.end method

.method public final getFatOffset(I)J
    .locals 8
    .param p1, "fatNumber"    # I

    .line 152
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    int-to-long v0, v0

    iget-short v2, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->reservedSectors:S

    int-to-long v2, v2

    int-to-long v4, p1

    iget-wide v6, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerFat:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFsInfoStartSector()S
    .locals 1

    .line 91
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fsInfoStartSector:S

    return v0
.end method

.method public final getReservedSectors()S
    .locals 1

    .line 54
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->reservedSectors:S

    return v0
.end method

.method public final getRootDirStartCluster()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->rootDirStartCluster:J

    return-wide v0
.end method

.method public final getSectorsPerCluster()S
    .locals 1

    .line 46
    iget-short v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerCluster:S

    return v0
.end method

.method public final getSectorsPerFat()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerFat:J

    return-wide v0
.end method

.method public final getTotalNumberOfSectors()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->totalNumberOfSectors:J

    return-wide v0
.end method

.method public final getValidFat()B
    .locals 1

    .line 110
    iget-byte v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->validFat:B

    return v0
.end method

.method public final getVolumeLabel()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->volumeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final isFatMirrored()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->isFatMirrored:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fat32BootSector{bytesPerSector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-short v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->bytesPerSector:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sectorsPerCluster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-short v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerCluster:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reservedSectors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-short v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->reservedSectors:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-byte v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fatCount:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalNumberOfSectors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->totalNumberOfSectors:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sectorsPerFat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->sectorsPerFat:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rootDirStartCluster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->rootDirStartCluster:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fsInfoStartSector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-short v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->fsInfoStartSector:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fatMirrored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-boolean v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->isFatMirrored:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", validFat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-byte v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->validFat:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->volumeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
