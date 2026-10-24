.class final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "codePathString"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "codePath":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .local v1, "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 59
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 61
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 63
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 65
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 67
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 69
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 71
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const-string v2, "Can\'t canonicalize code path "

    const-string v3, "PackageManager"

    if-eqz v1, :cond_8

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "fullPath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    .line 75
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .local v2, "codeRoot":Ljava/io/File;
    goto :goto_0

    .line 77
    .end local v2    # "codeRoot":Ljava/io/File;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 80
    .end local v4    # "parts":[Ljava/lang/String;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_0
    goto :goto_2

    .line 84
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 85
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 87
    .local v4, "parent":Ljava/io/File;
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v6, v5

    .local v6, "tmp":Ljava/io/File;
    if-eqz v5, :cond_9

    .line 88
    move-object v1, v4

    .line 89
    move-object v4, v6

    goto :goto_1

    .line 91
    :cond_9
    move-object v5, v1

    .line 92
    .local v5, "codeRoot":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized code path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    move-object v1, v5

    .line 100
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "codeRoot":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 94
    .end local v1    # "codeRoot":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "codePath"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 108
    return-object v0

    .line 110
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    return-object v2

    .line 114
    :cond_1
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t look like an APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v0

    .line 115
    :cond_3
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 116
    .local v0, "lastDot":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "apkRoot"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "codeFile":Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v1

    const-string/jumbo v2, "lib"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "lib64"

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 237
    .local v1, "has64BitLibs":Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "has32BitLibs":Z
    goto :goto_1

    .line 240
    .end local v1    # "has64BitLibs":Z
    .end local v2    # "has32BitLibs":Z
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v1, "rootDir":Ljava/io/File;
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 242
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "isa":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 245
    .local v2, "has64BitLibs":Z
    goto :goto_0

    .line 246
    .end local v2    # "has64BitLibs":Z
    :cond_1
    const/4 v2, 0x0

    .line 248
    .restart local v2    # "has64BitLibs":Z
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 249
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "isa":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 252
    .local v4, "has32BitLibs":Z
    move v1, v2

    move v2, v4

    goto :goto_1

    .line 253
    .end local v4    # "has32BitLibs":Z
    :cond_2
    const/4 v4, 0x0

    move v1, v2

    move v2, v4

    .line 257
    .local v1, "has64BitLibs":Z
    .local v2, "has32BitLibs":Z
    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 262
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 263
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 264
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 268
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 269
    .restart local v3    # "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 270
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 278
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v4

    if-nez v4, :cond_5

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_5
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 284
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 285
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .local v3, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 287
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_6
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 288
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .restart local v3    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 291
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    .line 292
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .line 294
    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 15
    .param p0, "abis"    # Lcom/android/server/pm/PackageAbiHelper$Abis;
    .param p1, "appLib32InstallDir"    # Ljava/io/File;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "sourceDir"    # Ljava/lang/String;
    .param p4, "isSystemApp"    # Z
    .param p5, "isUpdatedSystemApp"    # Z

    .line 146
    move-object v0, p0

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "codeFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 154
    .local v5, "bundledApp":Z
    :goto_0
    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v6

    const-string/jumbo v7, "lib"

    if-eqz v6, :cond_5

    .line 156
    if-eqz v5, :cond_4

    .line 159
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "apkRoot":Ljava/lang/String;
    nop

    .line 161
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-static {v8}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v8

    .line 166
    .local v8, "is64Bit":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "apkName":Ljava/lang/String;
    const-string/jumbo v10, "lib64"

    if-eqz v8, :cond_1

    move-object v11, v10

    goto :goto_1

    :cond_1
    move-object v11, v7

    .line 168
    .local v11, "libDir":Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    aput-object v11, v14, v4

    aput-object v9, v14, v3

    invoke-static {v12, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 169
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "nativeLibraryRootDir":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 172
    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v10

    .line 173
    .local v7, "secondaryLibDir":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v13, v13, [Ljava/lang/String;

    aput-object v7, v13, v4

    aput-object v9, v13, v3

    invoke-static {v10, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 175
    .end local v7    # "secondaryLibDir":Ljava/lang/String;
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_3

    .line 176
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 178
    .end local v6    # "apkRoot":Ljava/lang/String;
    .end local v8    # "is64Bit":Z
    .end local v9    # "apkName":Ljava/lang/String;
    .end local v11    # "libDir":Ljava/lang/String;
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_3
    move-object/from16 v6, p1

    goto :goto_4

    .line 179
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "apkName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 182
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v3, v4

    .line 185
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_4
    const/4 v4, 0x0

    .line 186
    .local v4, "nativeLibraryRootRequiresIsa":Z
    move-object v7, v12

    .local v7, "nativeLibraryDir":Ljava/lang/String;
    goto :goto_5

    .line 189
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v4    # "nativeLibraryRootRequiresIsa":Z
    .end local v7    # "nativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_5
    move-object/from16 v6, p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 190
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x1

    .line 192
    .restart local v4    # "nativeLibraryRootRequiresIsa":Z
    new-instance v3, Ljava/io/File;

    .line 193
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 195
    .restart local v7    # "nativeLibraryDir":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 196
    new-instance v3, Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 197
    invoke-static {v8}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_5

    .line 199
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 202
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_5
    new-instance v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {v8, v12, v4, v7, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "copyRet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 125
    if-gez p1, :cond_1

    .line 126
    const/16 v0, -0x72

    if-eq p1, v0, :cond_1

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Z)Landroid/util/Pair;
    .locals 18
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z
    .param p3, "cpuAbiOverride"    # Ljava/lang/String;
    .param p4, "extractLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sAppLib32InstallDir:Ljava/io/File;

    .line 307
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    .line 305
    move/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 312
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 313
    const/4 v0, 0x0

    move v10, v0

    .end local p4    # "extractLibs":Z
    .local v0, "extractLibs":Z
    goto :goto_0

    .line 316
    .end local v0    # "extractLibs":Z
    .restart local p4    # "extractLibs":Z
    :cond_0
    move/from16 v10, p4

    .end local p4    # "extractLibs":Z
    .local v10, "extractLibs":Z
    :goto_0
    iget-object v11, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 317
    .local v11, "nativeLibraryRootStr":Ljava/lang/String;
    iget-boolean v12, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 318
    .local v12, "useIsaSpecificSubdirs":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v13

    .line 320
    .local v13, "onIncremental":Z
    const/4 v4, 0x0

    .line 321
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    const/4 v5, 0x0

    .line 323
    .local v5, "secondaryCpuAbi":Ljava/lang/String;
    const/4 v6, 0x0

    .line 325
    .local v6, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    move-object v6, v0

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "nativeLibraryRoot":Ljava/io/File;
    const/4 v4, 0x0

    .line 336
    const/4 v5, 0x0

    .line 337
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v8, "copyNativeBinaries"

    const-string v9, "findSupportedAbi"

    if-eqz v7, :cond_d

    .line 338
    const/16 v7, -0x72

    .line 339
    .local v7, "abi32":I
    const/16 v16, -0x72

    .line 340
    .local v16, "abi64":I
    :try_start_1
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v14, :cond_2

    .line 341
    if-eqz v10, :cond_1

    .line 342
    const-wide/32 v14, 0x40000

    :try_start_2
    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 343
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v0, v14, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v14

    move v7, v14

    goto :goto_1

    .line 347
    :cond_1
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 348
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v14}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v14

    move v7, v14

    .line 351
    :goto_1
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    :cond_2
    const-string v14, "Shared library native lib extraction not supported"

    if-ltz v7, :cond_4

    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-nez v10, :cond_3

    goto :goto_2

    .line 356
    :cond_3
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/16 v9, -0x6e

    invoke-direct {v8, v9, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v7    # "abi32":I
    .end local v16    # "abi64":I
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_d

    .line 447
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_b

    .line 360
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v7    # "abi32":I
    .restart local v16    # "abi64":I
    :cond_4
    :goto_2
    :try_start_4
    const-string v15, "Error unpackaging 32 bit native libs for multiarch app."

    invoke-static {v15, v7}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 363
    sget-object v15, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v15, v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lez v15, :cond_6

    .line 364
    if-eqz v10, :cond_5

    .line 365
    move-object v15, v1

    move-object/from16 v17, v2

    const-wide/32 v1, 0x40000

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v15, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v17, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :try_start_5
    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 366
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v0, v1, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v1

    move/from16 v16, v1

    .end local v16    # "abi64":I
    .local v1, "abi64":I
    goto :goto_3

    .line 370
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v16    # "abi64":I
    :cond_5
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 371
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    .end local v16    # "abi64":I
    .local v1, "abi64":I
    move/from16 v16, v1

    .line 374
    .end local v1    # "abi64":I
    .restart local v16    # "abi64":I
    :goto_3
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v1, v16

    goto :goto_4

    .line 363
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_6
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    move/from16 v1, v16

    .line 377
    .end local v16    # "abi64":I
    .local v1, "abi64":I
    :goto_4
    const-string v2, "Error unpackaging 64 bit native libs for multiarch app."

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 380
    if-ltz v1, :cond_9

    .line 382
    if-eqz v10, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    .line 383
    :cond_7
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v8, -0x6e

    invoke-direct {v2, v8, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v2

    .line 386
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_8
    :goto_5
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    move-object v4, v2

    .line 389
    :cond_9
    if-ltz v7, :cond_c

    .line 390
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v7

    .line 391
    .local v2, "abi":Ljava/lang/String;
    if-ltz v1, :cond_b

    .line 392
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUse32BitAbi()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 393
    move-object v5, v4

    .line 394
    move-object v4, v2

    goto :goto_6

    .line 396
    :cond_a
    move-object v5, v2

    goto :goto_6

    .line 399
    :cond_b
    move-object v4, v2

    .line 402
    .end local v1    # "abi64":I
    .end local v2    # "abi":Ljava/lang/String;
    .end local v7    # "abi32":I
    :cond_c
    :goto_6
    move-object v1, v15

    goto/16 :goto_a

    .line 450
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_d

    .line 447
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_b

    .line 403
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_d
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p3, :cond_e

    .line 404
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    .line 450
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v1, v15

    goto/16 :goto_d

    .line 447
    :catch_2
    move-exception v0

    move-object v1, v15

    goto/16 :goto_b

    .line 404
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    :cond_e
    :try_start_6
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 410
    .local v2, "abiList":[Ljava/lang/String;
    :goto_7
    const/4 v7, 0x0

    .line 411
    .local v7, "needsRenderScriptOverride":Z
    sget-object v14, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-lez v14, :cond_f

    if-nez p3, :cond_f

    .line 412
    :try_start_7
    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 413
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v2, v14

    .line 414
    const/4 v7, 0x1

    .line 418
    :cond_f
    if-eqz v10, :cond_10

    .line 419
    move-object/from16 v16, v2

    const-wide/32 v1, 0x40000

    .end local v2    # "abiList":[Ljava/lang/String;
    .local v16, "abiList":[Ljava/lang/String;
    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 420
    move-object/from16 v2, v16

    .end local v16    # "abiList":[Ljava/lang/String;
    .restart local v2    # "abiList":[Ljava/lang/String;
    invoke-static {v6, v0, v2, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v9, v1

    move-object v1, v15

    .local v1, "copyRet":I
    goto :goto_8

    .line 423
    .end local v1    # "copyRet":I
    :cond_10
    move-object v1, v15

    const-wide/32 v14, 0x40000

    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :try_start_8
    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 424
    invoke-static {v6, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v9

    .line 426
    .local v9, "copyRet":I
    :goto_8
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    const/16 v14, -0x72

    if-gez v9, :cond_12

    if-ne v9, v14, :cond_11

    goto :goto_9

    .line 429
    :cond_11
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, -0x6e

    invoke-direct {v8, v15, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v8

    .line 433
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_12
    :goto_9
    if-ltz v9, :cond_14

    .line 435
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 439
    aget-object v8, v2, v9

    move-object v4, v8

    goto :goto_a

    .line 436
    :cond_13
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const-string v14, "Shared library with native libs must be multiarch"

    const/16 v15, -0x6e

    invoke-direct {v8, v15, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    throw v8

    .line 440
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    :cond_14
    if-ne v9, v14, :cond_15

    if-eqz p3, :cond_15

    .line 442
    move-object/from16 v4, p3

    goto :goto_a

    .line 443
    :cond_15
    if-eqz v7, :cond_16

    .line 444
    const/4 v8, 0x0

    aget-object v8, v2, v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v4, v8

    .line 450
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v2    # "abiList":[Ljava/lang/String;
    .end local v7    # "needsRenderScriptOverride":Z
    .end local v9    # "copyRet":I
    :cond_16
    :goto_a
    goto :goto_c

    .line 447
    :catch_3
    move-exception v0

    goto :goto_b

    .line 450
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v1, v15

    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    goto :goto_d

    .line 447
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v1, v15

    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    goto :goto_b

    .line 450
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto :goto_d

    .line 447
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v17, v2

    .line 448
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :goto_b
    :try_start_9
    const-string v2, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get canonical file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 450
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_c
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    move-object v0, v4

    move-object v2, v5

    move-object v14, v6

    .line 456
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .local v0, "primaryCpuAbi":Ljava/lang/String;
    .local v2, "secondaryCpuAbi":Ljava/lang/String;
    .local v14, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    new-instance v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v4, v0, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v4

    .line 457
    .local v15, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    new-instance v9, Landroid/util/Pair;

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sAppLib32InstallDir:Ljava/io/File;

    .line 459
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v8

    .line 458
    move-object/from16 v16, v0

    move-object v0, v9

    .end local v0    # "primaryCpuAbi":Ljava/lang/String;
    .local v16, "primaryCpuAbi":Ljava/lang/String;
    move/from16 v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v4

    invoke-direct {v0, v15, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    return-object v0

    .line 450
    .end local v2    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v15    # "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v16    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catchall_5
    move-exception v0

    :goto_d
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 8
    .param p2, "scannedPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 480
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .line 481
    .local v0, "requiredInstructionSet":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 482
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 484
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 489
    .local v1, "requirer":Lcom/android/server/pm/PackageSetting;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 494
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 495
    goto :goto_0

    .line 497
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 498
    goto :goto_0

    .line 501
    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 502
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "instructionSet":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instruction set mismatch, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    if-nez v1, :cond_3

    const-string v6, "[caller]"

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " whereas "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "errorMessage":Ljava/lang/String;
    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 514
    move-object v0, v4

    .line 515
    move-object v1, v3

    .line 517
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 519
    :cond_6
    if-nez v0, :cond_7

    .line 520
    const/4 v2, 0x0

    return-object v2

    .line 523
    :cond_7
    if-eqz v1, :cond_8

    .line 528
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .local v2, "adjustedAbi":Ljava/lang/String;
    goto :goto_2

    .line 532
    .end local v2    # "adjustedAbi":Ljava/lang/String;
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 534
    .restart local v2    # "adjustedAbi":Ljava/lang/String;
    :goto_2
    return-object v2
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 208
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "apkName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "apkRoot":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v2

    .line 214
    .local v2, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    return-object v2
.end method

.method public getNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "appLib32InstallDir"    # Ljava/io/File;

    .line 138
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    .line 140
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v5

    .line 138
    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    return-object v0
.end method
