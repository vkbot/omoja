.class Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;
.super Ljava/lang/Object;
.source "RollingFileManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RollingFileManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
        "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$1;

    .line 716
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;-><init>()V

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

    .line 716
    check-cast p2, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .locals 30
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;
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

    .line 726
    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 727
    .local v2, "size":J
    const/4 v0, 0x0

    .line 728
    .local v0, "file":Ljava/io/File;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    .line 729
    new-instance v4, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    .end local v0    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/FileUtils;->makeParentDirs(Ljava/io/File;)V

    .line 733
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 734
    .local v0, "created":Z
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$400()Lorg/apache/logging/log4j/Logger;

    move-result-object v9

    const-string v10, "New file \'{}\' created = {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v1, v11}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "created":Z
    nop

    .line 739
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v6

    :goto_1
    move-wide v2, v9

    goto :goto_2

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$500()Lorg/apache/logging/log4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    return-object v8

    .line 728
    .end local v4    # "file":Ljava/io/File;
    .local v0, "file":Ljava/io/File;
    :cond_2
    move-object v4, v0

    .line 743
    .end local v0    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :goto_2
    :try_start_1
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$700(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)I

    move-result v0

    goto :goto_3

    :cond_3
    sget v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    .line 744
    .local v0, "actualSize":I
    :goto_3
    new-array v9, v0, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    .line 745
    .local v28, "buffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    new-instance v9, Ljava/io/FileOutputStream;

    .line 746
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v11

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    goto :goto_5

    .line 745
    :cond_5
    :goto_4
    move-object v9, v8

    .line 746
    :goto_5
    move-object/from16 v29, v9

    .line 748
    .local v29, "os":Ljava/io/OutputStream;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v4}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$900(Ljava/io/File;)J

    move-result-wide v9

    move-wide/from16 v18, v9

    goto :goto_7

    :cond_7
    :goto_6
    move-wide/from16 v18, v6

    .line 749
    .local v18, "initialTime":J
    :goto_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v6, v9, v6

    if-nez v6, :cond_8

    const/4 v5, 0x1

    :cond_8
    move/from16 v27, v5

    .line 751
    .local v27, "writeHeader":Z
    new-instance v5, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1000(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v12

    .line 752
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v14

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Z

    move-result v15

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1100(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1200(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    move-result-object v21

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1300(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v22

    .line 753
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1400(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v23

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1500(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1600(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->access$1700(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;)Ljava/lang/String;

    move-result-object v26

    move-object v9, v5

    move-object/from16 v13, v29

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v28}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/ByteBuffer;)V

    .line 754
    .local v5, "rm":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    if-eqz v29, :cond_9

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isAttributeViewEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 755
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$1800(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Ljava/nio/file/Path;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 758
    :cond_9
    return-object v5

    .line 759
    .end local v0    # "actualSize":I
    .end local v5    # "rm":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .end local v18    # "initialTime":J
    .end local v27    # "writeHeader":Z
    .end local v28    # "buffer":Ljava/nio/ByteBuffer;
    .end local v29    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 760
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->access$1900()Lorg/apache/logging/log4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RollingFileManager ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    .end local v0    # "ex":Ljava/io/IOException;
    return-object v8
.end method
