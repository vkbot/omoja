.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;",
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

    const-string v2, "ctlvlf630type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewIsLgl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLegacy()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvlLegacy;
.end method

.method public abstract addNewLvlJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract addNewLvlPicBulletId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLvlRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;
.end method

.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.end method

.method public abstract addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;
.end method

.method public abstract addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract addNewStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewSuff()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;
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

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getIlvl()Ljava/math/BigInteger;
.end method

.method public abstract getIsLgl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLegacy()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvlLegacy;
.end method

.method public abstract getLvlJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract getLvlPicBulletId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLvlRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;
.end method

.method public abstract getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract getStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getSuff()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;
.end method

.method public abstract getTentative()Ljava/lang/Object;
.end method

.method public abstract getTplc()[B
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetIsLgl()Z
.end method

.method public abstract isSetLegacy()Z
.end method

.method public abstract isSetLvlJc()Z
.end method

.method public abstract isSetLvlPicBulletId()Z
.end method

.method public abstract isSetLvlRestart()Z
.end method

.method public abstract isSetLvlText()Z
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract isSetPStyle()Z
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract isSetSuff()Z
.end method

.method public abstract isSetTentative()Z
.end method

.method public abstract isSetTplc()Z
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

.method public abstract setIlvl(Ljava/math/BigInteger;)V
.end method

.method public abstract setIsLgl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLegacy(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvlLegacy;)V
.end method

.method public abstract setLvlJc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;)V
.end method

.method public abstract setLvlPicBulletId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLvlRestart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLvlText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;)V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;)V
.end method

.method public abstract setPStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
.end method

.method public abstract setStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setSuff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelSuffix;)V
.end method

.method public abstract setTentative(Ljava/lang/Object;)V
.end method

.method public abstract setTplc([B)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetIsLgl()V
.end method

.method public abstract unsetLegacy()V
.end method

.method public abstract unsetLvlJc()V
.end method

.method public abstract unsetLvlPicBulletId()V
.end method

.method public abstract unsetLvlRestart()V
.end method

.method public abstract unsetLvlText()V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetPPr()V
.end method

.method public abstract unsetPStyle()V
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract unsetSuff()V
.end method

.method public abstract unsetTentative()V
.end method

.method public abstract unsetTplc()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetTentative()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetTplc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetIlvl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetTentative(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetTplc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method
