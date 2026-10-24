.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;",
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

    const-string v2, "ctproperties3f10type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewDigSig()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTDigSigBlob;
.end method

.method public abstract addNewHLinks()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract addNewHeadingPairs()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract addNewTitlesOfParts()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorLpstr;
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

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getApplication()Ljava/lang/String;
.end method

.method public abstract getCharacters()I
.end method

.method public abstract getCharactersWithSpaces()I
.end method

.method public abstract getCompany()Ljava/lang/String;
.end method

.method public abstract getDigSig()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTDigSigBlob;
.end method

.method public abstract getDocSecurity()I
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getHLinks()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract getHeadingPairs()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract getHiddenSlides()I
.end method

.method public abstract getHyperlinkBase()Ljava/lang/String;
.end method

.method public abstract getHyperlinksChanged()Z
.end method

.method public abstract getLines()I
.end method

.method public abstract getLinksUpToDate()Z
.end method

.method public abstract getMMClips()I
.end method

.method public abstract getManager()Ljava/lang/String;
.end method

.method public abstract getNotes()I
.end method

.method public abstract getPages()I
.end method

.method public abstract getParagraphs()I
.end method

.method public abstract getPresentationFormat()Ljava/lang/String;
.end method

.method public abstract getScaleCrop()Z
.end method

.method public abstract getSharedDoc()Z
.end method

.method public abstract getSlides()I
.end method

.method public abstract getTemplate()Ljava/lang/String;
.end method

.method public abstract getTitlesOfParts()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorLpstr;
.end method

.method public abstract getTotalTime()I
.end method

.method public abstract getWords()I
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAppVersion()Z
.end method

.method public abstract isSetApplication()Z
.end method

.method public abstract isSetCharacters()Z
.end method

.method public abstract isSetCharactersWithSpaces()Z
.end method

.method public abstract isSetCompany()Z
.end method

.method public abstract isSetDigSig()Z
.end method

.method public abstract isSetDocSecurity()Z
.end method

.method public abstract isSetHLinks()Z
.end method

.method public abstract isSetHeadingPairs()Z
.end method

.method public abstract isSetHiddenSlides()Z
.end method

.method public abstract isSetHyperlinkBase()Z
.end method

.method public abstract isSetHyperlinksChanged()Z
.end method

.method public abstract isSetLines()Z
.end method

.method public abstract isSetLinksUpToDate()Z
.end method

.method public abstract isSetMMClips()Z
.end method

.method public abstract isSetManager()Z
.end method

.method public abstract isSetNotes()Z
.end method

.method public abstract isSetPages()Z
.end method

.method public abstract isSetParagraphs()Z
.end method

.method public abstract isSetPresentationFormat()Z
.end method

.method public abstract isSetScaleCrop()Z
.end method

.method public abstract isSetSharedDoc()Z
.end method

.method public abstract isSetSlides()Z
.end method

.method public abstract isSetTemplate()Z
.end method

.method public abstract isSetTitlesOfParts()Z
.end method

.method public abstract isSetTotalTime()Z
.end method

.method public abstract isSetWords()Z
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

.method public abstract setAppVersion(Ljava/lang/String;)V
.end method

.method public abstract setApplication(Ljava/lang/String;)V
.end method

.method public abstract setCharacters(I)V
.end method

.method public abstract setCharactersWithSpaces(I)V
.end method

.method public abstract setCompany(Ljava/lang/String;)V
.end method

.method public abstract setDigSig(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTDigSigBlob;)V
.end method

.method public abstract setDocSecurity(I)V
.end method

.method public abstract setHLinks(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;)V
.end method

.method public abstract setHeadingPairs(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;)V
.end method

.method public abstract setHiddenSlides(I)V
.end method

.method public abstract setHyperlinkBase(Ljava/lang/String;)V
.end method

.method public abstract setHyperlinksChanged(Z)V
.end method

.method public abstract setLines(I)V
.end method

.method public abstract setLinksUpToDate(Z)V
.end method

.method public abstract setMMClips(I)V
.end method

