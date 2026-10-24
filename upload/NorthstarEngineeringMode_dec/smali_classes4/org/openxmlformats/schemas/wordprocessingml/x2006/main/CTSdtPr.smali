.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;",
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

    const-string v2, "ctsdtpre24dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAlias()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewBibliography()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewCitation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewComboBox()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtComboBox;
.end method

.method public abstract addNewDataBinding()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDataBinding;
.end method

.method public abstract addNewDate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;
.end method

.method public abstract addNewDocPartList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract addNewDocPartObj()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract addNewDropDownList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;
.end method

.method public abstract addNewEquation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewGroup()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLabel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLock()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLock;
.end method

.method public abstract addNewPicture()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewPlaceholder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPlaceholder;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract addNewRichText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewShowingPlcHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTabIndex()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract addNewTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewTemporary()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtText;
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

.method public abstract getAlias()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getBibliography()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getCitation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getComboBox()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtComboBox;
.end method

.method public abstract getDataBinding()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDataBinding;
.end method

.method public abstract getDate()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;
.end method

.method public abstract getDocPartList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract getDocPartObj()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDropDownList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;
.end method

.method public abstract getEquation()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getGroup()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLabel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLock()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLock;
.end method

.method public abstract getPicture()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getPlaceholder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPlaceholder;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract getRichText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getShowingPlcHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTabIndex()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract getTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getTemporary()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtText;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlias()Z
.end method

.method public abstract isSetBibliography()Z
.end method

.method public abstract isSetCitation()Z
.end method

.method public abstract isSetComboBox()Z
.end method

.method public abstract isSetDataBinding()Z
.end method

.method public abstract isSetDate()Z
.end method

.method public abstract isSetDocPartList()Z
.end method

.method public abstract isSetDocPartObj()Z
.end method

.method public abstract isSetDropDownList()Z
.end method

.method public abstract isSetEquation()Z
.end method

.method public abstract isSetGroup()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLabel()Z
.end method

.method public abstract isSetLock()Z
.end method

.method public abstract isSetPicture()Z
.end method

.method public abstract isSetPlaceholder()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetRichText()Z
.end method

.method public abstract isSetShowingPlcHdr()Z
.end method

.method public abstract isSetTabIndex()Z
.end method

.method public abstract isSetTag()Z
.end method

.method public abstract isSetTemporary()Z
.end method

.method public abstract isSetText()Z
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

.method public abstract setAlias(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setBibliography(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setCitation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setComboBox(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtComboBox;)V
.end method

.method public abstract setDataBinding(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDataBinding;)V
.end method

.method public abstract setDate(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDate;)V
.end method

.method public abstract setDocPartList(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;)V
.end method

.method public abstract setDocPartObj(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;)V
.end method

.method public abstract setDropDownList(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;)V
.end method

.method public abstract setEquation(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setGroup(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLabel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLock(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLock;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPicture(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setPlaceholder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPlaceholder;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
.end method

.method public abstract setRichText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setShowingPlcHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTabIndex(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;)V
.end method

.method public abstract setTag(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setTemporary(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtText;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlias()V
.end method

.method public abstract unsetBibliography()V
.end method

.method public abstract unsetCitation()V
.end method

.method public abstract unsetComboBox()V
.end method

.method public abstract unsetDataBinding()V
.end method

.method public abstract unsetDate()V
.end method

.method public abstract unsetDocPartList()V
.end method

.method public abstract unsetDocPartObj()V
.end method

.method public abstract unsetDropDownList()V
.end method

.method public abstract unsetEquation()V
.end method

.method public abstract unsetGroup()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLabel()V
.end method

.method public abstract unsetLock()V
.end method

.method public abstract unsetPicture()V
.end method

.method public abstract unsetPlaceholder()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetRichText()V
.end method

.method public abstract unsetShowingPlcHdr()V
.end method

.method public abstract unsetTabIndex()V
.end method

.method public abstract unsetTag()V
.end method

.method public abstract unsetTemporary()V
.end method

.method public abstract unsetText()V
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
