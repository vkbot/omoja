.class public Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

.field protected styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-void
.end method


# virtual methods
.method public getNumberOfStyles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->sizeOfLsdExceptionArray()I

    move-result p0

    return p0
.end method

.method public isLatentStyle(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->getLsdExceptionArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
