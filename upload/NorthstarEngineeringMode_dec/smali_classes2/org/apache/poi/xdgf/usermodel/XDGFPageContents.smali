.class public Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
.super Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.source "SourceFile"


# instance fields
.field protected _masters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFMaster;",
            ">;"
        }
    .end annotation
.end field

.field protected _page:Lorg/apache/poi/xdgf/usermodel/XDGFPage;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_masters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMasterById(J)Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_masters:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-object p0
.end method

.method public getPage()Lorg/apache/poi/xdgf/usermodel/XDGFPage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_page:Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 5

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
    sget-object v1, La3/g;->f:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/b;->b(Ljava/io/InputStream;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, La3/g;

    invoke-interface {v1}, La3/g;->t()La3/h;
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

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->getMaster()Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_masters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v1, "Master entry is missing in XDGFPageContents"

    invoke-direct {v0, v1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->onDocumentRead()V

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isTopmost()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V
    :try_end_3
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2
    :try_end_6
    .catch Li5/z0; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    :try_start_7
    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public setPage(Lorg/apache/poi/xdgf/usermodel/XDGFPage;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->_page:Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    return-void
.end method
