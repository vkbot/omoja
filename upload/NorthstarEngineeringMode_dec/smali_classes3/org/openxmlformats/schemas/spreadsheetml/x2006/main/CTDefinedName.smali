.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;",
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

    const-string v2, "ctdefinedname9413type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->type:Li5/c0;

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

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCustomMenu()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getFunction()Z
.end method

.method public abstract getFunctionGroupId()J
.end method

.method public abstract getHelp()Ljava/lang/String;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getLocalSheetId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPublishToServer()Z
.end method

.method public abstract getShortcutKey()Ljava/lang/String;
.end method

.method public abstract getStatusBar()Ljava/lang/String;
.end method

.method public abstract synthetic getStringValue()Ljava/lang/String;
.end method

.method public abstract getVbProcedure()Z
.end method

.method public abstract getWorkbookParameter()Z
.end method

.method public abstract getXlm()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetComment()Z
.end method

.method public abstract isSetCustomMenu()Z
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetFunction()Z
.end method

.method public abstract isSetFunctionGroupId()Z
.end method

.method public abstract isSetHelp()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetLocalSheetId()Z
.end method

.method public abstract isSetPublishToServer()Z
.end method

.method public abstract isSetShortcutKey()Z
.end method

.method public abstract isSetStatusBar()Z
.end method

.method public abstract isSetVbProcedure()Z
.end method

.method public abstract isSetWorkbookParameter()Z
.end method

.method public abstract isSetXlm()Z
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

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setCustomMenu(Ljava/lang/String;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setFunction(Z)V
.end method

.method public abstract setFunctionGroupId(J)V
.end method

.method public abstract setHelp(Ljava/lang/String;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setLocalSheetId(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPublishToServer(Z)V
.end method

.method public abstract setShortcutKey(Ljava/lang/String;)V
.end method

.method public abstract setStatusBar(Ljava/lang/String;)V
.end method

.method public abstract synthetic setStringValue(Ljava/lang/String;)V
.end method

.method public abstract setVbProcedure(Z)V
.end method

.method public abstract setWorkbookParameter(Z)V
.end method

.method public abstract setXlm(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetComment()V
.end method

.method public abstract unsetCustomMenu()V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetFunction()V
.end method

.method public abstract unsetFunctionGroupId()V
.end method

.method public abstract unsetHelp()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetLocalSheetId()V
.end method

.method public abstract unsetPublishToServer()V
.end method

.method public abstract unsetShortcutKey()V
.end method

.method public abstract unsetStatusBar()V
.end method

.method public abstract unsetVbProcedure()V
.end method

.method public abstract unsetWorkbookParameter()V
.end method

.method public abstract unsetXlm()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetComment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCustomMenu()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDescription()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFunction()Li5/m0;
.end method

.method public abstract xgetFunctionGroupId()Li5/l2;
.end method

.method public abstract xgetHelp()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHidden()Li5/m0;
.end method

.method public abstract xgetLocalSheetId()Li5/l2;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPublishToServer()Li5/m0;
.end method

.method public abstract xgetShortcutKey()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetStatusBar()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetVbProcedure()Li5/m0;
.end method

.method public abstract xgetWorkbookParameter()Li5/m0;
.end method

.method public abstract xgetXlm()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetComment(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCustomMenu(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDescription(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFunction(Li5/m0;)V
.end method

.method public abstract xsetFunctionGroupId(Li5/l2;)V
.end method

.method public abstract xsetHelp(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHidden(Li5/m0;)V
.end method

.method public abstract xsetLocalSheetId(Li5/l2;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPublishToServer(Li5/m0;)V
.end method

.method public abstract xsetShortcutKey(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetStatusBar(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetVbProcedure(Li5/m0;)V
.end method

.method public abstract xsetWorkbookParameter(Li5/m0;)V
.end method

.method public abstract xsetXlm(Li5/m0;)V
.end method
