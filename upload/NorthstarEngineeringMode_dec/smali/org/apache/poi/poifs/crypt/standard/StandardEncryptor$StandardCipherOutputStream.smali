.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardCipherOutputStream"
.end annotation


# instance fields
.field protected countBytes:J

.field protected final deleteFile:Z

.field protected final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field protected final fileOut:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    const-string v0, "encrypted_package"

    const-string v1, "crypt"

    .line 4
    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;Z)V
    .locals 4

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    .line 1
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v3, "PKCS5Padding"

    invoke-static {p1, v2, v3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 3
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-boolean p4, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->deleteFile:Z

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->writeToPOIFS()V

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->deleteFile:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeLong(J)V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->access$100()La5/d;

    move-result-object p1

    invoke-interface {p1}, La5/d;->h()La5/b;

    move-result-object p1

    const-string v1, "Can\'t delete temporary encryption file: {}"

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-interface {p1, p0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write(I)V
    .locals 4

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    return-void
.end method

.method public writeToPOIFS()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    invoke-virtual {v1, v2, v0, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
