.class public Landroidx/constraintlayout/core/dsl/VChain;
.super Landroidx/constraintlayout/core/dsl/Chain;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/dsl/VChain$VAnchor;
    }
.end annotation


# instance fields
.field private mBaseline:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

.field private mBottom:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

.field private mTop:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/dsl/Chain;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p1, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->TOP:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    invoke-direct {p1, p0, v0}, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/VChain;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/VChain;->mTop:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 80
    new-instance p1, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->BOTTOM:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    invoke-direct {p1, p0, v0}, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/VChain;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBottom:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 81
    new-instance p1, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->BASELINE:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    invoke-direct {p1, p0, v0}, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/VChain;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBaseline:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 82
    new-instance p1, Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    sget-object v0, Landroidx/constraintlayout/core/dsl/Helper;->typeMap:Ljava/util/Map;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Helper$Type;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/dsl/Helper$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Landroidx/constraintlayout/core/dsl/Helper$HelperType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->type:Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/dsl/Chain;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 5
    .line 6
    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->TOP:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/VChain;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/VChain;->mTop:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 12
    .line 13
    new-instance p1, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 14
    .line 15
    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->BOTTOM:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/VChain;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBottom:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 21
    .line 22
    new-instance p1, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 23
    .line 24
    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->BASELINE:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    .line 25
    .line 26
    invoke-direct {p1, p0, v0}, Landroidx/constraintlayout/core/dsl/VChain$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/VChain;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBaseline:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/constraintlayout/core/dsl/Helper;->config:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    .line 34
    .line 35
    sget-object p2, Landroidx/constraintlayout/core/dsl/Helper;->typeMap:Ljava/util/Map;

    .line 36
    .line 37
    sget-object v0, Landroidx/constraintlayout/core/dsl/Helper$Type;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/dsl/Helper$Type;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroidx/constraintlayout/core/dsl/Helper$HelperType;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->type:Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/constraintlayout/core/dsl/Helper;->convertConfigToMap()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->configMap:Ljava/util/Map;

    .line 55
    .line 56
    const-string p2, "contains"

    .line 57
    .line 58
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->configMap:Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    iget-object p2, p0, Landroidx/constraintlayout/core/dsl/Chain;->references:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-static {p1, p2}, Landroidx/constraintlayout/core/dsl/Ref;->addStringToReferences(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseline()Landroidx/constraintlayout/core/dsl/VChain$VAnchor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBaseline:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBottom()Landroidx/constraintlayout/core/dsl/VChain$VAnchor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBottom:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop()Landroidx/constraintlayout/core/dsl/VChain$VAnchor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/VChain;->mTop:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/VChain;->linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V

    return-void
.end method

.method public linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/VChain;->linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V

    return-void
.end method

.method public linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBaseline:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->configMap:Ljava/util/Map;

    .line 10
    .line 11
    const-string p2, "baseline"

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/VChain;->linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V

    return-void
.end method

.method public linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/VChain;->linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V

    return-void
.end method

.method public linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/VChain;->mBottom:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->configMap:Ljava/util/Map;

    .line 10
    .line 11
    const-string p2, "bottom"

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/VChain;->linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V

    return-void
.end method

.method public linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/VChain;->linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V

    return-void
.end method

.method public linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/VChain;->mTop:Landroidx/constraintlayout/core/dsl/VChain$VAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/core/dsl/Helper;->configMap:Ljava/util/Map;

    .line 10
    .line 11
    const-string p2, "top"

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/dsl/Chain$Anchor;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method
