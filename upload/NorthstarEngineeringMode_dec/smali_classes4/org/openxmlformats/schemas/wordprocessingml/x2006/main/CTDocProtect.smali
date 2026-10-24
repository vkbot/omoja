.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;",
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

    const-string v2, "ctdocprotectc611type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->type:Li5/c0;

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

.method public abstract getAlgIdExt()[B
.end method

.method public abstract getAlgIdExtSource()Ljava/lang/String;
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getCryptAlgorithmClass()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;
.end method

.method public abstract getCryptAlgorithmSid()Ljava/math/BigInteger;
.end method

.method public abstract getCryptAlgorithmType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;
.end method

.method public abstract getCryptProvider()Ljava/lang/String;
.end method

.method public abstract getCryptProviderType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;
.end method

.method public abstract getCryptProviderTypeExt()[B
.end method

.method public abstract getCryptProviderTypeExtSource()Ljava/lang/String;
.end method

.method public abstract getCryptSpinCount()Ljava/math/BigInteger;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEdit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;
.end method

.method public abstract getEnforcement()Ljava/lang/Object;
.end method

.method public abstract getFormatting()Ljava/lang/Object;
.end method

.method public abstract getHash()[B
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getSalt()[B
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getSpinCount()Ljava/math/BigInteger;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlgIdExt()Z
.end method

.method public abstract isSetAlgIdExtSource()Z
.end method

.method public abstract isSetAlgorithmName()Z
.end method

.method public abstract isSetCryptAlgorithmClass()Z
.end method

.method public abstract isSetCryptAlgorithmSid()Z
.end method

.method public abstract isSetCryptAlgorithmType()Z
.end method

.method public abstract isSetCryptProvider()Z
.end method

.method public abstract isSetCryptProviderType()Z
.end method

.method public abstract isSetCryptProviderTypeExt()Z
.end method

.method public abstract isSetCryptProviderTypeExtSource()Z
.end method

.method public abstract isSetCryptSpinCount()Z
.end method

.method public abstract isSetEdit()Z
.end method

.method public abstract isSetEnforcement()Z
.end method

.method public abstract isSetFormatting()Z
.end method

.method public abstract isSetHash()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetSalt()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetSpinCount()Z
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

.method public abstract setAlgIdExt([B)V
.end method

.method public abstract setAlgIdExtSource(Ljava/lang/String;)V
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;)V
.end method

.method public abstract setCryptAlgorithmSid(Ljava/math/BigInteger;)V
.end method

.method public abstract setCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;)V
.end method

.method public abstract setCryptProvider(Ljava/lang/String;)V
.end method

.method public abstract setCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;)V
.end method

.method public abstract setCryptProviderTypeExt([B)V
.end method

.method public abstract setCryptProviderTypeExtSource(Ljava/lang/String;)V
.end method

.method public abstract setCryptSpinCount(Ljava/math/BigInteger;)V
.end method

.method public abstract setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V
.end method

.method public abstract setEnforcement(Ljava/lang/Object;)V
.end method

.method public abstract setFormatting(Ljava/lang/Object;)V
.end method

.method public abstract setHash([B)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setSalt([B)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setSpinCount(Ljava/math/BigInteger;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlgIdExt()V
.end method

.method public abstract unsetAlgIdExtSource()V
.end method

.method public abstract unsetAlgorithmName()V
.end method

.method public abstract unsetCryptAlgorithmClass()V
.end method

.method public abstract unsetCryptAlgorithmSid()V
.end method

.method public abstract unsetCryptAlgorithmType()V
.end method

.method public abstract unsetCryptProvider()V
.end method

.method public abstract unsetCryptProviderType()V
.end method

.method public abstract unsetCryptProviderTypeExt()V
.end method

.method public abstract unsetCryptProviderTypeExtSource()V
.end method

.method public abstract unsetCryptSpinCount()V
.end method

.method public abstract unsetEdit()V
.end method

.method public abstract unsetEnforcement()V
.end method

.method public abstract unsetFormatting()V
.end method

.method public abstract unsetHash()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetSalt()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAlgIdExt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetAlgIdExtSource()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCryptAlgorithmClass()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;
.end method

.method public abstract xgetCryptAlgorithmSid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetCryptAlgorithmType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;
.end method

.method public abstract xgetCryptProvider()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCryptProviderType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;
.end method

.method public abstract xgetCryptProviderTypeExt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetCryptProviderTypeExtSource()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCryptSpinCount()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetEdit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;
.end method

.method public abstract xgetEnforcement()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFormatting()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetHash()Li5/k0;
.end method

.method public abstract xgetHashValue()Li5/k0;
.end method

.method public abstract xgetSalt()Li5/k0;
.end method

.method public abstract xgetSaltValue()Li5/k0;
.end method

.method public abstract xgetSpinCount()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAlgIdExt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetAlgIdExtSource(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;)V
.end method

.method public abstract xsetCryptAlgorithmSid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;)V
.end method

.method public abstract xsetCryptProvider(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;)V
.end method

.method public abstract xsetCryptProviderTypeExt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetCryptProviderTypeExtSource(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCryptSpinCount(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;)V
.end method

.method public abstract xsetEnforcement(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFormatting(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetHash(Li5/k0;)V
.end method

.method public abstract xsetHashValue(Li5/k0;)V
.end method

.method public abstract xsetSalt(Li5/k0;)V
.end method

.method public abstract xsetSaltValue(Li5/k0;)V
.end method

.method public abstract xsetSpinCount(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
