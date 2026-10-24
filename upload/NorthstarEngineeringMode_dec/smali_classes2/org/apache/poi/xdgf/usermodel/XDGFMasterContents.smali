.class public Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
.super Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.source "SourceFile"


# instance fields
.field protected _master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public getMaster()Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, La3/c;->a:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/b;->b(Ljava/io/InputStream;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, La3/c;

    invoke-interface {v1}, La3/c;->b0()La3/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_3
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->onDocumentRead()V
    :try_end_3
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_6
    .catch Li5/z0; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    :try_start_7
    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public setMaster(Lorg/apache/poi/xdgf/usermodel/XDGFMaster;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-void
.end method
