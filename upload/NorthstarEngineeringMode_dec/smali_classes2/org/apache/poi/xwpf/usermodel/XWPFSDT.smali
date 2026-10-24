.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDT;
.super Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/IRunBody;
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;


# instance fields
.field private final content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 4
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 6
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 2
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    return-void
.end method


# virtual methods
.method public getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->content:Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    return-object p0
.end method
