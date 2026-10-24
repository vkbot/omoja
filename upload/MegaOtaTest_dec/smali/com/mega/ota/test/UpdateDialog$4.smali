.class Lcom/mega/ota/test/UpdateDialog$4;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/ota/test/UpdateDialog;->showListDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/ota/test/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/mega/ota/test/UpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 729
    iput-object p1, p0, Lcom/mega/ota/test/UpdateDialog$4;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 733
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->access$300()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 734
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->access$300()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 736
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$4;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v0, v3}, Lcom/mega/ota/test/UpdateDialog;->access$1102(Lcom/mega/ota/test/UpdateDialog;I)I

    .line 737
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$4;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->access$1202(Lcom/mega/ota/test/UpdateDialog;I)I

    .line 738
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog$4;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-virtual {v2}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$4;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-virtual {v0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/mega/ota/test/UpdateDialog;->access$1300(Lcom/mega/ota/test/UpdateDialog;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 739
    return-void
.end method
