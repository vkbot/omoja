.class public Lorg/apache/poi/xwpf/usermodel/XWPFSettings;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method private readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;->getSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to read data from input-stream"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setDocumentProtection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public commit()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    if-eqz v0, :cond_2

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to write out settings that were never read in!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCTSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    return-object p0
.end method

.method public getEvenAndOddHeadings()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetEvenAndOddHeaders()Z

    move-result p0

    return p0
.end method

.method public getMirrorMargins()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetMirrorMargins()Z

    move-result p0

    return p0
.end method

.method public getZoomPercent()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->getPercent()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->xgetPercent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumberOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumberOrPercent;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    :goto_1
    return-wide v0
.end method

.method public isEnforcedWith()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->xgetEnforcement()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->xgetEnforcement()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEdit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrackRevisions()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result p0

    return p0
.end method

.method public isUpdateFields()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetUpdateFields()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getUpdateFields()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDocumentRead()V
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->onDocumentRead()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public removeEnforcement()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->OFF:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Ljava/lang/Object;)V

    return-void
.end method

.method public setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    if-nez p2, :cond_6

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptProviderType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptProviderType()V

    .line 7
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmClass()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmClass()V

    .line 9
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmType()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmType()V

    .line 11
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmSid()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmSid()V

    .line 13
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetSalt()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetSalt()V

    .line 15
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptSpinCount()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptSpinCount()V

    .line 17
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetHash()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetHash()V

    goto/16 :goto_1

    :cond_6
    if-nez p3, :cond_7

    .line 19
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 20
    :cond_7
    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFSettings$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Hash algorithm \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not supported for document write protection."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :pswitch_0
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/16 v0, 0xe

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/16 v0, 0xd

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/16 v0, 0xc

    goto :goto_0

    .line 25
    :pswitch_3
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/4 v0, 0x4

    goto :goto_0

    .line 26
    :pswitch_4
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/4 v0, 0x3

    goto :goto_0

    .line 27
    :pswitch_5
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/4 v0, 0x2

    goto :goto_0

    .line 28
    :pswitch_6
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;

    const/4 v0, 0x1

    .line 29
    :goto_0
    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    .line 30
    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const v3, 0x186a0

    .line 31
    invoke-static {p2, p3, v1, v3, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p2

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p3

    invoke-interface {p3, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setSalt([B)V

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setHash([B)V

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    int-to-long v1, v3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptSpinCount(Ljava/math/BigInteger;)V

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    sget-object p3, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;->TYPE_ANY:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;)V

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    sget-object p3, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;->HASH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;)V

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;)V

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    int-to-long p1, v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmSid(Ljava/math/BigInteger;)V

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEvenAndOddHeadings(Z)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->OFF:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setEvenAndOddHeaders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void
.end method

.method public setMirrorMargins(Z)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->OFF:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setMirrorMargins(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void
.end method

.method public setTrackRevisions(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewTrackRevisions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->unsetTrackRevisions()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpdateFields()V
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setUpdateFields(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void
.end method

.method public setZoomPercent(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->setPercent(Ljava/lang/Object;)V

    return-void
.end method

.method public validateProtectionPassword(Ljava/lang/String;)Z
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getCryptAlgorithmSid()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getHash()[B

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getSalt()[B

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getCryptSpinCount()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p1, v0, v2, p0, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
