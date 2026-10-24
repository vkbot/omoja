.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctslidelayouteb34type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract addNewClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.end method

.method public abstract addNewTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.end method

.method public abstract synthetic changeType(Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic compareTo(Ljava/lang/Object;)I
.end method

.method public abstract synthetic compareValue(Lorg/apache/xmlbeans/XmlObject;)I
.end method

.method public abstract synthetic copy()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic documentProperties()Li5/t0;
.end method

.method public abstract synthetic dump()V
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getMatchingName()Ljava/lang/String;
.end method

.method public abstract getPreserve()Z
.end method

.method public abstract getShowMasterPhAnim()Z
.end method

.method public abstract getShowMasterSp()Z
.end method

.method public abstract getTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.end method

.method public abstract getTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;
.end method

.method public abstract getUserDrawn()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetClrMapOvr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHf()Z
.end method

.method public abstract isSetMatchingName()Z
.end method

.method public abstract isSetPreserve()Z
.end method

.method public abstract isSetShowMasterPhAnim()Z
.end method

.method public abstract isSetShowMasterSp()Z
.end method

.method public abstract isSetTiming()Z
.end method

.method public abstract isSetTransition()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetUserDrawn()Z
.end method

.method public abstract synthetic monitor()Ljava/lang/Object;
.end method

.method public abstract synthetic newCursor()Li5/p0;
.end method

.method public abstract synthetic newDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newDomNode(Li5/z1;)Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newInputStream()Ljava/io/InputStream;
.end method

.method public abstract synthetic newInputStream(Li5/z1;)Ljava/io/InputStream;
.end method

.method public abstract synthetic newReader()Ljava/io/Reader;
.end method

.method public abstract synthetic newReader(Li5/z1;)Ljava/io/Reader;
.end method

.method public abstract synthetic newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic save(Ljava/io/File;)V
.end method

.method public abstract synthetic save(Ljava/io/File;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;Li5/z1;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
.end method

.method public abstract synthetic schemaType()Li5/c0;
.end method

.method public abstract synthetic selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttributes(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract setCSld(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
.end method

.method public abstract setClrMapOvr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setHf(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setMatchingName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPreserve(Z)V
.end method

.method public abstract setShowMasterPhAnim(Z)V
.end method

.method public abstract setShowMasterSp(Z)V
.end method

.method public abstract setTiming(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;)V
.end method

.method public abstract setTransition(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;)V
.end method

.method public abstract setUserDrawn(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetClrMapOvr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHf()V
.end method

.method public abstract unsetMatchingName()V
.end method

.method public abstract unsetPreserve()V
.end method

.method public abstract unsetShowMasterPhAnim()V
.end method

.method public abstract unsetShowMasterSp()V
.end method

.method public abstract unsetTiming()V
.end method

.method public abstract unsetTransition()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetUserDrawn()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetMatchingName()Li5/g2;
.end method

.method public abstract xgetPreserve()Li5/m0;
.end method

.method public abstract xgetShowMasterPhAnim()Li5/m0;
.end method

.method public abstract xgetShowMasterSp()Li5/m0;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType;
.end method

.method public abstract xgetUserDrawn()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetMatchingName(Li5/g2;)V
.end method

.method public abstract xsetPreserve(Li5/m0;)V
.end method

.method public abstract xsetShowMasterPhAnim(Li5/m0;)V
.end method

.method public abstract xsetShowMasterSp(Li5/m0;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType;)V
.end method

.method public abstract xsetUserDrawn(Li5/m0;)V
.end method
