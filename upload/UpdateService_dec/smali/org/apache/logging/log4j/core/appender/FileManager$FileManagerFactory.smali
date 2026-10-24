.class Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/FileManager;",
        "Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/FileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/FileManager$1;

    .line 422
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;-><init>()V

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

    .line 422
    check-cast p2, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FileManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/FileManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/FileManager;
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;
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

    .line 432
    move-object/from16 v15, p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 434
    .local v12, "file":Ljava/io/File;
    const/16 v16, 0x0

    :try_start_0
    invoke-static {v12}, Lorg/apache/logging/log4j/core/util/FileUtils;->makeParentDirs(Ljava/io/File;)V

    .line 435
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    move-object/from16 v20, v12

    goto/16 :goto_4

    .line 435
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v13, v0

    .line 436
    .local v13, "writeHeader":Z
    :try_start_2
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_2

    :try_start_3
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_2
    :try_start_4
    sget v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    .line 437
    .local v0, "actualSize":I
    :goto_2
    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 438
    .local v14, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, v16

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v2

    invoke-direct {v1, v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_3
    move-object/from16 v17, v1

    .line 439
    .local v17, "fos":Ljava/io/FileOutputStream;
    new-instance v18, Lorg/apache/logging/log4j/core/appender/FileManager;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v5

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$500(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v6

    .line 440
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Z

    move-result v7

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$700(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v9

    .line 441
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$900(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;->access$1000(Lorg/apache/logging/log4j/core/appender/FileManager$FactoryData;)Ljava/lang/String;

    move-result-object v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v1, v18

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    move-object/from16 v20, v12

    .end local v12    # "file":Ljava/io/File;
    .local v20, "file":Ljava/io/File;
    move-object/from16 v12, v19

    :try_start_5
    invoke-direct/range {v1 .. v14}, Lorg/apache/logging/log4j/core/appender/FileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/io/OutputStream;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/ByteBuffer;)V

    move-object/from16 v1, v18

    .line 442
    .local v1, "fm":Lorg/apache/logging/log4j/core/appender/FileManager;
    if-eqz v17, :cond_4

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/FileManager;->access$1100(Lorg/apache/logging/log4j/core/appender/FileManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 443
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/FileManager;->defineAttributeView(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 445
    :cond_4
    return-object v1

    .line 446
    .end local v0    # "actualSize":I
    .end local v1    # "fm":Lorg/apache/logging/log4j/core/appender/FileManager;
    .end local v13    # "writeHeader":Z
    .end local v14    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v20    # "file":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v20, v12

    .line 447
    .end local v12    # "file":Ljava/io/File;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v20    # "file":Ljava/io/File;
    :goto_4
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileManager ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    .end local v0    # "ex":Ljava/io/IOException;
    return-object v16
.end method
