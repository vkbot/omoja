.class public Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;
.super Ljava/lang/Object;
.source "AndroidUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/AndroidUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdaterConfig"
.end annotation


# static fields
.field public static final PAYLOAD_BINARY_FILE_NAME:Ljava/lang/String; = "payload.bin"

.field public static final PAYLOAD_PROPERTIES_FILE_NAME:Ljava/lang/String; = "payload_properties.txt"


# instance fields
.field private offset:J

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "switchOnBoot"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->properties:Ljava/util/List;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v1, "SWITCH_SLOT_ON_REBOOT=1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    const-string v1, "SWITCH_SLOT_ON_REBOOT=0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;

    .line 59
    iget-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)J
    .locals 2
    .param p0, "x0"    # Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;

    .line 59
    iget-wide v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->offset:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)J
    .locals 2
    .param p0, "x0"    # Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;

    .line 59
    iget-wide v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->size:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;

    .line 59
    iget-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->properties:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;J)Z
    .locals 26
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "packageOffset"    # J

    .line 77
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->url:Ljava/lang/String;

    .line 78
    const/4 v5, 0x0

    .line 79
    .local v5, "payloadFound":Z
    const-wide/16 v6, 0x0

    .line 80
    .local v6, "payloadOffset":J
    const-wide/16 v8, 0x0

    .line 82
    .local v8, "payloadSize":J
    const/4 v10, 0x0

    .line 83
    .local v10, "zipInputStream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 86
    .local v11, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 87
    invoke-virtual {v10, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 88
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 89
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 90
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    const-wide/16 v12, 0x0

    .line 91
    .local v12, "offset":J
    const/4 v14, 0x0

    .line 92
    .local v14, "i":I
    :goto_0
    if-eqz v0, :cond_6

    .line 93
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 96
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v16

    if-nez v16, :cond_0

    const-wide/16 v16, 0x0

    move-wide/from16 v24, v16

    move/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v5, v24

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v16, v5

    move-wide/from16 v17, v6

    .end local v5    # "payloadFound":Z
    .end local v6    # "payloadOffset":J
    .local v16, "payloadFound":Z
    .local v17, "payloadOffset":J
    int-to-long v5, v2

    .line 97
    .local v5, "extraSize":J
    :goto_1
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1e

    move-wide/from16 v19, v8

    .end local v8    # "payloadSize":J
    .local v19, "payloadSize":J
    int-to-long v7, v2

    add-long/2addr v7, v5

    add-long/2addr v12, v7

    .line 99
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    move-object/from16 v2, p1

    move/from16 v5, v16

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v7

    .line 105
    .local v7, "length":J
    const-string v2, "payload.bin"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_2

    .line 109
    const/4 v2, 0x1

    .line 110
    .end local v16    # "payloadFound":Z
    .local v2, "payloadFound":Z
    move-wide/from16 v16, v12

    .line 111
    .end local v17    # "payloadOffset":J
    .local v16, "payloadOffset":J
    move-wide/from16 v18, v7

    move-object/from16 v21, v0

    move-wide/from16 v19, v18

    move-wide/from16 v17, v16

    move/from16 v16, v2

    .end local v19    # "payloadSize":J
    .local v18, "payloadSize":J
    goto :goto_3

    .line 107
    .end local v2    # "payloadFound":Z
    .end local v18    # "payloadSize":J
    .local v16, "payloadFound":Z
    .restart local v17    # "payloadOffset":J
    .restart local v19    # "payloadSize":J
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v9, "Invalid compression method."

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v10    # "zipInputStream":Ljava/io/FileInputStream;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v16    # "payloadFound":Z
    .end local v17    # "payloadOffset":J
    .end local v19    # "payloadSize":J
    .end local p0    # "this":Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "packageOffset":J
    throw v2

    .line 112
    .restart local v10    # "zipInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v16    # "payloadFound":Z
    .restart local v17    # "payloadOffset":J
    .restart local v19    # "payloadSize":J
    .restart local p0    # "this":Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "packageOffset":J
    :cond_3
    const-string v2, "payload_properties.txt"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    move-object v2, v11

    .line 114
    .local v2, "inputStream":Ljava/io/InputStream;
    nop

    .line 115
    new-instance v9, Ljava/io/BufferedReader;

    move-object/from16 v21, v0

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .local v21, "entry":Ljava/util/zip/ZipEntry;
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v9

    .line 117
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v9

    .local v22, "line":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 118
    iget-object v9, v1, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->properties:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    .end local v22    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .local v23, "br":Ljava/io/BufferedReader;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    goto :goto_2

    .line 117
    .end local v23    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v22    # "line":Ljava/lang/String;
    :cond_4
    move-object/from16 v23, v0

    move-object/from16 v0, v22

    .end local v22    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .restart local v23    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 112
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "entry":Ljava/util/zip/ZipEntry;
    .end local v23    # "br":Ljava/io/BufferedReader;
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :cond_5
    move-object/from16 v21, v0

    .line 122
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v21    # "entry":Ljava/util/zip/ZipEntry;
    :goto_3
    add-long/2addr v12, v7

    .line 123
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 124
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 125
    .end local v5    # "extraSize":J
    .end local v7    # "length":J
    .end local v15    # "name":Ljava/lang/String;
    .end local v21    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v2, p1

    move/from16 v5, v16

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    goto/16 :goto_0

    .line 129
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "offset":J
    .end local v14    # "i":I
    .end local v19    # "payloadSize":J
    .restart local v8    # "payloadSize":J
    :catch_0
    move-exception v0

    move-wide/from16 v19, v8

    move/from16 v5, v16

    move-wide/from16 v6, v17

    .end local v8    # "payloadSize":J
    .restart local v19    # "payloadSize":J
    goto :goto_4

    .end local v16    # "payloadFound":Z
    .end local v17    # "payloadOffset":J
    .end local v19    # "payloadSize":J
    .local v5, "payloadFound":Z
    .restart local v6    # "payloadOffset":J
    .restart local v8    # "payloadSize":J
    :catch_1
    move-exception v0

    move/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    .end local v5    # "payloadFound":Z
    .end local v6    # "payloadOffset":J
    .end local v8    # "payloadSize":J
    .restart local v16    # "payloadFound":Z
    .restart local v17    # "payloadOffset":J
    .restart local v19    # "payloadSize":J
    goto :goto_4

    .line 126
    .end local v16    # "payloadFound":Z
    .end local v17    # "payloadOffset":J
    .end local v19    # "payloadSize":J
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "payloadFound":Z
    .restart local v6    # "payloadOffset":J
    .restart local v8    # "payloadSize":J
    .restart local v12    # "offset":J
    .restart local v14    # "i":I
    :cond_6
    move-object/from16 v21, v0

    move/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "payloadFound":Z
    .end local v6    # "payloadOffset":J
    .end local v8    # "payloadSize":J
    .restart local v16    # "payloadFound":Z
    .restart local v17    # "payloadOffset":J
    .restart local v19    # "payloadSize":J
    .restart local v21    # "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 127
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V

    .line 128
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    .end local v12    # "offset":J
    .end local v14    # "i":I
    .end local v21    # "entry":Ljava/util/zip/ZipEntry;
    move/from16 v5, v16

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    goto :goto_8

    .line 129
    :catch_2
    move-exception v0

    move/from16 v5, v16

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    goto :goto_4

    .end local v16    # "payloadFound":Z
    .end local v17    # "payloadOffset":J
    .end local v19    # "payloadSize":J
    .restart local v5    # "payloadFound":Z
    .restart local v6    # "payloadOffset":J
    .restart local v8    # "payloadSize":J
    :catch_3
    move-exception v0

    :goto_4
    move-object v2, v0

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    if-eqz v11, :cond_7

    .line 133
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 134
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_5

    .line 139
    :catch_4
    move-exception v0

    goto :goto_6

    .line 136
    :cond_7
    :goto_5
    if-eqz v10, :cond_8

    .line 137
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 140
    .local v0, "ee":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 141
    .end local v0    # "ee":Ljava/io/IOException;
    :cond_8
    :goto_7
    nop

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8
    if-nez v5, :cond_9

    .line 145
    invoke-static {}, Lcom/mega/update/protocol/AndroidUpdateProtocol;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to find payload entry in the given package."

    invoke-static {v0, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_9
    add-long v12, v6, v3

    iput-wide v12, v1, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->offset:J

    .line 149
    iput-wide v8, v1, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->size:J

    .line 150
    const/4 v0, 0x1

    return v0
.end method
