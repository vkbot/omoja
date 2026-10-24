.class public final synthetic Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/managedprovisioning/common/DialogBuilder;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;->f$0:I

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroid/app/DialogFragment;
    .locals 2

    iget v0, p0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;->f$0:I

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->lambda$showDeleteManagedProfileDialog$1(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object p0

    return-object p0
.end method
