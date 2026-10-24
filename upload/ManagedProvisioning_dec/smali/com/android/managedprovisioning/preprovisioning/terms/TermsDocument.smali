.class public final Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;
.super Ljava/lang/Object;
.source "TermsDocument.java"


# instance fields
.field private final mContent:Ljava/lang/String;

.field private final mHeading:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->mHeading:Ljava/lang/String;

    .line 47
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->mContent:Ljava/lang/String;

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;
    .locals 1

    .line 38
    :try_start_0
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    invoke-direct {v0, p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Failed to parse a disclaimer."

    .line 40
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getHeading()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->mHeading:Ljava/lang/String;

    return-object p0
.end method
