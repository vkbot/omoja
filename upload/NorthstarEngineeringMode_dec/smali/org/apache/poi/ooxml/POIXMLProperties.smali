.class public Lorg/apache/poi/ooxml/POIXMLProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;,
        Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;,
        Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;
    }
.end annotation


# static fields
.field private static final NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

.field private static final NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;


# instance fields
.field private final core:Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

.field private final cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

.field private custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private final ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

.field private extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private final pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    sput-object v0, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->addNewProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    sput-object v0, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->addNewProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;-><init>(Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->core:Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v5, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v5}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    new-instance v5, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    invoke-direct {v5, v1, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object v5, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    iput-object v2, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    :cond_3
    :goto_1
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    if-ne v1, v4, :cond_6

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez p1, :cond_4

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-direct {p1, v0, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_3
    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    new-instance v1, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p1, :cond_5

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v0

    :cond_6
    iput-object v2, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-direct {p1, v0, v2}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_EXT_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    invoke-static {v1}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/docProps/app.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties"

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v2, "application/vnd.openxmlformats-officedocument.extended-properties+xml"

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLProperties;->NEW_CUST_INSTANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    invoke-static {v1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "/docProps/custom.xml"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties"

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v2, "application/vnd.openxmlformats-officedocument.custom-properties+xml"

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->extPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    invoke-static {v1}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->access$300(Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_5

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v1

    :cond_4
    :goto_5
    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->custPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_5
    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    invoke-static {p0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->access$400(Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw v1

    :cond_6
    :goto_7
    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->core:Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    return-object p0
.end method

.method public getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->cust:Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    return-object p0
.end method

.method public getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->ext:Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    return-object p0
.end method

.method public getThumbnailFilename()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailImage()Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/thumbnail"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getThumbnailPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ContentTypes;->getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set a Thumbnail of type "

    const-string v1, " when existing one is of a different type "

    invoke-static {p2, p0, v1}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
