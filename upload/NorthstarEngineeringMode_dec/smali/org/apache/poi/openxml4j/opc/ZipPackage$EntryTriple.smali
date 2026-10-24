.class Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/openxml4j/opc/ZipPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryTriple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;",
        ">;"
    }
.end annotation


# instance fields
.field final contentType:Ljava/lang/String;

.field final partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field final synthetic this$0:Lorg/apache/poi/openxml4j/opc/ZipPackage;

.field final zipArchiveEntry:Lorg/apache/commons/compress/archivers/zip/o0;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/ZipPackage;Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->this$0:Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->zipArchiveEntry:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->access$000(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :try_start_0
    const-string p2, "[Content_Types].xml"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getOPCNameFromZipItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->access$100()La5/d;

    move-result-object v1

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-interface {v1, p2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p2

    const-string v1, "Entry {} is not valid, so this part won\'t be added to the package."

    invoke-interface {p2, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->compareTo(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->contentType:Ljava/lang/String;

    const-string v1, "application/vnd.openxmlformats-package.relationships+xml"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v4, p1, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    .line 4
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 5
    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public register(Lorg/apache/poi/openxml4j/opc/PackagePartCollection;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    new-instance v7, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->this$0:Lorg/apache/poi/openxml4j/opc/ZipPackage;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->zipArchiveEntry:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-object v5, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->contentType:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0, v7}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A part with the name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' already exists : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The part "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
