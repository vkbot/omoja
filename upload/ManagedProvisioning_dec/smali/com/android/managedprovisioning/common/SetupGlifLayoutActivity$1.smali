.class Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity$1;
.super Ljava/lang/Object;
.source "SetupGlifLayoutActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity$1;->this$0:Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity$1;->this$0:Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;

    invoke-static {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->access$000(Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
