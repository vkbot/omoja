.class public final Lcom/github/mjdev/libaums/partition/PartitionTableFactory;
.super Ljava/lang/Object;
.source "PartitionTableFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/partition/PartitionTableFactory$UnsupportedPartitionTableException;,
        Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\r\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/PartitionTableFactory;",
        "",
        "()V",
        "partitionTables",
        "Ljava/util/ArrayList;",
        "Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;",
        "createPartitionTable",
        "Lcom/github/mjdev/libaums/partition/PartitionTable;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "registerPartitionTable",
        "",
        "creator",
        "PartitionTableCreator",
        "UnsupportedPartitionTableException",
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
.field public static final INSTANCE:Lcom/github/mjdev/libaums/partition/PartitionTableFactory;

.field private static final partitionTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->INSTANCE:Lcom/github/mjdev/libaums/partition/PartitionTableFactory;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->partitionTables:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Lcom/github/mjdev/libaums/partition/fs/FileSystemPartitionTableCreator;

    invoke-direct {v1}, Lcom/github/mjdev/libaums/partition/fs/FileSystemPartitionTableCreator;-><init>()V

    check-cast v1, Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;

    invoke-virtual {v0, v1}, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->registerPartitionTable(Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;)V

    .line 44
    new-instance v1, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecordCreator;

    invoke-direct {v1}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecordCreator;-><init>()V

    check-cast v1, Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;

    invoke-virtual {v0, v1}, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->registerPartitionTable(Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;)V

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPartitionTable(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/PartitionTable;
    .locals 3
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->partitionTables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;

    .line 61
    .local v1, "creator":Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;
    invoke-interface {v1, p1}, Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;->read(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/PartitionTable;

    move-result-object v2

    .line 62
    .local v2, "table":Lcom/github/mjdev/libaums/partition/PartitionTable;
    if-eqz v2, :cond_0

    .line 63
    return-object v2

    .line 60
    .end local v1    # "creator":Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;
    .end local v2    # "table":Lcom/github/mjdev/libaums/partition/PartitionTable;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/github/mjdev/libaums/partition/PartitionTableFactory$UnsupportedPartitionTableException;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/partition/PartitionTableFactory$UnsupportedPartitionTableException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final declared-synchronized registerPartitionTable(Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;)V
    .locals 1
    .param p1, "creator"    # Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;

    monitor-enter p0

    :try_start_0
    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->partitionTables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Lcom/github/mjdev/libaums/partition/PartitionTableFactory;
    .end local p1    # "creator":Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
