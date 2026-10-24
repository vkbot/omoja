.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$snmBLwuM_gIa4sTPDJLnDm1dgh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ContextMenu;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ContextMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$snmBLwuM_gIa4sTPDJLnDm1dgh4;->f$0:Landroid/view/ContextMenu;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$snmBLwuM_gIa4sTPDJLnDm1dgh4;->f$0:Landroid/view/ContextMenu;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->lambda$populateMenuContent$1(Landroid/view/ContextMenu;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
