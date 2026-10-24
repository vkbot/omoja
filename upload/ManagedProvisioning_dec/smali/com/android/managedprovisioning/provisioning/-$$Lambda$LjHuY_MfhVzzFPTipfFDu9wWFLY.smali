.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    invoke-interface {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;->preFinalizationCompleted()V

    return-void
.end method
