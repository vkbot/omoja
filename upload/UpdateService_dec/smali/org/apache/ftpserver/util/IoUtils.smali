.class public Lorg/apache/ftpserver/util/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field private static final RANDOM_GEN:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Ljava/util/Random;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/apache/ftpserver/util/IoUtils;->RANDOM_GEN:Ljava/util/Random;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 130
    if-eqz p0, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 136
    :cond_0
    :goto_0
    return-void
.end method

.method public static final close(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;

    .line 142
    if-eqz p0, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 148
    :cond_0
    :goto_0
    return-void
.end method

.method public static final close(Ljava/io/Reader;)V
    .locals 1
    .param p0, "rd"    # Ljava/io/Reader;

    .line 154
    if-eqz p0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 160
    :cond_0
    :goto_0
    return-void
.end method

.method public static final close(Ljava/io/Writer;)V
    .locals 1
    .param p0, "wr"    # Ljava/io/Writer;

    .line 166
    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 172
    :cond_0
    :goto_0
    return-void
.end method

.method public static final copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-array v0, p2, [B

    .line 219
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 220
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 221
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public static final copy(Ljava/io/Reader;Ljava/io/Writer;I)V
    .locals 4
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-array v0, p2, [C

    .line 203
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 204
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public static final delete(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lorg/apache/ftpserver/util/IoUtils;->deleteDir(Ljava/io/File;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {p0}, Lorg/apache/ftpserver/util/IoUtils;->deleteFile(Ljava/io/File;)V

    .line 250
    :goto_0
    return-void
.end method

.method private static final deleteDir(Ljava/io/File;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "children":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 260
    aget-object v2, v0, v1

    .line 261
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->delete(Ljava/io/File;)V

    .line 259
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    return-void

    .line 265
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    invoke-static {}, Lorg/apache/ftpserver/util/OS;->isFamilyWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 278
    :cond_0
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    :goto_1
    return-void
.end method

.method public static final getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "bin":Ljava/io/BufferedInputStream;
    instance-of v1, p0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 68
    :goto_0
    return-object v0
.end method

.method public static final getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    instance-of v1, p0, Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 78
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedOutputStream;

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 82
    :goto_0
    return-object v0
.end method

.method public static final getBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "buffered":Ljava/io/BufferedReader;
    instance-of v1, p0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 95
    :goto_0
    return-object v0
.end method

.method public static final getBufferedWriter(Ljava/io/Writer;)Ljava/io/BufferedWriter;
    .locals 2
    .param p0, "wr"    # Ljava/io/Writer;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "bw":Ljava/io/BufferedWriter;
    instance-of v1, p0, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    .line 104
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedWriter;

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 108
    :goto_0
    return-object v0
.end method

.method public static final getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 178
    const-string v0, ""

    .line 179
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 181
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 182
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 183
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 184
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 185
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 186
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 189
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static final getUniqueFile(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "oldFile"    # Ljava/io/File;

    .line 115
    move-object v0, p0

    .line 117
    .local v0, "newFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    nop

    .line 123
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/apache/ftpserver/util/IoUtils;->RANDOM_GEN:Ljava/util/Random;

    .line 121
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 239
    .local v0, "writer":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v1, "reader":Ljava/io/InputStreamReader;
    const/16 v2, 0x400

    invoke-static {v1, v0, v2}, Lorg/apache/ftpserver/util/IoUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    .line 241
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 230
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    invoke-static {p0, v0, v1}, Lorg/apache/ftpserver/util/IoUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    .line 231
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
