.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/text/style/ClickableSpan;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;->f$0:Landroid/text/style/ClickableSpan;

    iput-object p2, p0, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;->f$0:Landroid/text/style/ClickableSpan;

    iget-object p0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;->f$1:Landroid/widget/TextView;

    invoke-static {v0, p0, p1}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->lambda$populateMenuContent$0(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
