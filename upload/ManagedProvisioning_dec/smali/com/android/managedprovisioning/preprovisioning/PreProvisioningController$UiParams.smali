.class public Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;
.super Ljava/lang/Object;
.source "PreProvisioningController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiParams"
.end annotation


# instance fields
.field public customization:Lcom/android/managedprovisioning/model/CustomizationParams;

.field public deviceAdminIconFilePath:Ljava/lang/String;

.field public deviceAdminLabel:Ljava/lang/String;

.field public disclaimerHeadings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isDeviceManaged:Z

.field public isSilentProvisioning:Z

.field public packageInfo:Lcom/android/managedprovisioning/common/MdmPackageInfo;

.field public packageName:Ljava/lang/String;

.field public provisioningAction:Ljava/lang/String;

.field public viewTermsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
