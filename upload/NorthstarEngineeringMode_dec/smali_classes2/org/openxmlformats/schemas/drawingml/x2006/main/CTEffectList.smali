.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;",
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

    const-string v2, "cteffectlist6featype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBlur()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract addNewFillOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract addNewGlow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;
.end method

.method public abstract addNewInnerShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;
.end method

.method public abstract addNewOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
.end method

.method public abstract addNewPrstShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;
.end method

.method public abstract addNewReflection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;
.end method

.method public abstract addNewSoftEdge()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;
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

.method public abstract getBlur()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getFillOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract getGlow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;
.end method

.method public abstract getInnerShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;
.end method

.method public abstract getOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
.end method

.method public abstract getPrstShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;
.end method

.method public abstract getReflection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;
.end method

.method public abstract getSoftEdge()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBlur()Z
.end method

.method public abstract isSetFillOverlay()Z
.end method

.method public abstract isSetGlow()Z
.end method

.method public abstract isSetInnerShdw()Z
.end method

.method public abstract isSetOuterShdw()Z
.end method

.method public abstract isSetPrstShdw()Z
.end method

.method public abstract isSetReflection()Z
.end method

.method public abstract isSetSoftEdge()Z
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

.method public abstract setBlur(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;)V
.end method

.method public abstract setFillOverlay(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;)V
.end method

.method public abstract setGlow(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;)V
.end method

.method public abstract setInnerShdw(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOuterShdw(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;)V
.end method

.method public abstract setPrstShdw(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;)V
.end method

.method public abstract setReflection(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;)V
.end method

.method public abstract setSoftEdge(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBlur()V
.end method

.method public abstract unsetFillOverlay()V
.end method

.method public abstract unsetGlow()V
.end method

.method public abstract unsetInnerShdw()V
.end method

.method public abstract unsetOuterShdw()V
.end method

.method public abstract unsetPrstShdw()V
.end method

.method public abstract unsetReflection()V
.end method

.method public abstract unsetSoftEdge()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method
