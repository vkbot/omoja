.class public final synthetic Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/managedprovisioning/common/HtmlToSpannedParser$UrlIntentFactory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;->f$1:I

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/-$$Lambda$TermsAdapterUtils$BphC2YvlT6CSwUhcVZs1zESqG1E;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsAdapterUtils;->lambda$populateContentTextView$0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
