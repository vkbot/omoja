.class Lcom/mega/ota/test/UpdateDialog$3;
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

    .line 705
    iput-object p1, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 709
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->access$300()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->access$300()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    invoke-static {}, Lcom/mega/ota/test/UpdateDialog;->access$500()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->access$600(Lcom/mega/ota/test/UpdateDialog;Landroid/net/Uri;)V

    goto :goto_1

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v0}, Lcom/mega/ota/test/UpdateDialog;->access$700(Lcom/mega/ota/test/UpdateDialog;)V

    .line 718
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v0}, Lcom/mega/ota/test/UpdateDialog;->access$800(Lcom/mega/ota/test/UpdateDialog;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v2}, Lcom/mega/ota/test/UpdateDialog;->access$900(Lcom/mega/ota/test/UpdateDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mega/ota/test/UpdateDialog;->access$1000(Lcom/mega/ota/test/UpdateDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 721
    :cond_2
    const-string v0, " initParseCbfFile failed "

    .line 722
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 710
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-virtual {v0}, Lcom/mega/ota/test/UpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    .restart local v0    # "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/mega/ota/test/UpdateDialog$3;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 712
    .end local v0    # "message":Ljava/lang/String;
    nop

    .line 725
    :goto_1
    return-void
.end method
