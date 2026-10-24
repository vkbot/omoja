.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;",
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

    const-string v2, "ctapplicationnonvisualdrawingprops2fb6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAudioCd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCD;
.end method

.method public abstract addNewAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;
.end method

.method public abstract addNewCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
.end method

.method public abstract addNewQuickTimeFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTQuickTimeFile;
.end method

.method public abstract addNewVideoFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;
.end method

.method public abstract addNewWavAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
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

.method public abstract getAudioCd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCD;
.end method

.method public abstract getAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;
.end method

.method public abstract getCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getIsPhoto()Z
.end method

.method public abstract getPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
.end method

.method public abstract getQuickTimeFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTQuickTimeFile;
.end method

.method public abstract getUserDrawn()Z
.end method

.method public abstract getVideoFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;
.end method

.method public abstract getWavAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAudioCd()Z
.end method

.method public abstract isSetAudioFile()Z
.end method

.method public abstract isSetCustDataLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIsPhoto()Z
.end method

.method public abstract isSetPh()Z
.end method

.method public abstract isSetQuickTimeFile()Z
.end method

.method public abstract isSetUserDrawn()Z
.end method

.method public abstract isSetVideoFile()Z
.end method

.method public abstract isSetWavAudioFile()Z
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

.method public abstract setAudioCd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCD;)V
.end method

.method public abstract setAudioFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;)V
.end method

.method public abstract setCustDataLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setIsPhoto(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPh(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)V
.end method

.method public abstract setQuickTimeFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTQuickTimeFile;)V
.end method

.method public abstract setUserDrawn(Z)V
.end method

.method public abstract setVideoFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;)V
.end method

.method public abstract setWavAudioFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAudioCd()V
.end method

.method public abstract unsetAudioFile()V
.end method

.method public abstract unsetCustDataLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIsPhoto()V
.end method

.method public abstract unsetPh()V
.end method

.method public abstract unsetQuickTimeFile()V
.end method

.method public abstract unsetUserDrawn()V
.end method

.method public abstract unsetVideoFile()V
.end method

.method public abstract unsetWavAudioFile()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetIsPhoto()Li5/m0;
.end method

.method public abstract xgetUserDrawn()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetIsPhoto(Li5/m0;)V
.end method

.method public abstract xsetUserDrawn(Li5/m0;)V
.end method
