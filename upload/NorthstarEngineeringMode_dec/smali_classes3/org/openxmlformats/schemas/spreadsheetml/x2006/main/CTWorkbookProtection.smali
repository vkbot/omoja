.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;",
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

    const-string v2, "ctworkbookprotection56bctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->type:Li5/c0;

    return-void
.end method


# virtual methods
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

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getLockRevision()Z
.end method

.method public abstract getLockStructure()Z
.end method

.method public abstract getLockWindows()Z
.end method

.method public abstract getRevisionsAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getRevisionsHashValue()[B
.end method

.method public abstract getRevisionsPassword()[B
.end method

.method public abstract getRevisionsPasswordCharacterSet()Ljava/lang/String;
.end method

.method public abstract getRevisionsSaltValue()[B
.end method

.method public abstract getRevisionsSpinCount()J
.end method

.method public abstract getWorkbookAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getWorkbookHashValue()[B
.end method

.method public abstract getWorkbookPassword()[B
.end method

.method public abstract getWorkbookPasswordCharacterSet()Ljava/lang/String;
.end method

.method public abstract getWorkbookSaltValue()[B
.end method

.method public abstract getWorkbookSpinCount()J
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetLockRevision()Z
.end method

.method public abstract isSetLockStructure()Z
.end method

.method public abstract isSetLockWindows()Z
.end method

.method public abstract isSetRevisionsAlgorithmName()Z
.end method

.method public abstract isSetRevisionsHashValue()Z
.end method

.method public abstract isSetRevisionsPassword()Z
.end method

.method public abstract isSetRevisionsPasswordCharacterSet()Z
.end method

.method public abstract isSetRevisionsSaltValue()Z
.end method

.method public abstract isSetRevisionsSpinCount()Z
.end method

.method public abstract isSetWorkbookAlgorithmName()Z
.end method

.method public abstract isSetWorkbookHashValue()Z
.end method

.method public abstract isSetWorkbookPassword()Z
.end method

.method public abstract isSetWorkbookPasswordCharacterSet()Z
.end method

.method public abstract isSetWorkbookSaltValue()Z
.end method

.method public abstract isSetWorkbookSpinCount()Z
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

.method public abstract setLockRevision(Z)V
.end method

.method public abstract setLockStructure(Z)V
.end method

.method public abstract setLockWindows(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setRevisionsAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setRevisionsHashValue([B)V
.end method

.method public abstract setRevisionsPassword([B)V
.end method

.method public abstract setRevisionsPasswordCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setRevisionsSaltValue([B)V
.end method

.method public abstract setRevisionsSpinCount(J)V
.end method

.method public abstract setWorkbookAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setWorkbookHashValue([B)V
.end method

.method public abstract setWorkbookPassword([B)V
.end method

.method public abstract setWorkbookPasswordCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setWorkbookSaltValue([B)V
.end method

.method public abstract setWorkbookSpinCount(J)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetLockRevision()V
.end method

.method public abstract unsetLockStructure()V
.end method

.method public abstract unsetLockWindows()V
.end method

.method public abstract unsetRevisionsAlgorithmName()V
.end method

.method public abstract unsetRevisionsHashValue()V
.end method

.method public abstract unsetRevisionsPassword()V
.end method

.method public abstract unsetRevisionsPasswordCharacterSet()V
.end method

.method public abstract unsetRevisionsSaltValue()V
.end method

.method public abstract unsetRevisionsSpinCount()V
.end method

.method public abstract unsetWorkbookAlgorithmName()V
.end method

.method public abstract unsetWorkbookHashValue()V
.end method

.method public abstract unsetWorkbookPassword()V
.end method

.method public abstract unsetWorkbookPasswordCharacterSet()V
.end method

.method public abstract unsetWorkbookSaltValue()V
.end method

.method public abstract unsetWorkbookSpinCount()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetLockRevision()Li5/m0;
.end method

.method public abstract xgetLockStructure()Li5/m0;
.end method

.method public abstract xgetLockWindows()Li5/m0;
.end method

.method public abstract xgetRevisionsAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRevisionsHashValue()Li5/k0;
.end method

.method public abstract xgetRevisionsPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetRevisionsPasswordCharacterSet()Li5/g2;
.end method

.method public abstract xgetRevisionsSaltValue()Li5/k0;
.end method

.method public abstract xgetRevisionsSpinCount()Li5/l2;
.end method

.method public abstract xgetWorkbookAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetWorkbookHashValue()Li5/k0;
.end method

.method public abstract xgetWorkbookPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetWorkbookPasswordCharacterSet()Li5/g2;
.end method

.method public abstract xgetWorkbookSaltValue()Li5/k0;
.end method

.method public abstract xgetWorkbookSpinCount()Li5/l2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetLockRevision(Li5/m0;)V
.end method

.method public abstract xsetLockStructure(Li5/m0;)V
.end method

.method public abstract xsetLockWindows(Li5/m0;)V
.end method

.method public abstract xsetRevisionsAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRevisionsHashValue(Li5/k0;)V
.end method

.method public abstract xsetRevisionsPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetRevisionsPasswordCharacterSet(Li5/g2;)V
.end method

.method public abstract xsetRevisionsSaltValue(Li5/k0;)V
.end method

.method public abstract xsetRevisionsSpinCount(Li5/l2;)V
.end method

.method public abstract xsetWorkbookAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetWorkbookHashValue(Li5/k0;)V
.end method

.method public abstract xsetWorkbookPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetWorkbookPasswordCharacterSet(Li5/g2;)V
.end method

.method public abstract xsetWorkbookSaltValue(Li5/k0;)V
.end method

.method public abstract xsetWorkbookSpinCount(Li5/l2;)V
.end method
