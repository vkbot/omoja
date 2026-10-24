.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;",
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

    const-string v2, "ctdataconsolidate941etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewDataRefs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataRefs;
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

.method public abstract getDataRefs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataRefs;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;
.end method

.method public abstract getLeftLabels()Z
.end method

.method public abstract getLink()Z
.end method

.method public abstract getStartLabels()Z
.end method

.method public abstract getTopLabels()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetDataRefs()Z
.end method

.method public abstract isSetFunction()Z
.end method

.method public abstract isSetLeftLabels()Z
.end method

.method public abstract isSetLink()Z
.end method

.method public abstract isSetStartLabels()Z
.end method

.method public abstract isSetTopLabels()Z
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

.method public abstract setDataRefs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataRefs;)V
.end method

.method public abstract setFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V
.end method

.method public abstract setLeftLabels(Z)V
.end method

.method public abstract setLink(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setStartLabels(Z)V
.end method

.method public abstract setTopLabels(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetDataRefs()V
.end method

.method public abstract unsetFunction()V
.end method

.method public abstract unsetLeftLabels()V
.end method

.method public abstract unsetLink()V
.end method

.method public abstract unsetStartLabels()V
.end method

.method public abstract unsetTopLabels()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;
.end method

.method public abstract xgetLeftLabels()Li5/m0;
.end method

.method public abstract xgetLink()Li5/m0;
.end method

.method public abstract xgetStartLabels()Li5/m0;
.end method

.method public abstract xgetTopLabels()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;)V
.end method

.method public abstract xsetLeftLabels(Li5/m0;)V
.end method

.method public abstract xsetLink(Li5/m0;)V
.end method

.method public abstract xsetStartLabels(Li5/m0;)V
.end method

.method public abstract xsetTopLabels(Li5/m0;)V
.end method
