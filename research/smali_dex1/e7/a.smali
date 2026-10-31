.class public abstract Le7/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;)Z
    .registers 14

    .line 1
    const-string v0, "wg-go"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_18

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_2d

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {v1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :cond_2d
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 47
    .line 48
    array-length v2, p0

    .line 49
    const/4 v3, 0x0

    .line 50
    move v4, v3

    .line 51
    :goto_32
    if-ge v4, v2, :cond_ee

    .line 52
    .line 53
    aget-object v5, p0, v4

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_ea

    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Ljava/lang/String;

    .line 70
    .line 71
    new-instance v8, Ljava/util/zip/ZipFile;

    .line 72
    .line 73
    new-instance v9, Ljava/io/File;

    .line 74
    .line 75
    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    invoke-direct {v8, v9, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 80
    .line 81
    .line 82
    :try_start_51
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v11, "lib"

    .line 92
    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    sget-char v11, Ljava/io/File;->separatorChar:C

    .line 97
    .line 98
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 115
    .line 116
    .line 117
    move-result-object v10
    :try_end_75
    .catchall {:try_start_51 .. :try_end_75} :catchall_c9

    .line 118
    if-nez v10, :cond_7b

    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 121
    .line 122
    .line 123
    goto :goto_3a

    .line 124
    :cond_7b
    :try_start_7b
    const-string p0, "WireGuard/SharedLibraryLoader"

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v1, "Extracting apk:/"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, " to "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    new-instance p0, Ljava/io/FileOutputStream;

    .line 159
    .line 160
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a2
    .catchall {:try_start_7b .. :try_end_a2} :catchall_c9

    .line 161
    .line 162
    .line 163
    :try_start_a2
    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 164
    .line 165
    .line 166
    move-result-object p1
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_cb

    .line 167
    const v0, 0x8000

    .line 168
    .line 169
    .line 170
    :try_start_a9
    new-array v0, v0, [B

    .line 171
    .line 172
    :goto_ab
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    const/4 v2, -0x1

    .line 177
    if-eq v1, v2, :cond_b8

    .line 178
    .line 179
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 180
    .line 181
    .line 182
    goto :goto_ab

    .line 183
    :catchall_b6
    move-exception v0

    .line 184
    goto :goto_cd

    .line 185
    :cond_b8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_bf
    .catchall {:try_start_a9 .. :try_end_bf} :catchall_b6

    .line 190
    .line 191
    .line 192
    :try_start_bf
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_cb

    .line 193
    .line 194
    .line 195
    :try_start_c2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c9

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 199
    .line 200
    .line 201
    return v7

    .line 202
    :catchall_c9
    move-exception p0

    .line 203
    goto :goto_e1

    .line 204
    :catchall_cb
    move-exception p1

    .line 205
    goto :goto_d8

    .line 206
    :goto_cd
    if-eqz p1, :cond_d7

    .line 207
    .line 208
    :try_start_cf
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    .line 209
    .line 210
    .line 211
    goto :goto_d7

    .line 212
    :catchall_d3
    move-exception p1

    .line 213
    :try_start_d4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :cond_d7
    :goto_d7
    throw v0
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_cb

    .line 217
    :goto_d8
    :try_start_d8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    .line 218
    .line 219
    .line 220
    goto :goto_e0

    .line 221
    :catchall_dc
    move-exception p0

    .line 222
    :try_start_dd
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :goto_e0
    throw p1
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_c9

    .line 226
    :goto_e1
    :try_start_e1
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    .line 227
    .line 228
    .line 229
    goto :goto_e9

    .line 230
    :catchall_e5
    move-exception p1

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    :goto_e9
    throw p0

    .line 235
    :cond_ea
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    goto/16 :goto_32

    .line 238
    .line 239
    :cond_ee
    return v3
.end method