.method public abstract setManager(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNotes(I)V
.end method

.method public abstract setPages(I)V
.end method

.method public abstract setParagraphs(I)V
.end method

.method public abstract setPresentationFormat(Ljava/lang/String;)V
.end method

.method public abstract setScaleCrop(Z)V
.end method

.method public abstract setSharedDoc(Z)V
.end method

.method public abstract setSlides(I)V
.end method

.method public abstract setTemplate(Ljava/lang/String;)V
.end method

.method public abstract setTitlesOfParts(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorLpstr;)V
.end method

.method public abstract setTotalTime(I)V
.end method

.method public abstract setWords(I)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAppVersion()V
.end method

.method public abstract unsetApplication()V
.end method

.method public abstract unsetCharacters()V
.end method

.method public abstract unsetCharactersWithSpaces()V
.end method

.method public abstract unsetCompany()V
.end method

.method public abstract unsetDigSig()V
.end method

.method public abstract unsetDocSecurity()V
.end method

.method public abstract unsetHLinks()V
.end method

.method public abstract unsetHeadingPairs()V
.end method

.method public abstract unsetHiddenSlides()V
.end method

.method public abstract unsetHyperlinkBase()V
.end method

.method public abstract unsetHyperlinksChanged()V
.end method

.method public abstract unsetLines()V
.end method

.method public abstract unsetLinksUpToDate()V
.end method

.method public abstract unsetMMClips()V
.end method

.method public abstract unsetManager()V
.end method

.method public abstract unsetNotes()V
.end method

.method public abstract unsetPages()V
.end method

.method public abstract unsetParagraphs()V
.end method

.method public abstract unsetPresentationFormat()V
.end method

.method public abstract unsetScaleCrop()V
.end method

.method public abstract unsetSharedDoc()V
.end method

.method public abstract unsetSlides()V
.end method

.method public abstract unsetTemplate()V
.end method

.method public abstract unsetTitlesOfParts()V
.end method

.method public abstract unsetTotalTime()V
.end method

.method public abstract unsetWords()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAppVersion()Li5/g2;
.end method

.method public abstract xgetApplication()Li5/g2;
.end method

.method public abstract xgetCharacters()Li5/l1;
.end method

.method public abstract xgetCharactersWithSpaces()Li5/l1;
.end method

.method public abstract xgetCompany()Li5/g2;
.end method

.method public abstract xgetDocSecurity()Li5/l1;
.end method

.method public abstract xgetHiddenSlides()Li5/l1;
.end method

.method public abstract xgetHyperlinkBase()Li5/g2;
.end method

.method public abstract xgetHyperlinksChanged()Li5/m0;
.end method

.method public abstract xgetLines()Li5/l1;
.end method

.method public abstract xgetLinksUpToDate()Li5/m0;
.end method

.method public abstract xgetMMClips()Li5/l1;
.end method

.method public abstract xgetManager()Li5/g2;
.end method

.method public abstract xgetNotes()Li5/l1;
.end method

.method public abstract xgetPages()Li5/l1;
.end method

.method public abstract xgetParagraphs()Li5/l1;
.end method

.method public abstract xgetPresentationFormat()Li5/g2;
.end method

.method public abstract xgetScaleCrop()Li5/m0;
.end method

.method public abstract xgetSharedDoc()Li5/m0;
.end method

.method public abstract xgetSlides()Li5/l1;
.end method

.method public abstract xgetTemplate()Li5/g2;
.end method

.method public abstract xgetTotalTime()Li5/l1;
.end method

.method public abstract xgetWords()Li5/l1;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAppVersion(Li5/g2;)V
.end method

.method public abstract xsetApplication(Li5/g2;)V
.end method

.method public abstract xsetCharacters(Li5/l1;)V
.end method

.method public abstract xsetCharactersWithSpaces(Li5/l1;)V
.end method

.method public abstract xsetCompany(Li5/g2;)V
.end method

.method public abstract xsetDocSecurity(Li5/l1;)V
.end method

.method public abstract xsetHiddenSlides(Li5/l1;)V
.end method

.method public abstract xsetHyperlinkBase(Li5/g2;)V
.end method

.method public abstract xsetHyperlinksChanged(Li5/m0;)V
.end method

.method public abstract xsetLines(Li5/l1;)V
.end method

.method public abstract xsetLinksUpToDate(Li5/m0;)V
.end method

.method public abstract xsetMMClips(Li5/l1;)V
.end method

.method public abstract xsetManager(Li5/g2;)V
.end method

.method public abstract xsetNotes(Li5/l1;)V
.end method

.method public abstract xsetPages(Li5/l1;)V
.end method

.method public abstract xsetParagraphs(Li5/l1;)V
.end method

.method public abstract xsetPresentationFormat(Li5/g2;)V
.end method

.method public abstract xsetScaleCrop(Li5/m0;)V
.end method

.method public abstract xsetSharedDoc(Li5/m0;)V
.end method

.method public abstract xsetSlides(Li5/l1;)V
.end method

.method public abstract xsetTemplate(Li5/g2;)V
.end method

.method public abstract xsetTotalTime(Li5/l1;)V
.end method

.method public abstract xsetWords(Li5/l1;)V
.end method
