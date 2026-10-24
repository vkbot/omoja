.class public Lcom/mega/update/sdk/utils/OtaUtil;
.super Ljava/lang/Object;
.source "OtaUtil.java"


# static fields
.field private static final HEX_DIGITS:[C

.field public static final TAG:Ljava/lang/String; = "OtaUtil"

.field private static getBooleanPropMethod:Ljava/lang/reflect/Method;

.field private static getIntMethod:Ljava/lang/reflect/Method;

.field private static getStringPropMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->HEX_DIGITS:[C

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getStringPropMethod:Ljava/lang/reflect/Method;

    .line 174
    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getBooleanPropMethod:Ljava/lang/reflect/Method;

    .line 175
    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getIntMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cpFileToOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "desFilePath"    # Ljava/lang/String;

    .line 64
    const-string v0, "OtaUtilclose error"

    const/4 v1, 0x0

    .line 65
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 66
    .local v2, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x400

    .line 67
    .local v3, "bufferSize":I
    const/4 v4, 0x0

    .line 69
    .local v4, "result":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 70
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 72
    new-array v5, v3, [B

    .line 75
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    if-lez v6, :cond_0

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :cond_0
    const/4 v4, 0x1

    .line 83
    .end local v5    # "buffer":[B
    .end local v7    # "len":I
    nop

    .line 84
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 85
    nop

    .line 86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :cond_1
    :goto_1
    goto :goto_2

    .line 87
    :catch_0
    move-exception v5

    .line 88
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 79
    :catch_1
    move-exception v5

    .line 80
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "OtaUtil:copy"

    const-string v7, "error occur while copy"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 84
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 85
    :cond_2
    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 91
    :goto_2
    return v4

    .line 83
    :goto_3
    if-eqz v1, :cond_3

    .line 84
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 87
    :catch_2
    move-exception v6

    goto :goto_5

    .line 85
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 88
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 89
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    nop

    .line 90
    :goto_7
    throw v5
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OtaUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 118
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mega/update/sdk/utils/OtaUtil;->delete(Ljava/lang/String;)Z

    .line 117
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    const/4 v1, 0x1

    .line 130
    .local v1, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 131
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mega/update/sdk/utils/OtaUtil;->delete(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v1, v6

    .line 130
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return v1

    .line 127
    .end local v1    # "result":Z
    :cond_2
    :goto_1
    return v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mega/update/sdk/utils/OtaUtil;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 97
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    .line 98
    .local v2, "b":B
    sget-object v3, Lcom/mega/update/sdk/utils/OtaUtil;->HEX_DIGITS:[C

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    sget-object v3, Lcom/mega/update/sdk/utils/OtaUtil;->HEX_DIGITS:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fileIsInOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "desFilePath"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getFileSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    const-string v2, "OtaUtil"

    const-string v3, "file is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v2, 0x0

    return-object v2

    .line 34
    :cond_0
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 36
    .local v2, "buffer":[B
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 37
    .local v3, "digest":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 38
    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    move v6, v4

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 39
    invoke-virtual {v3, v2, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 42
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/mega/update/sdk/utils/OtaUtil;->encode([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 43
    .end local v2    # "buffer":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    if-eqz v0, :cond_2

    .line 47
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 49
    :catch_1
    move-exception v3

    .line 50
    .local v3, "ee":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 51
    .end local v3    # "ee":Ljava/io/IOException;
    :cond_2
    :goto_1
    nop

    .line 52
    :goto_2
    const-string v3, ""

    return-object v3
.end method

.method public static getStringFromArrayList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 142
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 143
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getSystemPropBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 193
    :try_start_0
    sget-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getBooleanPropMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 194
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getBoolean"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 195
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getBooleanPropMethod:Ljava/lang/reflect/Method;

    .line 197
    :cond_0
    sget-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getBooleanPropMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reflect error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OtaUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return p1
.end method

.method public static getSystemPropInt(Ljava/lang/String;I)I
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 206
    :try_start_0
    sget-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getIntMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 207
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInt"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getIntMethod:Ljava/lang/reflect/Method;

    .line 209
    :cond_0
    sget-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getIntMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reflect error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OtaUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return p1
.end method

.method public static getSystemPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 179
    :try_start_0
    sget-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getStringPropMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 180
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "get"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 181
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getStringPropMethod:Ljava/lang/reflect/Method;

    .line 184
    :cond_0
    sget-object v0, Lcom/mega/update/sdk/utils/OtaUtil;->getStringPropMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reflect error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OtaUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object p1
.end method

.method public static transformVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mega/update/sdk/utils/OtaUtil;->transformVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transformVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    .line 149
    if-eqz p0, :cond_2

    .line 150
    const-string v0, "(\\d+).(\\d+).(\\d+).(\\d+)"

    .line 152
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 155
    .local v1, "r":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 156
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 157
    const-string v3, "%02d.%02d.%02d"

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez p1, :cond_1

    const-string v9, "persist.sys.otatest"

    invoke-static {v9, v5}, Lcom/mega/update/sdk/utils/OtaUtil;->getSystemPropBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    .line 162
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 161
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    :cond_1
    :goto_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 159
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    .line 158
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 166
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "r":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    return-object p0
.end method
