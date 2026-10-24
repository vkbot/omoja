.class public Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ObjectShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;",
        "Lorg/apache/poi/sl/usermodel/ObjectShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final CT_PICTURE:[Ljavax/xml/namespace/QName;

.field private static final GRAPHIC:[Ljavax/xml/namespace/QName;

.field private static final GRAPHIC_DATA:[Ljavax/xml/namespace/QName;

.field private static final OLE_OBJ:[Ljavax/xml/namespace/QName;

.field static final OLE_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/presentationml/2006/ole"


# instance fields
.field private _data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

.field private final _oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/xml/namespace/QName;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "graphic"

    const-string v4, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-direct {v2, v4, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->GRAPHIC:[Ljavax/xml/namespace/QName;

    new-array v1, v0, [Ljavax/xml/namespace/QName;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v5, "graphicData"

    invoke-direct {v2, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->GRAPHIC_DATA:[Ljavax/xml/namespace/QName;

    new-array v1, v0, [Ljavax/xml/namespace/QName;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v4, "oleObj"

    const-string v5, "http://schemas.openxmlformats.org/presentationml/2006/main"

    invoke-direct {v2, v5, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->OLE_OBJ:[Ljavax/xml/namespace/QName;

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "pic"

    invoke-direct {v1, v5, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->CT_PICTURE:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    const-class p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    const/4 v0, 0x3

    new-array v0, v0, [[Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->GRAPHIC:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->GRAPHIC_DATA:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->OLE_OBJ:[Ljavax/xml/namespace/QName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic a(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->addUpdatedData(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/b;)V

    return-void
.end method

.method private addUpdatedData(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/sl/usermodel/ObjectMetaData;Lorg/apache/commons/io/output/b;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    invoke-virtual {p3}, Lorg/apache/commons/io/output/b;->toInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_0

    new-instance p3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p3, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p3, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_6

    :catchall_1
    move-exception p2

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p3

    :try_start_6
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getOleEntry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Lorg/apache/commons/io/output/b;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_1
    new-instance p3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    goto :goto_1

    :catchall_4
    move-exception p2

    goto :goto_4

    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getOleEntry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-static {p3}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-virtual {p3, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    if-eqz p1, :cond_3

    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    goto :goto_8

    :cond_3
    :goto_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    return-void

    :goto_4
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_b
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception p3

    :try_start_c
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_6
    :try_start_d
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception p3

    if-eqz p1, :cond_5

    :try_start_e
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception p1

    :try_start_f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw p3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_8
    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception p2

    if-eqz p0, :cond_6

    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_9

    :catchall_b
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_9
    throw p2
.end method

.method private static parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->sizeOfPicArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .locals 7

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    sget-object v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewNvGraphicFramePr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Object "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    int-to-long v4, p0

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->addNewGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    const-string v2, "http://schemas.openxmlformats.org/presentationml/2006/ole"

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->setUri(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->P0()Li5/p0$a;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "oleObj"

    invoke-direct {v2, v0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Li5/p0;->I(Ljavax/xml/namespace/QName;)V

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "embed"

    invoke-direct {v2, v0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Li5/p0;->O0(Ljavax/xml/namespace/QName;)V

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v3

    const v4, 0x1360f0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    const-wide/32 v3, 0x1360f0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->newCursor()Li5/p0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Li5/p0;->j0()V

    invoke-interface {p1, p0}, Li5/p0;->f0(Li5/p0;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_7
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method


# virtual methods
.method public getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    return-object p0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    const-class v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    new-instance v2, Lorg/apache/poi/hssf/record/m1;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    const/4 v3, 0x4

    new-array v3, v3, [[Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->GRAPHIC:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->GRAPHIC_DATA:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->OLE_OBJ:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->CT_PICTURE:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getBlipId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getCTOleObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getObjectData()Lorg/apache/poi/sl/usermodel/ObjectData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getObjectData()Lorg/apache/poi/xslf/usermodel/XSLFObjectData;

    move-result-object p0

    return-object p0
.end method

.method public getObjectData()Lorg/apache/poi/xslf/usermodel/XSLFObjectData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getCTOleObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationPartById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectData;

    return-object p0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 6
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    return-object p0
.end method

.method public getProgId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->getProgId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public updateObjectData(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)Ljava/io/OutputStream;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->getMetaData()Lorg/apache/poi/sl/usermodel/ObjectMetaData;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationPartById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->OLE_OBJECT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getProgId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->setProgId(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->_oleObject:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/ObjectMetaData;->getObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->setName(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/sl/usermodel/ObjectMetaData;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to add new ole embedding"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "either application and/or metaData needs to be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
