.class Lcom/android/managedprovisioning/common/SimpleDialog$2;
.super Ljava/lang/Object;
.source "SimpleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/common/SimpleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/common/SimpleDialog;

.field final synthetic val$dialogListener:Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/common/SimpleDialog;Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$2;->this$0:Lcom/android/managedprovisioning/common/SimpleDialog;

    iput-object p2, p0, Lcom/android/managedprovisioning/common/SimpleDialog$2;->val$dialogListener:Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/managedprovisioning/common/SimpleDialog$2;->val$dialogListener:Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;

    iget-object p0, p0, Lcom/android/managedprovisioning/common/SimpleDialog$2;->this$0:Lcom/android/managedprovisioning/common/SimpleDialog;

    invoke-interface {p1, p0}, Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;->onPositiveButtonClick(Landroid/app/DialogFragment;)V

    return-void
.end method
