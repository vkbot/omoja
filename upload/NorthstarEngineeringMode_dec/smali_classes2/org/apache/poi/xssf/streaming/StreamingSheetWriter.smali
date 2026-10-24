.class public Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;
.super Lorg/apache/poi/xssf/streaming/SheetDataWriter;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private closed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->closed:Z

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StreamingSheetWriter requires OutputStream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->createWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->closed:Z

    sget-object p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->LOG:La5/d;

    .line 4
    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string p1, "Preparing SXSSF sheet writer"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static createWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 3

    .line 2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->closed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method

.method public createTempFile()Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported with StreamingSheetWriter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createWriter(Ljava/io/File;)Ljava/io/Writer;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported with StreamingSheetWriter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;->closed:Z

    return v0
.end method

.method public getWorksheetXMLInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported with StreamingSheetWriter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
