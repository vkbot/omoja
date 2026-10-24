.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;",
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

    const-string v2, "cttltimecondition1eb9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewRtn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;
.end method

.method public abstract addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract addNewTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;
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

.method public abstract getDelay()Ljava/lang/Object;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEvt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;
.end method

.method public abstract getRtn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;
.end method

.method public abstract getTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;
.end method

.method public abstract getTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetDelay()Z
.end method

.method public abstract isSetEvt()Z
.end method

.method public abstract isSetRtn()Z
.end method

.method public abstract isSetTgtEl()Z
.end method

.method public abstract isSetTn()Z
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

.method public abstract setDelay(Ljava/lang/Object;)V
.end method

.method public abstract setEvt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setRtn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerRuntimeNode;)V
.end method

.method public abstract setTgtEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;)V
.end method

.method public abstract setTn(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTriggerTimeNodeID;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetDelay()V
.end method

.method public abstract unsetEvt()V
.end method

.method public abstract unsetRtn()V
.end method

.method public abstract unsetTgtEl()V
.end method

.method public abstract unsetTn()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetDelay()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetEvt()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetDelay(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetEvt(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTriggerEvent;)V
.end method
