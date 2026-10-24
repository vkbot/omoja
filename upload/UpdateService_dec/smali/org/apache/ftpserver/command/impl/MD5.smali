.class public Lorg/apache/ftpserver/command/impl/MD5;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "MD5.java"


# static fields
.field private static final DIGITS:[C


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ftpserver/command/impl/MD5;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 52
    const-class v0, Lorg/apache/ftpserver/command/impl/MD5;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/MD5;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static encodeHex([B)[C
    .locals 7
    .param p0, "data"    # [B

    .line 201
    array-length v0, p0

    .line 203
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 206
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 207
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Lorg/apache/ftpserver/command/impl/MD5;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    .line 208
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    return-object v1
.end method

.method private md5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 176
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 177
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 179
    .local v1, "dis":Ljava/security/DigestInputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 181
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    .line 182
    .local v3, "read":I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 183
    invoke-virtual {v1, v2}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 186
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ftpserver/command/impl/MD5;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 20
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "isMMD5":Z
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMD5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    .line 66
    :cond_0
    move v9, v0

    .line 71
    .end local v0    # "isMMD5":Z
    .local v9, "isMMD5":Z
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "argument":Ljava/lang/String;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 85
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "fileNames":[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_2

    .line 87
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    .line 89
    :cond_2
    new-array v2, v12, [Ljava/lang/String;

    aput-object v10, v2, v11

    move-object v0, v2

    move-object v13, v0

    .line 92
    .end local v0    # "fileNames":[Ljava/lang/String;
    .local v13, "fileNames":[Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v0

    .line 93
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_2
    array-length v0, v13

    if-ge v15, v0, :cond_9

    .line 94
    aget-object v0, v13, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 100
    .local v2, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 103
    move-object v6, v2

    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/MD5;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception getting the file object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v2

    .line 105
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v6, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_3
    if-nez v6, :cond_3

    .line 106
    const/16 v5, 0x1f8

    .line 108
    const-string v0, "MD5.invalid"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v11, v6

    .end local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v11, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    move-object v6, v0

    move-object v12, v7

    .end local v7    # "fileName":Ljava/lang/String;
    .local v12, "fileName":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 107
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 114
    return-void

    .line 118
    .end local v11    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v12    # "fileName":Ljava/lang/String;
    .restart local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v7    # "fileName":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    const/16 v5, 0x1f8

    .line 121
    const-string v0, "MD5.invalid"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v11, v6

    .end local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v11    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    move-object v6, v0

    move-object v12, v7

    .end local v7    # "fileName":Ljava/lang/String;
    .restart local v12    # "fileName":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 120
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 127
    return-void

    .line 130
    .end local v11    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v12    # "fileName":Ljava/lang/String;
    .restart local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v7    # "fileName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .line 132
    .local v2, "is":Ljava/io/InputStream;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-interface {v6, v3, v4}, Lorg/apache/ftpserver/ftplet/FtpFile;->createInputStream(J)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 133
    invoke-direct {v1, v2}, Lorg/apache/ftpserver/command/impl/MD5;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "md5Hash":Ljava/lang/String;
    if-lez v15, :cond_5

    .line 136
    const-string v3, ", "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_5
    const/16 v3, 0x20

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_6

    move v4, v12

    goto :goto_4

    :cond_6
    move v4, v11

    .line 139
    .local v4, "nameHasSpaces":Z
    :goto_4
    const/16 v5, 0x22

    if-eqz v4, :cond_7

    .line 140
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_7
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz v4, :cond_8

    .line 144
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_8
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    nop

    .end local v0    # "md5Hash":Ljava/lang/String;
    .end local v4    # "nameHasSpaces":Z
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 156
    goto :goto_5

    .line 155
    :catchall_0
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    goto :goto_6

    .line 149
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 150
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .local v16, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/MD5;->LOG:Lorg/slf4j/Logger;

    const-string v3, "MD5 algorithm not available"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    const/16 v5, 0x1f6

    const-string v17, "MD5.notimplemened"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v19, v6

    .end local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v19, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    move-object/from16 v6, v17

    move-object/from16 v17, v7

    .end local v7    # "fileName":Ljava/lang/String;
    .local v17, "fileName":Ljava/lang/String;
    move-object/from16 v7, v18

    :try_start_3
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    nop

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static/range {v16 .. v16}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 156
    nop

    .line 93
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "fileName":Ljava/lang/String;
    .end local v19    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 155
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v17    # "fileName":Ljava/lang/String;
    .restart local v19    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_6

    .end local v17    # "fileName":Ljava/lang/String;
    .end local v19    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v7    # "fileName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    move-object/from16 v2, v16

    .end local v6    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v17    # "fileName":Ljava/lang/String;
    .restart local v19    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_6
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 156
    throw v0

    .line 158
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v15    # "i":I
    .end local v17    # "fileName":Ljava/lang/String;
    .end local v19    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :cond_9
    if-eqz v9, :cond_a

    .line 159
    const/16 v5, 0xfc

    .line 160
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 159
    const-string v6, "MMD5"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_7

    .line 162
    :cond_a
    const/16 v5, 0xfb

    .line 163
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    const-string v6, "MD5"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 165
    :goto_7
    return-void

    .line 74
    .end local v13    # "fileNames":[Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    :goto_8
    const/16 v5, 0x1f8

    const/4 v7, 0x0

    .line 76
    const-string v6, "MD5.invalid"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 75
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 82
    return-void
.end method
