.class public Lcom/android/managedprovisioning/common/HtmlToSpannedParser;
.super Ljava/lang/Object;
.source "HtmlToSpannedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;
    }
.end annotation


# instance fields
.field private final mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

.field private final mUrlIntentFactory:Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;


# direct methods
.method public constructor <init>(Lcom/android/managedprovisioning/common/ClickableSpanFactory;Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    iput-object p1, p0, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;->mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    .line 50
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;

    iput-object p1, p0, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;->mUrlIntentFactory:Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;

    return-void
.end method


# virtual methods
.method public parseHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 8

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x3f

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 66
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 67
    iget-object v4, p0, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;->mUrlIntentFactory:Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;->create(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 70
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 71
    iget-object v7, p0, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;->mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    invoke-virtual {v7, v4}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;->create(Landroid/content/Intent;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    const/16 v7, 0x21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
