.class public Lcom/android/managedprovisioning/common/StringConcatenator;
.super Ljava/lang/Object;
.source "StringConcatenator.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/managedprovisioning/common/StringConcatenator;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public join(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 52
    iget-object p0, p0, Lcom/android/managedprovisioning/common/StringConcatenator;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0d0087

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v4, v0, -0x2

    .line 55
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, v0, -0x3

    :goto_0
    if-ltz v5, :cond_5

    .line 57
    iget-object v6, p0, Lcom/android/managedprovisioning/common/StringConcatenator;->mResources:Landroid/content/res/Resources;

    if-nez v5, :cond_4

    const v7, 0x7f0d0084

    goto :goto_1

    :cond_4
    const v7, 0x7f0d0086

    :goto_1
    new-array v8, v3, [Ljava/lang/Object;

    .line 59
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v4, v8, v2

    .line 57
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 61
    :cond_5
    iget-object p0, p0, Lcom/android/managedprovisioning/common/StringConcatenator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0085

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
