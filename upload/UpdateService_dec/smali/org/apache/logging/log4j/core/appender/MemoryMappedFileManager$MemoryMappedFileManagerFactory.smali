.class Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;
.super Ljava/lang/Object;
.source "MemoryMappedFileManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryMappedFileManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;",
        "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$1;

    .line 329
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 329
    check-cast p2, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 342
    move-object/from16 v12, p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 343
    .local v13, "file":Ljava/io/File;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 347
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v11, v0

    .line 348
    .local v11, "writeHeader":Z
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NullOutputStream;->getInstance()Lorg/apache/logging/log4j/core/util/NullOutputStream;

    move-result-object v14

    .line 349
    .local v14, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 351
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v13}, Lorg/apache/logging/log4j/core/util/FileUtils;->makeParentDirs(Ljava/io/File;)V

    .line 352
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 353
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v15, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    move-wide/from16 v16, v0

    .line 354
    .local v16, "position":J
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)I

    move-result v0

    int-to-long v0, v0

    add-long v0, v16, v0

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 355
    new-instance v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Z

    move-result v5

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)I

    move-result v8

    .line 356
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;->access$500(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v10

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v11}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/io/OutputStream;ZJILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    return-object v0

    .line 357
    .end local v16    # "position":J
    :catch_0
    move-exception v0

    move-object v1, v15

    goto :goto_3

    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    sget-object v2, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryMappedFileManager ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 361
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
