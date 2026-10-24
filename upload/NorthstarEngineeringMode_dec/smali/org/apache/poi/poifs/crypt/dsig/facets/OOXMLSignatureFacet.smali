.class public Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final ID_PACKAGE_OBJECT:Ljava/lang/String; = "idPackageObject"

.field private static final LOG:La5/d;

.field private static final signed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 148

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:La5/d;

    const-string v1, "activeXControlBinary"

    const-string v2, "aFChunk"

    const-string v3, "attachedTemplate"

    const-string v4, "attachedToolbars"

    const-string v5, "audio"

    const-string v6, "calcChain"

    const-string v7, "chart"

    const-string v8, "chartColorStyle"

    const-string v9, "chartLayout"

    const-string v10, "chartsheet"

    const-string v11, "chartStyle"

    const-string v12, "chartUserShapes"

    const-string v13, "classificationlabels"

    const-string v14, "commentAuthors"

    const-string v15, "comments"

    const-string v16, "connections"

    const-string v17, "connectorXml"

    const-string v18, "control"

    const-string v19, "ctrlProp"

    const-string v20, "customData"

    const-string v21, "customData"

    const-string v22, "customProperty"

    const-string v23, "customXml"

    const-string v24, "diagram"

    const-string v25, "diagramColors"

    const-string v26, "diagramColorsHeader"

    const-string v27, "diagramData"

    const-string v28, "diagramDrawing"

    const-string v29, "diagramLayout"

    const-string v30, "diagramLayoutHeader"

    const-string v31, "diagramQuickStyle"

    const-string v32, "diagramQuickStyleHeader"

    const-string v33, "dialogsheet"

    const-string v34, "dictionary"

    const-string v35, "documentParts"

    const-string v36, "downRev"

    const-string v37, "drawing"

    const-string v38, "endnotes"

    const-string v39, "externalLink"

    const-string v40, "externalLinkPath"

    const-string v41, "font"

    const-string v42, "fontTable"

    const-string v43, "footer"

    const-string v44, "footnotes"

    const-string v45, "functionPrototypes"

    const-string v46, "glossaryDocument"

    const-string v47, "graphicFrameDoc"

    const-string v48, "groupShapeXml"

    const-string v49, "handoutMaster"

    const-string v50, "hdphoto"

    const-string v51, "header"

    const-string v52, "hyperlink"

    const-string v53, "image"

    const-string v54, "ink"

    const-string v55, "inkXml"

    const-string v56, "keyMapCustomizations"

    const-string v57, "legacyDiagramText"

    const-string v58, "legacyDocTextInfo"

    const-string v59, "mailMergeHeaderSource"

    const-string v60, "mailMergeRecipientData"

    const-string v61, "mailMergeSource"

    const-string v62, "media"

    const-string v63, "notesMaster"

    const-string v64, "notesSlide"

    const-string v65, "numbering"

    const-string v66, "officeDocument"

    const-string v67, "officeDocument"

    const-string v68, "oleObject"

    const-string/jumbo v69, "package"

    const-string/jumbo v70, "pictureXml"

    const-string/jumbo v71, "pivotCacheDefinition"

    const-string/jumbo v72, "pivotCacheRecords"

    const-string/jumbo v73, "pivotTable"

    const-string/jumbo v74, "powerPivotData"

    const-string/jumbo v75, "presProps"

    const-string/jumbo v76, "printerSettings"

    const-string/jumbo v77, "queryTable"

    const-string/jumbo v78, "recipientData"

    const-string/jumbo v79, "settings"

    const-string/jumbo v80, "shapeXml"

    const-string/jumbo v81, "sharedStrings"

    const-string/jumbo v82, "sheetMetadata"

    const-string/jumbo v83, "slicer"

    const-string/jumbo v84, "slicer"

    const-string/jumbo v85, "slicerCache"

    const-string/jumbo v86, "slicerCache"

    const-string/jumbo v87, "slide"

    const-string/jumbo v88, "slideLayout"

    const-string/jumbo v89, "slideMaster"

    const-string/jumbo v90, "slideUpdateInfo"

    const-string/jumbo v91, "slideUpdateUrl"

    const-string/jumbo v92, "smartTags"

    const-string/jumbo v93, "styles"

    const-string/jumbo v94, "stylesWithEffects"

    const-string/jumbo v95, "table"

    const-string/jumbo v96, "tableSingleCells"

    const-string/jumbo v97, "tableStyles"

    const-string/jumbo v98, "tags"

    const-string/jumbo v99, "theme"

    const-string/jumbo v100, "themeOverride"

    const-string/jumbo v101, "timeline"

    const-string/jumbo v102, "timelineCache"

    const-string/jumbo v103, "transform"

    const-string/jumbo v104, "ui/altText"

    const-string/jumbo v105, "ui/buttonSize"

    const-string/jumbo v106, "ui/controlID"

    const-string/jumbo v107, "ui/description"

    const-string/jumbo v108, "ui/enabled"

    const-string/jumbo v109, "ui/extensibility"

    const-string/jumbo v110, "ui/extensibility"

    const-string/jumbo v111, "ui/helperText"

    const-string/jumbo v112, "ui/imageID"

    const-string/jumbo v113, "ui/imageMso"

    const-string/jumbo v114, "ui/keyTip"

    const-string/jumbo v115, "ui/label"

    const-string/jumbo v116, "ui/lcid"

    const-string/jumbo v117, "ui/loud"

    const-string/jumbo v118, "ui/pressed"

    const-string/jumbo v119, "ui/progID"

    const-string/jumbo v120, "ui/ribbonID"

    const-string/jumbo v121, "ui/showImage"

    const-string/jumbo v122, "ui/showLabel"

    const-string/jumbo v123, "ui/supertip"

    const-string/jumbo v124, "ui/target"

    const-string/jumbo v125, "ui/text"

    const-string/jumbo v126, "ui/title"

    const-string/jumbo v127, "ui/tooltip"

    const-string/jumbo v128, "ui/userCustomization"

    const-string/jumbo v129, "ui/visible"

    const-string/jumbo v130, "userXmlData"

    const-string/jumbo v131, "vbaProject"

    const-string/jumbo v132, "video"

    const-string/jumbo v133, "viewProps"

    const-string/jumbo v134, "vmlDrawing"

    const-string/jumbo v135, "volatileDependencies"

    const-string/jumbo v136, "webSettings"

    const-string/jumbo v137, "wordVbaData"

    const-string/jumbo v138, "worksheet"

    const-string/jumbo v139, "wsSortMap"

    const-string/jumbo v140, "xlBinaryIndex"

    const-string/jumbo v141, "xlExternalLinkPath/xlAlternateStartup"

    const-string/jumbo v142, "xlExternalLinkPath/xlLibrary"

    const-string/jumbo v143, "xlExternalLinkPath/xlPathMissing"

    const-string/jumbo v144, "xlExternalLinkPath/xlStartup"

    const-string/jumbo v145, "xlIntlMacrosheet"

    const-string/jumbo v146, "xlMacrosheet"

    const-string/jumbo v147, "xmlMaps"

    filled-new-array/range {v1 .. v147}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelationshipReferenceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    const-string v1, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceReferenceURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?ContentType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSignedRelationship(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string/jumbo v1, "relationship type: {}"

    invoke-interface {v0, p0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".*/relationships/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "customXml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x5c

    const/16 v0, 0x2f

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->e()La5/b;

    move-result-object p1

    const-string/jumbo v0, "part name: {}"

    invoke-interface {p1, p0, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addManifestObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestReferences(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newManifest(Ljava/util/List;)Ljavax/xml/crypto/dsig/Manifest;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;)V

    const-string p0, "idPackageObject"

    const/4 p2, 0x0

    invoke-virtual {v0, v2, p0, p2, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "#idPackageObject"

    const-string p4, "http://www.w3.org/2000/09/xmldsig#Object"

    invoke-static {p1, p0, p2, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addManifestReferences(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    const-string v0, "application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(.*)/_rels/.*"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v4, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-virtual {v4, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v5, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    invoke-direct {v5}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;-><init>()V

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->addRelationshipReference(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->isSignedRelationship(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->addRelationshipReference(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-static {v6}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "customXml"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "inkml+xml"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "text/xml"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v6, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:La5/d;

    invoke-interface {v6}, La5/d;->e()La5/b;

    move-result-object v6

    const-string/jumbo v7, "skipping customXml with content type: {}"

    invoke-interface {v6, v9, v7}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v8, "?ContentType="

    invoke-static {v6, v8, v9}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v7, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_5
    :try_start_2
    new-instance p0, Ljavax/xml/crypto/dsig/XMLSignatureException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to find part "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->hasSourceIds()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    invoke-static {p1, v6, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-static {p1, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    invoke-static {v5, v2, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid relationship descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    new-instance p0, Lg5/l;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lg5/l;-><init>(I)V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public addSignatureInfo(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->createSignatureInfoV1(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lc3/b;

    move-result-object p0

    invoke-interface {p0}, Lc3/b;->n1()Lc3/a;

    const/4 p0, 0x0

    throw p0
.end method

.method public addSignatureTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/XMLStructure;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->addNewSignatureTime()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;

    move-result-object v0

    const-string v1, "YYYY-MM-DDThh:mm:ssTZD"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->formatExecutionTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setValue(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v1

    const-string v2, "execution time: {}"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v1, p2}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "idSignatureTime"

    invoke-virtual {p1, v0, p0, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperty;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperties(Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperties;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createSignatureInfoV1(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lc3/b;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    sget-object p1, Lc3/b;->l:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lc3/b;

    invoke-interface {p1}, Lc3/b;->l1()Lc3/a;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureImage()[B

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureImageSetupId()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    throw v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri()Ljava/lang/String;

    throw v1
.end method

.method public preSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string/jumbo v1, "pre sign"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureInfo(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
