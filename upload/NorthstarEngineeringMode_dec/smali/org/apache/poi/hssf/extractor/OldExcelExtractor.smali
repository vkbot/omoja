.class public Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POITextExtractor;


# static fields
.field private static final FILE_PASS_RECORD_SID:I = 0x2f


# instance fields
.field private biffVersion:I

.field private fileType:I

.field private ris:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private toClose:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;
    :try_end_1
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez p0, :cond_0

    .line 6
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 7
    :cond_0
    throw p1

    :catch_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 10
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    .line 12
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 13
    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    .line 18
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    .line 15
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)Ljava/io/Closeable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "   OldExcelExtractor <filename>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;-><init>(Ljava/io/File;)V

    :try_start_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/poi/extractor/POITextExtractor;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Lorg/apache/poi/extractor/POITextExtractor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private open(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_2

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez p0, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 6
    :cond_1
    throw p1

    .line 7
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    :goto_1
    return-void
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    const-string v0, "Did not have an Excel 5/95 Book stream: "

    :try_start_0
    const-string v1, "Book"

    .line 10
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    .line 11
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "WORKBOOK"

    .line 14
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    .line 15
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v2, :cond_1

    .line 16
    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 17
    :goto_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 18
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private prepare()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x209

    if-eq v0, v1, :cond_2

    const/16 v1, 0x409

    if-eq v0, v1, :cond_1

    const/16 v1, 0x809

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File does not begin with a BOF, found sid of "

    invoke-static {v1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    :goto_0
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File contains no records!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBiffVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    return p0
.end method

.method public getDocument()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    return-object p0
.end method

.method public getFileType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return p0
.end method

.method public getFilesystem()Ljava/io/Closeable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor$1;-><init>(Lorg/apache/poi/hssf/extractor/OldExcelExtractor;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    const/4 v4, 0x4

    const/16 v5, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x42

    if-eq v3, v4, :cond_7

    const/16 v4, 0x85

    if-eq v3, v4, :cond_6

    const/16 v4, 0x27e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x406

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    const/16 v4, 0x203

    if-eq v3, v4, :cond_1

    const/16 v4, 0x204

    if-eq v3, v4, :cond_9

    const/16 v4, 0x206

    if-eq v3, v4, :cond_3

    const/16 v4, 0x207

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/record/NumberRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuilder;D)V

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/apache/poi/hssf/record/OldStringRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldStringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldStringRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    new-instance v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuilder;D)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getCachedResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuilder;D)V

    goto/16 :goto_0

    :cond_5
    new-instance v3, Lorg/apache/poi/hssf/record/RKRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuilder;D)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lorg/apache/poi/hssf/record/OldSheetRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldSheetRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    const-string v4, "Sheet: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    new-instance v2, Lorg/apache/poi/hssf/record/CodepageRecord;

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    :cond_8
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Encryption not supported for Old Excel files"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance v3, Lorg/apache/poi/hssf/record/OldLabelRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldLabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldLabelRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleNumericCell(Ljava/lang/StringBuilder;D)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    return-void
.end method
