.class public final Lcom/github/mjdev/libaums/fs/FileSystemFactory;
.super Ljava/lang/Object;
.source "FileSystemFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/FileSystemFactory;",
        "",
        "()V",
        "fileSystems",
        "Ljava/util/ArrayList;",
        "Lcom/github/mjdev/libaums/fs/FileSystemCreator;",
        "timeZone",
        "Ljava/util/TimeZone;",
        "kotlin.jvm.PlatformType",
        "timeZone$annotations",
        "getTimeZone",
        "()Ljava/util/TimeZone;",
        "setTimeZone",
        "(Ljava/util/TimeZone;)V",
        "createFileSystem",
        "Lcom/github/mjdev/libaums/fs/FileSystem;",
        "entry",
        "Lcom/github/mjdev/libaums/partition/PartitionTableEntry;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "registerFileSystem",
        "",
        "creator",
        "UnsupportedFileSystemException",
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
.field public static final INSTANCE:Lcom/github/mjdev/libaums/fs/FileSystemFactory;

.field private static final fileSystems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mjdev/libaums/fs/FileSystemCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/fs/FileSystemFactory;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->INSTANCE:Lcom/github/mjdev/libaums/fs/FileSystemFactory;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->fileSystems:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->timeZone:Ljava/util/TimeZone;

    .line 48
    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystemCreator;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystemCreator;-><init>()V

    check-cast v0, Lcom/github/mjdev/libaums/fs/FileSystemCreator;

    invoke-static {v0}, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->registerFileSystem(Lcom/github/mjdev/libaums/fs/FileSystemCreator;)V

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 43
    sget-object v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static final declared-synchronized registerFileSystem(Lcom/github/mjdev/libaums/fs/FileSystemCreator;)V
    .locals 2
    .param p0, "creator"    # Lcom/github/mjdev/libaums/fs/FileSystemCreator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;

    monitor-enter v0

    :try_start_0
    const-string v1, "creator"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->fileSystems:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 72
    .end local p0    # "creator":Lcom/github/mjdev/libaums/fs/FileSystemCreator;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/TimeZone;

    .line 43
    sput-object p0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public static synthetic timeZone$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final createFileSystem(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/FileSystem;
    .locals 3
    .param p1, "entry"    # Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
    .param p2, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory;->fileSystems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mjdev/libaums/fs/FileSystemCreator;

    .line 55
    .local v1, "creator":Lcom/github/mjdev/libaums/fs/FileSystemCreator;
    invoke-interface {v1, p1, p2}, Lcom/github/mjdev/libaums/fs/FileSystemCreator;->read(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/FileSystem;

    move-result-object v2

    .line 56
    .local v2, "fs":Lcom/github/mjdev/libaums/fs/FileSystem;
    if-eqz v2, :cond_0

    .line 57
    return-object v2

    .line 54
    .end local v1    # "creator":Lcom/github/mjdev/libaums/fs/FileSystemCreator;
    .end local v2    # "fs":Lcom/github/mjdev/libaums/fs/FileSystem;
    :cond_0
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/fs/FileSystemFactory$UnsupportedFileSystemException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
