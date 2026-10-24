.class final Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsAdapterUtils;
.super Ljava/lang/Object;
.source "TermsAdapterUtils.java"


# direct methods
.method static synthetic lambda$populateContentTextView$0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 46
    invoke-static {p0, p2, p1}, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static populateContentTextView(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;I)V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;

    new-instance v1, Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    const v2, 0x7f060027

    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;-><init>(I)V

    new-instance v2, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;

    invoke-direct {v2, p0, p3}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;-><init>(Lcom/android/managedprovisioning/common/ClickableSpanFactory;Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;)V

    .line 47
    invoke-virtual {p2}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/managedprovisioning/common/HtmlToSpannedParser;->parseHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    .line 48
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->getHeading()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const p2, 0x7f0d00b4

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
