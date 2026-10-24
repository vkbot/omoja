.class public final Lorg/apache/ftpserver/util/OS;
.super Ljava/lang/Object;
.source "OS.java"


# static fields
.field private static final FAMILY_DOS:Ljava/lang/String; = "dos"

.field private static final FAMILY_MAC:Ljava/lang/String; = "mac"

.field private static final FAMILY_NETWARE:Ljava/lang/String; = "netware"

.field private static final FAMILY_OPENVMS:Ljava/lang/String; = "openvms"

.field private static final FAMILY_OS_2:Ljava/lang/String; = "os/2"

.field private static final FAMILY_OS_400:Ljava/lang/String; = "os/400"

.field private static final FAMILY_TANDEM:Ljava/lang/String; = "tandem"

.field private static final FAMILY_UNIX:Ljava/lang/String; = "unix"

.field private static final FAMILY_WIN9X:Ljava/lang/String; = "win9x"

.field private static final FAMILY_WINDOWS:Ljava/lang/String; = "windows"

.field private static final FAMILY_Z_OS:Ljava/lang/String; = "z/os"

.field private static final OS_ARCH:Ljava/lang/String;

.field private static final OS_NAME:Ljava/lang/String;

.field private static final OS_VERSION:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 57
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->OS_ARCH:Ljava/lang/String;

    .line 60
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->OS_VERSION:Ljava/lang/String;

    .line 63
    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->PATH_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static isArch(Ljava/lang/String;)Z
    .locals 1
    .param p0, "arch"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    invoke-static {v0, v0, p0, v0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isFamily(Ljava/lang/String;)Z
    .locals 1
    .param p0, "family"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyDOS()Z
    .locals 1

    .line 96
    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyMac()Z
    .locals 1

    .line 100
    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyNetware()Z
    .locals 1

    .line 104
    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOS2()Z
    .locals 1

    .line 108
    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOS400()Z
    .locals 1

    .line 132
    const-string v0, "os/400"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOpenVms()Z
    .locals 1

    .line 136
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyTandem()Z
    .locals 1

    .line 112
    const-string v0, "tandem"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyUnix()Z
    .locals 1

    .line 116
    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyWin9x()Z
    .locals 1

    .line 124
    const-string v0, "win9x"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyWindows()Z
    .locals 1

    .line 120
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyZOS()Z
    .locals 1

    .line 128
    const-string v0, "z/os"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    invoke-static {v0, p0, v0, v0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "family"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arch"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "retValue":Z
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1f

    .line 194
    :cond_0
    const/4 v1, 0x1

    .line 195
    .local v1, "isFamily":Z
    const/4 v2, 0x1

    .line 196
    .local v2, "isName":Z
    const/4 v3, 0x1

    .line 197
    .local v3, "isArch":Z
    const/4 v4, 0x1

    .line 199
    .local v4, "isVersion":Z
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_1a

    .line 200
    const-string v7, "windows"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_2

    .line 201
    sget-object v8, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    move v1, v7

    goto/16 :goto_c

    .line 202
    :cond_2
    const-string v8, "os/2"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 203
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    move v1, v7

    goto/16 :goto_c

    .line 204
    :cond_4
    const-string v8, "netware"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 205
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_5

    move v7, v5

    goto :goto_2

    :cond_5
    move v7, v6

    :goto_2
    move v1, v7

    goto/16 :goto_c

    .line 206
    :cond_6
    const-string v10, "dos"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 207
    sget-object v7, Lorg/apache/ftpserver/util/OS;->PATH_SEP:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 208
    invoke-static {v8}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    move v7, v6

    :goto_3
    move v1, v7

    goto/16 :goto_c

    .line 209
    :cond_8
    const-string v8, "mac"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 210
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_9

    move v7, v5

    goto :goto_4

    :cond_9
    move v7, v6

    :goto_4
    move v1, v7

    goto/16 :goto_c

    .line 211
    :cond_a
    const-string v10, "tandem"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 212
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    const-string v8, "nonstop_kernel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_b

    move v7, v5

    goto :goto_5

    :cond_b
    move v7, v6

    :goto_5
    move v1, v7

    goto/16 :goto_c

    .line 213
    :cond_c
    const-string v10, "unix"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "openvms"

    if-eqz v10, :cond_f

    .line 214
    sget-object v7, Lorg/apache/ftpserver/util/OS;->PATH_SEP:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 215
    invoke-static {v11}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 216
    invoke-static {v8}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    move v7, v5

    goto :goto_6

    :cond_e
    move v7, v6

    :goto_6
    move v1, v7

    goto/16 :goto_c

    .line 217
    :cond_f
    const-string v8, "win9x"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 218
    invoke-static {v7}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 219
    const-string v8, "95"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_10

    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 220
    const-string v8, "98"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_10

    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 221
    const-string v8, "me"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_10

    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 222
    const-string v8, "ce"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_11

    :cond_10
    move v7, v5

    goto :goto_7

    :cond_11
    move v7, v6

    :goto_7
    move v1, v7

    goto/16 :goto_c

    .line 223
    :cond_12
    const-string v7, "z/os"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 224
    sget-object v8, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v9, :cond_14

    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 225
    const-string v8, "os/390"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_13

    goto :goto_8

    :cond_13
    move v7, v6

    goto :goto_9

    :cond_14
    :goto_8
    move v7, v5

    :goto_9
    move v1, v7

    goto :goto_c

    .line 226
    :cond_15
    const-string v7, "os/400"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 227
    sget-object v8, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_16

    move v7, v5

    goto :goto_a

    :cond_16
    move v7, v6

    :goto_a
    move v1, v7

    goto :goto_c

    .line 228
    :cond_17
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 229
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v9, :cond_18

    move v7, v5

    goto :goto_b

    :cond_18
    move v7, v6

    :goto_b
    move v1, v7

    goto :goto_c

    .line 231
    :cond_19
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t know how to detect os family \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_1a
    :goto_c
    if-eqz p1, :cond_1b

    .line 237
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 239
    :cond_1b
    if-eqz p2, :cond_1c

    .line 240
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_ARCH:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 242
    :cond_1c
    if-eqz p3, :cond_1d

    .line 243
    sget-object v7, Lorg/apache/ftpserver/util/OS;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 245
    :cond_1d
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    if-eqz v3, :cond_1e

    if-eqz v4, :cond_1e

    goto :goto_d

    :cond_1e
    move v5, v6

    :goto_d
    move v0, v5

    .line 247
    .end local v1    # "isFamily":Z
    .end local v2    # "isName":Z
    .end local v3    # "isArch":Z
    .end local v4    # "isVersion":Z
    :cond_1f
    return v0
.end method

.method public static isVersion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
