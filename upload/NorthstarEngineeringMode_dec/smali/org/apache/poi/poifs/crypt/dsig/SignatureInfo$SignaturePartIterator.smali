.class final Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SignaturePartIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;",
        ">;"
    }
.end annotation


# instance fields
.field sigOrigRels:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private sigRels:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/origin"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigOrigRels:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigRels:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigOrigRels:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigOrigRels:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100()La5/d;

    move-result-object v0

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v1, "Digital Signature Origin part: {}"

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/signature"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigRels:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100()La5/d;

    move-result-object v1

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "Reference to signature is invalid."

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->next()Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->sigRels:Ljava/util/Iterator;

    .line 3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 4
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100()La5/d;

    move-result-object v1

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v1

    const-string v2, "XML Signature part: {}"

    invoke-interface {v1, v0, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100()La5/d;

    move-result-object v2

    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    invoke-interface {v2, v1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v1

    const-string v2, "Reference to signature is invalid."

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V

    return-object v1
.end method

.method public remove()V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
