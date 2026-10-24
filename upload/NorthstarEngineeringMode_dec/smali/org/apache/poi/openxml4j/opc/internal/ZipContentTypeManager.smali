.class public Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;
.super Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method


# virtual methods
.method public saveImpl(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
    .locals 1

    instance-of p0, p2, Lorg/apache/commons/compress/archivers/zip/r0;

    if-eqz p0, :cond_0

    check-cast p2, Lorg/apache/commons/compress/archivers/zip/r0;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/r0;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/r0;-><init>(Ljava/io/OutputStream;)V

    move-object p2, p0

    :goto_0
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/o0;

    const-string v0, "[Content_Types].xml"

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p0}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, p2}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    sget-object p1, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->h()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "Cannot write: [Content_Types].xml in Zip !"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
