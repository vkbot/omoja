.class Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;
.super Landroid/text/style/ClickableSpan;
.source "ClickableSpanFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/common/ClickableSpanFactory;->create(Landroid/content/Intent;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/common/ClickableSpanFactory;Landroid/content/Intent;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;->this$0:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    iput-object p2, p0, Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 49
    iget-object p0, p0, Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;->this$0:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;->access$000(Lcom/android/managedprovisioning/common/ClickableSpanFactory;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
