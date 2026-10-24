.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;->f$1:Landroid/util/Pair;

    invoke-static {v0, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->lambda$callLastCallbackLocked$1(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Landroid/util/Pair;)V

    return-void
.end method
